% hold off;
% plot(res_1{1}, res_1{3}, 'ro');
% hold on;
% plot(res_2{1}, res_2{3}, 'bx');
% plot(res_3{1}, res_3{3}, 'g*');
% 
% title('The final value goes with Percision');
% xlabel('Percision');
% ylabel('Final value');
% legend('f_1(x_1, x_2)=x_1^2 + 25x_2^2', 'f_2(x_1, x_2)=x_1^3+4x_2^3+65x_2^2-32x_1-6x_1x_2-6', 'f_3(x_1, x_2)=-20cos(x_1)+10cos(x_2)+0.1x_1^2x_2');

hold off;
plot(trend_1{1}, trend_1{2}, 'r');
hold on;
plot(trend_2{1}, trend_2{2}, 'b');
plot(trend_3{1}, trend_3{2}, 'g');

title('The function value goes with Iteration');
xlabel('Iteration times');
ylabel('Function value');
legend('f_1(x_1, x_2)=x_1^2 + 25x_2^2', 'f_2(x_1, x_2)=x_1^3+4x_2^3+65x_2^2-32x_1-6x_1x_2-6', 'f_3(x_1, x_2)=-20cos(x_1)+10cos(x_2)+0.1x_1^2x_2');