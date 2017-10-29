function [ best, time ] = immune( func, dimension, particle_num, iter_max, limit, up_n, lo_n, lower_bound, upper_bound )
    
    tic;          
    
    Lb      = lower_bound * ones( 1, dimension - 1 );    
    Ub      = upper_bound * ones( 1, dimension - 1 );    
    up_prob = up_n;
    lo_prob = lo_n;
    lim     = limit;
    
    for i = 1 : particle_num,         
        Place( i,  :  ) = Lb + ( Ub - Lb ).* ( rand( 1, dimension - 1 ) );
        Value( i )      = func( Place( i,  :  ) );
    end
    
    m = min( Value );
    for i = 1 : particle_num, 
        Prob( i ) = 1.0 - ( m + Value( i ) ) / sum( m + Value );
    end
    
    best   = Place( 1,  :  );
    best_v = Value( 1 );
    
    for i = 1 : iter_max
        
        for j = 1 : particle_num 
            
            Radius = 0;
            if( Prob( j ) > up_prob )
                Radius = ( ( abs( upper_bound ) + abs( lower_bound ) ) / ...
                    particle_num ) * ones( 1, dimension - 1 ) / 2;
            end
            
            if ( Prob( j )<up_prob && Prob( j ) > lo_prob ), 
                Radius = ( ( ( abs( upper_bound ) + abs( lower_bound ) ) / ...
                    particle_num ) * ones( 1, dimension - 1 ) );
            end
            
            if( Radius ~= 0) 
                
                New_place = best + ( ( Place( j,  :  ) + Radius ) - ...
                    Place( j,  :  ) ).* ( ( rand( 1, dimension - 1 ) - 0.5 ) * 2 );
                if( func( New_place )<best_v ), 
                    Value( j )      = func( New_place );
                    best_v          = func( New_place );
                    Place( j,  :  ) = New_place;
                    best            = Place( j,  :  );
                    Prob( j )       = Value( j ) / sum( Value );
                end
                
            end
            
            if( Prob( j ) < lo_prob )
                
                Place( j,  :  ) = Lb + ( Ub - Lb ).* ( rand( 1, dimension - 1 ) );
                Value( j )      = func( Place( j,  :  ) );
                
                if( Value( j ) < best_v ), 
                    best_v = Value( j );
                    best = Place( j,  :  );
                end
                
                Prob( j ) = Value( j ) / sum( Value );
                
                if( lim < particle_num )
                    Place( particle_num,  :  ) = Lb + ( Ub - Lb ).* ( rand( 1, dimension - 1 ) );
                    Value( particle_num )      = func( Place( particle_num,  :  ) );
                    Prob( particle_num )       = Value( particle_num ) / sum( Value );
                    
                    if( Value( particle_num ) < best_v ) 
                        best_v = Value( particle_num );
                        best   = Place( particle_num,  :  );
                    end
                    
                end
                
            end
        end
        
    end
    
    best = [ best, best_v ];
    
    time = toc;
    
end