function params = schwefel( params )
    
    [ X, Y ] = meshgrid( -500 : 1 : 500, -500 : 1 : 500 );

    if( params.dimension == 2 )
        func = 'sum(X.*sin(sqrt(abs(X))))';
    else
        func = '';
    end
    
    params.lower_num = -500;
    params.upper_num = 500;
    params.funct     = @(x) sum(x.*sin(sqrt(abs(x))));
    params.Z         = (X.*sin(sqrt(abs(X))))+(Y.*sin(sqrt(abs(Y))));
    params.func      = func;
    params.X         = X;
    params.Y         = Y;

end