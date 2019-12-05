%x = b\A;
%x = inv(A)*b;


x = [-1.5 -1 -0.5 0 0.5 1 1.5]'
y = [-0.2122 0 0.6366 1 0.6366 0 -0.2122]'

%VanderMatrix = [ones(7,1) xev xev.^2 xev.^3 xev.^4 xev.^5 xev.^6]
%Coef = VanderMatrix\fev;


%polyval()

for i = 1:size(x)
    for j = 1:size(x)
        
    end
test = test + x(i)*y(i); 
end