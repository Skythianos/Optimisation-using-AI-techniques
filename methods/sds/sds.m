function [ b_sol, time ] = sds( func, dimension, particle_num, iter_max, probability, lower_bound, upper_bound )

    tic;
    dimension = dimension - 1;
    Low       = lower_bound * ones( 1, dimension );
    Up        = upper_bound * ones( 1, dimension );
    
    for i = 1 : particle_num
        particle(i).place  = Low + ( Up - Low ).* ( rand( 1, dimension ) );
        particle(i).value  = func( particle(i).place );
        particle(i).status = 0;
    end

    for i = 1 : iter_max
        
        minimum = 0;
        for j = 1 : particle_num
            if( particle(j).value < minimum )
                minimum = particle(j).value;
            end
        end
        
        summary = 0;
        for j = 1 : particle_num
            summary = summary + particle(j).value + minimum;
        end
        
        for j = 1 : particle_num
            if( ( particle(j).value + minimum ) / ( summary ) < probability )
                particle(j).status = 1;
            else
                particle(j).status = 0;
            end
        end

        for j = 1 : particle_num
            if( particle(j).status == 0 )
                
                random_index = ceil( 1 + ( particle_num - 1 ) * rand );
                if( particle(random_index).status == 1)
                    particle(j).place = particle(random_index).place;
                    particle(j).value = particle(random_index).value;
                else
                    particle(j).place = Low + ( Up - Low ).* ( rand( 1, dimension ) );
                    particle(j).value = func( particle(j).place );
                end
                
            end
        end
    end
    
    index   = 1;
    b_value = particle(1).value;
    for j = 1 : particle_num
        if( particle(j).value < b_value )
            b_value = particle(j).value;
            index   = j;
        end
    end
    
    b_sol                     = particle(index).place;
    b_sol( 1, dimension + 1 ) = b_value;
    
    time = toc;

end

