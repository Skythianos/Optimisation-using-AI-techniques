function [ best_data, time ] = artificial_bee( func, dimension, bee_num, iter_max, limit, selected_m, elit, nep_n, nsp_n, ngh_n, lower_bound, upper_bound )

    tic

    Lb = lower_bound * ones( 1, dimension );
    Ub = upper_bound * ones( 1, dimension );

    best_data( 1 : dimension ) = ones( 1, dimension );

    for i = 1 : bee_num

        Data( i, : )         = Lb + ( Ub - Lb ).* rand( 1, dimension );
        Data( i, dimension ) = func( Data( i, 1 : dimension - 1 ) );

        if( Data( i, dimension ) >= 0 )
            Fitness( i ) = 1.0 / ( 1.0 + Data( i, dimension ) );
        else
            Fitness( i ) = 1.0 + abs( Data( i, dimension ) );
        end

    end
    for i = 1 : iter_max

        Data = sortrows( Data, dimension );

        for j = 1 : elit

            x( 1 : dimension - 1 )      = Data( j, 1 : dimension - 1 );
            x_best( 1 : dimension - 1 ) = x( 1 : dimension - 1 );
            f_best                      = Data( j, dimension );

            for k = 0:nep_n

                for l = 1 : dimension - 1
                    x_elite( l ) = random( x( l ) + ngh_n, x( l ) - ngh_n );
                end

                f_elite = func( x_elite );

                if f_elite < f_best
                    x_best = x_elite;
                    f_best = f_elite;
                end

            end

            Data( j, 1 : dimension - 1 ) = x_best( 1 : dimension - 1 );
            Data( j, dimension )         = f_best;

            if( Data( j, dimension ) >= 0 )
                Fitness( j ) = 1.0 / ( 1.0 + Data( j, dimension ) );
            else
                Fitness( j ) = 1.0 + abs( Data( j, dimension ) );
            end

        end

        for j = elit + 1 : elit + selected_m

            Prob( j ) = Fitness( j ) / ( sum( Fitness ) );

            if( Prob( j ) > limit ) 

                x( 1 : dimension - 1 )      = Data( j, 1 : dimension - 1 );
                x_best( 1 : dimension - 1 ) = x( 1 : dimension - 1 );
                f_best                      = Data( j, dimension );

                for k = 0:nsp_n

                    for l = 1 : dimension - 1
                        x_elite( l ) = random( x( l ) + ngh_n, x( l ) - ngh_n );
                    end

                    f_elite = func( x_elite );

                    if f_elite < f_best 
                        x_best = x_elite;
                        f_best = f_elite;
                    end

                end

                Data( j, 1 : dimension - 1 ) = x_best( 1 : dimension - 1 );
                Data( j, dimension )         = f_best;

                if( Data( j, dimension ) >= 0 )
                    Fitness( j ) = 1.0 / ( 1.0 + Data( j, dimension ) );
                else
                    Fitness( j ) = 1.0 + abs( Data( j, dimension ) );
                end

            end
        end

        for j = elit + selected_m + 1 : bee_num

            for l = 1 : dimension - 1 
                Data( j, l ) = random( 3, 1 );
            end

            tmp( 1 : dimension - 1 ) = Data( j, 1 : dimension - 1 );
            Data( j, dimension )     = func( tmp );

            if( Data( j, dimension ) >= 0 )
                Fitness( j ) = 1.0 / ( 1.0 + Data( j, dimension ) );
            else
                Fitness( j ) = 1.0 + abs( Data( j, dimension ) );
            end

        end
        Data      = sortrows( Data, dimension );
        best_data = Data( 1, 1 : dimension );
        
    end

    time = toc;
 
end

function ret = random( h, l )
    ret = l + ( h  -  l ) .* rand;
end