%�ǽ�4
% R = [1 0 ; 0 1]

%�ǽ�5_1
% R = [1 0 ; 0 -1]

%�ǽ�5_2
% R = [-1 0 ; 0 1]

%�ǽ�5_3
% R = [0 1 ; 1 0 ]

%�ǽ�6_1
% R = [1 0 ; 0 0]

%�ǽ�6_2
% R = [0 0 ; 1 0]

%�ǽ�7_1
% R = [cos(pi/4) -sin(pi/4) ; sin(pi/4) cos(pi/4)]

%�ǽ�7_2
% R = [cos(pi) -sin(pi) ; sin(pi) cos(pi)]

%�ǽ�8
% R = [2 0 ; 0 2]

%�ǽ�11_2
% R = [(cos(pi/2))^2 1/2*sin(2*pi/2) ; 1/2*sin(2*pi/2) (sin(pi/2))^2]

%�ǽ�12_1
% R = [cos(2*pi/4) sin(2*pi/4) ; sin(2*pi/4) -cos(2*pi/4)]    

%�ǽ�12_2
% R = [cos(2*pi/2) sin(2*pi/2) ; sin(2*pi/2) -cos(2*pi/2)]    

%�ǽ�13
% P = [0 2 ; 2 2 ; 3 1 ; 0 0 ; 2 0]
% C = [1 1 0 1 0 ; 1 1 1 0 1 ; 0 1 1 0 1 ; 1 0 0 1 1 ; 0 1 1 1 1]
% R = [cos(pi/4) -sin(pi/4) ; sin(pi/4) cos(pi/4)]
% 
% gplot(C,P,'k*-'); hold on;
% grid on;
% axis([-10,10,-10,10])
% 
% LT = (R*P')';
% LT
% gplot(C,LT,'ro:'); hold on;
% 
% R = [cos(pi/2) -sin(pi/2) ; sin(pi/2) cos(pi/2)]
% LT2 = (R*LT')';
% gplot(C,LT2,'bo:'); hold on;
% LT2
% 2*sin(pi/4)
% 4*cos(pi/4)

% %�ǽ�1_1
% A = [1 2 3 ; 2 0 0 ; -2 1 3]
% det(A)
% %�ǽ�1_2
% B = [2 -1 2 ; 4 1 3 ; 2 2 1]
% det(B)

%�ǽ�2
% A = [-3 0 4 ; 5 -1 2 ; 1 1 3]
% det(A)

%�ǽ�3_1
A = [-3 1 ; 0 0]
det(A)
%�ǽ�3_2
B = [4 1 ; -7 -8]
det(B)











