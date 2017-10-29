function params = rosenbrock( params )
    
    [ X, Y ] = meshgrid( -10 : .1 : 10, -10 : .1 : 10 );

    params.dimension = 3;
    params.lower_num = -10;
    params.upper_num = 10;
    params.funct     = @(x) 100.0*(x(1).^2-x(2)).^2+(1-x(1))^2;
    params.Z         = 100.0*(X.^2-Y)^2+(1-X).^2;
    params.X         = X;
    params.Y         = Y;

end