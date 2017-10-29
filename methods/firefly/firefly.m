function [ best, time ] = firefly( func, dimension, particle_num, iter_max, al_n, co_n, lower_bound, upper_bound )
  
    tic;   

    Lb   = lower_bound * ones( 1, dimension - 1 );    
    Ub   = upper_bound * ones( 1, dimension - 1 );    
    alfa = al_n;

    for i = 1 : particle_num       
        Place( i, : )  = Lb + ( Ub - Lb ).* ( rand( 1, dimension - 1 ) );
        Value( i )     = func( Place( i, : ) );
        Intensity( i ) = Value( i );
        Attract( i )   = 1;
    end

    best   = Place( 1, : );
    best_v = Value( 1 );
    coeff  = co_n;

    for k = 1 : iter_max

        for j = 1 : particle_num

            for i = 1 : particle_num

                dist = sqrt( sum( Place( i, : ) - best ).^2 );

                if( Intensity(j) < Intensity( i ) ), 
                    Place( i, : ) = Place( i, : ) + Attract( i ) * exp( -coeff * dist.^2 )...
                        * ( best - Place( i, : ) ) + alfa * ( rand - 0.5 );
                else
                    Place( i, : ) = Place( i, : ) + rand * ( best - Place( i, : ) );
                end

                Intensity( i ) = Intensity( i ) * exp(  -coeff * dist.^2 );
                Value( i )     = func( Place( i, : ) );
                Attract( i )   = 1 * exp(  -coeff * dist );
            end

        end

        for i = 1 : particle_num
            if( Value( i ) < best_v ), 
                best_v = Value( i );
                best   = Place( i, : );
            end
        end

    end

    best( 3 ) = best_v;

    time = toc;

end