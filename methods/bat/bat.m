function [ best_place, time ] = bat( func, dimension, bat_num, iter_max, fmin, fmax, rate_null, alfa, gamma, lower_bound, upper_bound )

    tic;

    Lb = lower_bound * ones( 1, dimension - 1 );
    Ub = upper_bound * ones( 1, dimension - 1 );

    for i = 1 : bat_num
        Place( i, : )    = Lb + ( Ub - Lb ).* ( rand( 1, dimension - 1 ) );
        Value( i )       = func( Place( i, : ) );
        Velocity( i, : ) = zeros( 1, dimension - 1 );
        Frequency( i )   = 0.0;
        Rate( i )        = 0.8;
        Loudness( i )    = 0.9;
    end

    [ min_value, index ] = min( Value );
    best_place           = Place( index, : );

    for t = 1 : iter_max

        for i = 1 : bat_num

            Frequency( i )   = fmin + ( fmax - fmin ) * rand;
            Velocity( i, : ) = Velocity( i, : ) + ( Place( i, : ) - best_place ) * Frequency( i );
            Place( i, : )    = Place( i, : ) + Velocity( i, : );

            if rand > Rate( i ) 
                Place( i, : ) = best_place + mean( Loudness ) * ( ( rand - 0.5 ) * 2 );
            end

            New = func( Place( i, : )  );

            if( New < Value( i ) ) && ( rand < Loudness( i ) ) 
                Value( i )    = New;
                Loudness( i ) = alfa * Loudness( i );
                Rate( i )     = rate_null * ( 1 - exp(  -gamma * t ) );
            end

            if ( New > 100 )
                Place( i, : ) = Lb + ( Ub - Lb ).* ( rand( 1, dimension - 1 ) );
                Value( i )    = func( Place( i, : )  );
            end

            if( New < min_value ), 
                best_place = Place( i, : );
                min_value  = New;
            end

        end

    end

    best_place( dimension ) = min_value;

    time = toc;

end
