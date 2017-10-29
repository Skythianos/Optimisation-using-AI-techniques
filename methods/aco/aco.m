function [ best_place, time ] = aco( func, dimension, ant_num, iter_max, alfa, beta, in_pher, limit, lower_bound, upper_bound )
    
    tic;                  

    Lb = lower_bound * ones( 1, dimension - 1 );   
    Ub = upper_bound * ones( 1, dimension - 1 );    

    for i = 1 : ant_num        
        Place( i, : ) = Lb + ( Ub - Lb ).* ( rand( 1, dimension - 1 ) );
        Value( i )    = func( Place( i, : ) );
        Pher( i )     = in_pher;
    end
    
    [ min_value, index ] = min( Value ); 
    best_place           = Place( index, : );
    
    for t = 1 : iter_max
        
        for i = 1 : ant_num
            
            sum2 = 0;
            
            if( limit < Pher( i ) )
                
                for j = 1 : ant_num
                    if( limit < Pher( j ) )
                        sum2 = sum2 + Pher( j ).^  alfa * ( rand * ( Place( j, : ) ) ).^ beta;
                    end
                end
                
                if( sum2 )
                    Place( i, : ) = ( Pher( i ).^  alfa * ( rand * ( Place( i, : ) ) ).^ beta ) / sum2;
                end
                
                Pher( i ) = ( 1 - rand ) * Pher( i ) + rand * Pher( i );
                
                if( func( Place( i, : ) ) < Value( i ) ), 
                    Value( i ) = func( Place( i, : ) );
                end
                
            end
            
        end
        
    end

    best_place( dimension ) = min_value;

    time = toc;

end
