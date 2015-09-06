function [ result ] = objectiveFun(point)
%result = point(1)^2 + 25 * point(2)^2;
result = point(1)^3 + 4* point(2)^3 + 65*point(2)^2 - 32 * point(1) - 6* point(1)*point(2) -6;
%result = -20*cos(point(1)) -10*cos(point(2)) + 0.1*point(1)^2* point(2);
end

