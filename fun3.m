function [ result ] = fun3(point)
%result = point(1)^2 + 25 * point(2)^2;
%result = point(1)^3 + 4* point(2)^3 + 65*point(2)^2 - 32 * point(1) - 6* point(1)*point(2) -6;
result = -cos(0.01*point(1)) -cos(0.01*point(2));
end

