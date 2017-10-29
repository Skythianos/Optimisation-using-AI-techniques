function params = hyper( params )
    
    [ X, Y ] = meshgrid( -5.12 : .1 : 5.12, -5.12 : .1 : 5.12 );

    if( params.dimension == 2 )
        func = 'x.^2';
    else
        func = '';
    end
    
    params.lower_num = -5.12;
    params.upper_num = 5.12;
    params.funct     = @(x) sum(x.^2);
    params.Z         = X.^2+Y.^2;
    params.func      = func;
    params.X         = X;
    params.Y         = Y;

end