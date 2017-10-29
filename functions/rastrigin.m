function params = rastrigin( params )
    
    [ X, Y ] = meshgrid( -5.12 : .1 : 5.12, -5.12 : .1 : 5.12 );

    if( params.dimension == 2 )
        func = '10+(X.^2-10*cos(2*X*pi))';
    else
        func = '';
    end
    
    params.lower_num = -5.12;
    params.upper_num = 5.12;
    params.funct     = @(x)(10*(params.dimension-1)+sum(x.^2-10*cos(2*x.*pi)));
    params.Z         = 10*2+((X.^2-10*cos(2*X*pi))+(Y.^2-cos(10*Y*pi)));
    params.func      = func;
    params.X         = X;
    params.Y         = Y;
    
end