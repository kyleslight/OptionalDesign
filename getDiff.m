function [diff] = getDiff(point)
div = 0.00000001;
n = length(point);

diff = zeros(n, 1);

for i = 1: n
    temp_point = point;
    temp_point(i) = temp_point(i) + div;
    diff(i) = (objectiveFun(temp_point) - objectiveFun(point))/div;
end


end

