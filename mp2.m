q1=input('Enter first coordinate A1: ');
w1=input('Enter first coordinate B1: ');
q2=input('Enter second coordinate A2: ');
w2=input('Enter second coordinate B2: ');
q3=input('Enter third coordinate A3: ');
w3=input('Enter third coordinate B13: ');

F=1;G1=-((q1*q1)+(w1*w1));
G2=-((q2*q2)+(w2*w2));
G3=-((q3*q3)+(w3*w3));

A=[2*q1 2*w1 F;2*q2 2*w2 F;2*q3 2*w3 F];
B=[G1; G2; G3;];

z=A^-1*B;
D=z(1,1);
E=z(2,1);
F=z(3,1);

fprintf('The center is (%f,%f) \n',-D,-E)
fprintf('The radius is %f \n',sqrt((D)*(D)+(E)*(E)-F))
fprintf('Vector [D,E,F]: %.2fx + %.2fy + %.2f = 0 \n ',D,E,F)