function [ best_place, time ] = toursel( func, dimension, particles, iter_max, lower_bound, upper_bound )

    tic;                                 
    Lb = lower_bound * ones( 1, dimension - 1 );   
    Ub = upper_bound * ones( 1, dimension - 1 );    

    for i = 1 : particles         
        Place( i, 1 : dimension - 1 ) = Lb + ( Ub - Lb ).* ( rand( 1, dimension - 1 ) );
        Place( i, dimension ) = func( Place( i, 1 : dimension - 1 ) );
    end
    
    [ min_value, index ] = min( Place( :, dimension ) ); 
    best_place           = Place( index, : );
    
    for t = 1 : iter_max
        
        for i = 1 : particles
            
            Place = sortrows( Place, dimension );
            
            for j = 1 : floor( particles / 2 )
                Place( j, 1 : dimension - 1 ) = Place( j, 1 : dimension - 1 ) ...
                    + 0.5 * ( Lb + ( Ub - Lb ).* ( rand( 1, dimension - 1 ) ) );
                Place( j, dimension )         = func( Place( j, 1 : dimension - 1 ) );
                
                if( Place( j, dimension ) < min_value )
                    min_value = Place( j, dimension );
                end
                
            end
            
            for j = floor( particles / 2 ) : particles
                 Place( j, 1 : dimension - 1 ) = Lb + ( Ub - Lb ).* ( rand( 1, dimension - 1 ) );
                 Place( j, dimension )         = func( Place( j, 1 : dimension - 1 ) );
                 
                 if( Place( j, dimension ) < min_value )
                    min_value = Place( j, dimension );
                 end
                
            end
            
        end
        
    end
    
    best_place( dimension ) = min_value;
    
    time = toc;

end

