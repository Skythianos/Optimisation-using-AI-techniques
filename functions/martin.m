function params = martin( params )
    
    [ X, Y ] = meshgrid( 0 : .1 : 10, 0 : .1 : 10 );

    params.dimension = 3;
    params.lower_num = 0;
    params.upper_num = 10;
    params.funct     = @(x)(x(1)-x(2))^2+((x(1)+x(2)-10)/3)^2;
    params.Z         = (X-Y).^2+((X+Y-10)/3)^2;
    params.X         = X;
    params.Y         = Y;

end