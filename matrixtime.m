clc 

l1 = 0.0001552;
l2 = 0.000833;
l3 = 0.000391;
l4 = 0.00228;

m1 = 0.25;
m2 = 0.041667;
m3 = 0.1667;
m4 = 0.333;

% create R11 matrix
A = [-(l1+l2+l3+l4) l1 l2 l3 l4;m1 -(m1+l1+l2+l4) l1 l2 0; m2 m1 -(m2+m1+l2+l3) 0 l2; m3 m2 0 -(m3+m2+l1+l2) l1; m4 0 m2 m1 -(m4+m2+m1+l1);];

B = -inv(A);

% getting first row of B and them summing it to find MTTFF
C = B(1,:);
E = B(2,:);
J = B(3,:);
D = sum(C);
F = sum(E);
K = sum(J)

% first failure in years
MTTFF = D/8760; 
disp("MTTFF is ")
disp(MTTFF)
% second failure in years
MTTSF = MTTFF + (F/8760);
disp("MTTSF is ")
disp(MTTSF)
% third failure
MTTTF = MTTSF + (K/8760);
disp("MTTTF is ")
disp(MTTTF)


