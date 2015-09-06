function [ fun ] = loop()
precision = linspace(1e-9, 1e-7, 200);
loop_count = length(precision);
iteration_num = zeros(1, loop_count);
result_array = zeros(1, loop_count);

for i = 1: loop_count
    count = 0;
    temp_point = [1, 1];
    while(1) 
        count = count + 1;
        direction = getDiff(temp_point)';
        alpha = search(temp_point, direction);
        next_point = temp_point + alpha * (direction);

        temp_value = objectiveFun(temp_point);
        next_value = objectiveFun(next_point);

        if(abs(temp_value - next_value) < precision(i))
            break;
        else
            temp_point = next_point;
        end

    end

    iteration_num(i) = count;
    result = (temp_point + next_point) / 2;
    result_array(i) = next_value;
end


fun = {precision, iteration_num, result_array};

end

