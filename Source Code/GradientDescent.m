function GradientDescent(f,x1,x2)
	
warning off
format compact
format long g
syms x y
%%

while true
x1 = x1 - 0.001*subs(subs(diff(f,x),x,x1),y,x2) ;     % x1 = x1 - Dxf(x1,x2)
x2 = x2 - 0.001*subs(subs(diff(f,y),x,x1),y,x2) ;     % x2 = x2 - Dyf(x1,x2)

if (abs(subs(subs(diff(f,x),x,x1),y,x2)) < 10^-3) && (abs(subs(subs(diff(f,y),x,x1),y,x2)) < 10^-3) % if gradient vector of F at (x1,x2) ~~ (0,0) => (x1,x2) is local minimum (or the saddle point) 
    A = diff(diff(f,x),x);
    B = diff(diff(f,y),y);
    C = diff(diff(f,x),y);
    D = A*B - C^2;
    if subs(subs(D,x,x1),y,x2) < 0 % if (x1,x2) is the saddle point, use Noisy Gradient Descent
        x1 = x1 + 10;  
        x2 = x2 + 10;
        continue
    else
        break
    end
end
end
%%

% Display local minimum
x1 = double(x1);
x2 = double(x2);
disp('x = ');
disp(x1);
disp('y = ');
disp(x2);

end
