function [best_sol, time] = cpso( func, dimension, particle_num, iter_max, lower_bound, upper_bound )

    tic

    Low  = lower_bound * ones( 1, dimension - 1 );
    High = upper_bound * ones( 1, dimension - 1 );

    for i = 1 : particle_num
        Solution( i,  :  ) = Low + ( High - Low ).* ( rand( 1, dimension - 1 ) );
        Value( i )         = func( Solution( i,  :  ) );
        Velocity( i,  :  ) = zeros( 1, dimension - 1 );
        pBest( i,  :  )    = zeros( 1, dimension - 1 );
    end

    K = 2 / ( abs( 2 - ( dimension - 1 + particle_num + 3 ) -...
        sqrt( ( dimension - 1 + particle_num + 3 )^.2 - 4 * ...
        ( ( dimension - 1 + particle_num + 3 ) ) ) ) );
    Best( 1, 1 : dimension - 1 ) = Solution( 1,  :  );
    Best( 1, dimension ) = Value( 1 );

    for i = 1 : iter_max

        for j = 1 : particle_num
            new = func( Solution( j,  :  ) );
            if( Value( j ) > new )
                Value( j )      = new;
                pBest( j,  :  ) = Solution( j,  :  );
            end
        end

        Best( 1, dimension ) = min( Value(  :  ) );

        for j = 1 : particle_num, 
            if( Value( j )  ==  Best( 1, dimension ) ), 
                Best( 1, 1 : dimension - 1 ) = Solution( j,  :  );
                Best( 1, dimension )         = Value( j );
            end
        end

        for j = i : particle_num
            Velocity( j,  :  ) = K * ( Velocity( j,  :  ) + rand * ( pBest( j,  :  ) ...
                - Solution( j,  :  ) ) + rand * ( Best( 1, 1 : dimension - 1 ) ...
                - Solution( j,  :  ) ) );
            Solution( j,  :  ) = Solution( j,  :  ) + Velocity( j,  :  );
        end

    end

    best_sol( 1, 1 : dimension - 1 ) = Best( 1, 1 : dimension - 1 );
    best_sol( 1, dimension )         = Best( 1, dimension );

    time = toc;

end