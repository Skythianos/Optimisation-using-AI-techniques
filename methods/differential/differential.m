function [ best, time ] = differential( func, dimension, particle_num, iter_max, f_num, cr_num, lower_bound, upper_bound )

    tic;     

    Lb = lower_bound * ones( 1, dimension - 1 );    
    Ub = upper_bound * ones( 1, dimension - 1 );   
    CR = cr_num;
    F  = f_num;

    for i = 1 : particle_num     
        Place( i, : ) = Lb + ( Ub - Lb ).* ( rand( 1, dimension - 1 ) );
        Value( i )    = func( Place( i, : ) );
    end

    best   = Place( 1, : );
    best_v = Value( 1 );

    for i = 1 : iter_max

        for j = 1 : particle_num

            a = j;

            while a == j 
                a = round( particle_num * ( rand(  ) ) );
                if( a == 0 )
                    a = 1;
                end
            end

            b = j;

            while b == j || b == a,
                b = round( particle_num * ( rand(  ) ) );
                if( b == 0 )
                    b = 1;
                end
            end

            c = j;

            while c == j || c == a || c == b 
                c = round( particle_num * ( rand(  ) ) );
                if( c == 0 )
                    c = 1;
                end
            end

            R = round( dimension - 1 * ( rand(  ) ) );
            r = rand(  );

            if r < CR || j == R

                new( 1, : ) = Place( a, : ) + F * ( Place( b, : ) - Place( c, : ) );
            else
                new = Place( j, : );
            end

            if func( new ) < Value( j )

                Place( j, : ) = new( 1, : );
                Value( j )    = func( new( 1, : ) );

                if Value( j ) < best_v 
                    best_v = Value( j );
                    best   = Place( j, : );
                end
            end

        end

    end

    best = [ best, best_v ];

    time = toc;

end