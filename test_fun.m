
function [ result ] = test_fun()

hold off;
x = linspace(-1.5,3.5,400);
y = linspace(-1.5,3.5,400);

xaix = length(x);
yaix = length(y);

z = zeros(xaix, yaix);

for i = 1: xaix
    for j = 1:yaix
       z(i, j) = objectiveFun([x(i), y(j)]);
    end
end

mesh(y, x, z);
hold on;

vector_x = [];
vector_y = [];
vector_z = [];

temp_point = [1, 1];
while(1)
    direction = getDiff(temp_point)';
    alpha = search(temp_point, direction);
    next_point = temp_point + alpha * (direction);

    temp_value = objectiveFun(temp_point);
    next_value = objectiveFun(next_point);
    vector_x(end+1) = temp_point(1);
    vector_y(end+1) = temp_point(2);
    vector_z(end+1) = temp_value;
    

    if(abs(temp_value - next_value) < 1e-9)
        break;
    else
        temp_point = next_point;
    end

end

plot3(vector_y, vector_x, vector_z, '-rx', 'linewidth',1.5, 'MarkerEdgeColor','g', 'MarkerSize',10);
disp(vector_x);
disp(vector_y);
disp([vector_z]);
result = 1;

end

