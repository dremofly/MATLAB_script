% syms x;
% y  = x;
% res = int(y);
% ezplot(res)
% 
% syms x2;
% y2 = piecewise(x2<0, x2, x2>=0, -x2);
% fplot(y2)
%% discrete integral
%使用离散的点做积分
%也就是使用相邻两个点的面积来求积分。
x = 0:0.001:2;
y = 2*x;
res = zeros(size(y,2)-1);
res(1) = (y(2)+y(1))*0.001/2;
for i = 2:size(x,2)-1
    res(i) = res(i-1) + (y(i+1)+y(i))*0.001/2;
end

figure
plot(x(1:end-1),res)
