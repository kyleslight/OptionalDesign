function [ alpha ] = search(point, vector)
h = 0.01;
infinity = 100000000;
precision = 0.00000001;

if(objectiveFun(point + h * vector) > objectiveFun(point))
    h = -1 * h;
end

temp_alpha = h;

while(temp_alpha < infinity)
    if(objectiveFun(point + temp_alpha * vector) < objectiveFun(point))
        temp_alpha = 2 * temp_alpha;
    else
        break;
    end 
end

alpha_1 = temp_alpha / 4;
alpha_2 = temp_alpha / 2;


% Golden Section Method
value_1 = objectiveFun(point + alpha_1 * vector);
value_2 = objectiveFun(point + alpha_2 * vector);

while(abs((value_1 - value_2)) > precision)
    band = alpha_2 - alpha_1;
    left_alpha = alpha_1 + 0.382 * band;
    right_alpha = alpha_1 + 0.618 * band;
    
    y_1 = objectiveFun(point + left_alpha * vector);
    y_2 = objectiveFun(point + right_alpha * vector);
    
    if(y_1 < y_2 && y_2 < value_2)
       alpha_2 = right_alpha;
    else
       alpha_1 = left_alpha;
    end
    
    value_1 = objectiveFun(point + alpha_1 * vector);
    value_2 = objectiveFun(point + alpha_2 * vector);
end

alpha = (alpha_1 + alpha_2) / 2;

end