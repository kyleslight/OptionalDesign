function [ result ] = test_trend()
count = 0;
temp_point = [1, 1];
final_value = [];
while(1) 
    count = count + 1;
    direction = getDiff(temp_point)';
    alpha = search(temp_point, direction);
    next_point = temp_point + alpha * (direction);

    temp_value = objectiveFun(temp_point);
    next_value = objectiveFun(next_point);
    
    final_value(end+1) = temp_value;

    if(abs(temp_value - next_value) < 1e-9 )
        break;
    else
        temp_point = next_point;
    end

end


times = linspace(1, count, count);
result = {times, final_value};
end

