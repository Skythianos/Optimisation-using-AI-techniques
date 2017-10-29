function params = branin( params )
    
    PI = 3.14;

    [ X, Y ] = meshgrid( -5 : .1 : 10, -5 : .1 : 10 );
    
    params.dimension = 3;
    params.lower_num = -5.12;
    params.upper_num = 5.12;
    params.funct     = @( x ) (x(2)-5.0/(4.0*PI^2)*x(1)^2+5.0/PI*x(1)-6.0)^2+10*(1-1.0/(8.0*PI))*cos(x(1))+10;
    params.Z         = (Y-5.0/(4.0*PI^2)*X.^2+5.0/PI*X-6.0)^2+10*(1-1.0/(8.0*PI))*cos(X)+10;
    params.X         = X;
    params.Y         = Y;

end