%실습4
% R = [1 0 ; 0 1]

%실습5_1
% R = [1 0 ; 0 -1]

%실습5_2
% R = [-1 0 ; 0 1]

%실습5_3
% R = [0 1 ; 1 0 ]

%실습6_1
% R = [1 0 ; 0 0]

%실습6_2
% R = [0 0 ; 1 0]

%실습7_1
% R = [cos(pi/4) -sin(pi/4) ; sin(pi/4) cos(pi/4)]

%실습7_2
% R = [cos(pi) -sin(pi) ; sin(pi) cos(pi)]

%실습8
% R = [2 0 ; 0 2]

%실습11_2
% R = [(cos(pi/2))^2 1/2*sin(2*pi/2) ; 1/2*sin(2*pi/2) (sin(pi/2))^2]

%실습12_1
% R = [cos(2*pi/4) sin(2*pi/4) ; sin(2*pi/4) -cos(2*pi/4)]    

%실습12_2
% R = [cos(2*pi/2) sin(2*pi/2) ; sin(2*pi/2) -cos(2*pi/2)]    

%실습13
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

% %실습1_1
% A = [1 2 3 ; 2 0 0 ; -2 1 3]
% det(A)
% %실습1_2
% B = [2 -1 2 ; 4 1 3 ; 2 2 1]
% det(B)

%실습2
% A = [-3 0 4 ; 5 -1 2 ; 1 1 3]
% det(A)

%실습3_1
A = [-3 1 ; 0 0]
det(A)
%실습3_2
B = [4 1 ; -7 -8]
det(B)











