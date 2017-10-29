function [ best_solution, time ] = glowworm( func, dimension, glowworm_number, step_size, maximum_iteration, rho, beta, gamma, rmax, number_of_neigbours, lower_bound, upper_bound )
    
    tic;          

    Lb = lower_bound * ones( 1, dimension - 1 );    
    Ub = upper_bound * ones( 1, dimension - 1 );     

    for i = 1 : glowworm_number         
        Place( i,  :  ) = Lb + ( Ub - Lb ).* ( rand( 1, dimension - 1 ) );
        Value( i )      = func( Place( i,  :  ) );
        l( i )          = 5;
        r( i )          = 0.5;
    end


    for t = 1 : maximum_iteration

        for i = 1 : glowworm_number 
            l( i ) = ( 1 - rho ) * l( i ) + gamma * Value( i );
        end

        for i = 1 : glowworm_number
            
            nn         = 1;
            neighbours = '';
            summa      = 0;
            
            for j = 1 : glowworm_number
                
                dist = sqrt( sum( Place( i,  :  ) - Place( j,  :  ) ).^ 2 );
                
                if( l( j ) > l( i ) && dist < r( i ) )            
                    neighbours( nn ).place = Place( j,  :  );
                    neighbours( nn ).value = Value( j );
                    neighbours( nn ).l     = l( j );
                    neighbours( nn ).r     = r( j );
                    
                    summa = summa + ( l( j ) - l( i ) );
                    nn    = nn + 1;
                end
                
            end
            
            prob  = 0;
            index = 0;
            
            for k = 1 : nn - 1
                p = ( neighbours( k ).l - l( i ) ) / summa;
                
                if( p > prob )
                    prob = p;
                    index = k;
                end
                
            end
            
            if( index ~= 0 )
                chos = neighbours( index ).place;

                Place( i,  :  ) = Place( i,  :  ) + step_size *...
                    ( ( chos - Place( i,  :  ) ) / sqrt( chos - Place( i,  :  ) ).^2 );
                Value( i )      = func( Place( i,  :  ) );
            end

            r( i ) = min( rmax, max( 0, r( i ) + beta * ( number_of_neigbours - nn ) ) );

        end
    end
    
    [ value, index ]           = min( Value );
    best_solution              = Place( index,  :  );
    best_solution( dimension ) = value;

    time = toc;

end