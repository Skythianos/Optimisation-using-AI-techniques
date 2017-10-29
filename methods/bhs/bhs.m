function [ b_sol, time ] = bhs( func, dimension, particle_num, iter_max, hmcr, par, lower_bound, upper_bound )
    
    tic;

    Low = lower_bound * ones( 1, dimension - 1 );
    Up  = upper_bound * ones( 1, dimension - 1 );

    for i = 1 : particle_num
        HM( i, 1 : dimension - 1 ) = Low + ( Up - Low ).* ( rand( 1, dimension - 1 ) );
        HM( i, dimension )         = func( HM( i, 1 : dimension - 1 ) );
    end

    for i = 1 : iter_max

        for j = 1 : particle_num

            r = rand;

            if( r<hmcr )

                new_place( 1, 1 : dimension ) = HM( ceil( rand(  ) * particle_num ), : );
                r2 = rand;

                if( r2 < par )
                    new_place( 1, 1 : dimension - 1 ) = new_place( 1, 1 : dimension - 1 )...
                        + ( Low + ( Up - Low ) ).* 0.001.* ones( 1, dimension - 1 ).* ( rand * 2 - 1 );
                    new_place( 1, dimension )         = func( new_place( 1, 1 : dimension - 1 ) );
                end

            elseif( r < 1 - hmcr )

                new_place( 1, 1 : dimension - 1 ) = Low + ( Up - Low ).* ( rand( 1, dimension - 1 ) );
                new_place( 1, dimension )         = func( new_place( 1, 1 : dimension - 1 ) );

            end   

        end

        index = 1;
        worst = HM( 1, dimension );

        for j = 1 : particle_num
            if( HM( j, dimension ) > worst )
                worst = HM( j, dimension );
                index = j;
            end
        end

        if( new_place( 1, dimension ) < HM( index, dimension ) )
            HM( index, : ) = new_place( 1, : );
        end

    end

    index   = 1;
    b_value = HM( 1, dimension );

    for j = 1 : particle_num

        if( HM( j, dimension )<b_value )
            b_value = HM( j, dimension );
            index = j;
        end

    end

    b_sol                 = HM( index, 1 : dimension - 1 );
    b_sol( 1, dimension ) = b_value;

    time = toc;

end

