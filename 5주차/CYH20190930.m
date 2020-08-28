% a=[1 2 ; 3 4]
% b=[5 6 ; 7 8]
% a+b
% a-b

% a=[1 2 3 ; 4 5 6]
% b=[2 3 ; 4 5 ; 6 7]
% a*b
% 
% A=[1 2 3 ; 4 5 6 ; 7 8 9]
% trace(A)
% A'
% transpose(A)

%�ǽ�1_1_1
% A=[1 2 ; 3 4]
% transpose(transpose(A))

%�ǽ�1_1_2
% B=[2 3 ; 4 5]
% transpose(A+B)
% transpose(A) + transpose(B)

%�ǽ�1_1_3
% k = 2
% transpose(k*A)
% k*transpose(A)

%�ǽ�1_1_4
% trace(transpose(A))
% trace(A)

%�ǽ�1_1_5
% transpose((A*B))
% transpose(B)*transpose(A)

%�ǽ�1_1_6
% inv(A*B)
% inv(B)*inv(A)

%�ǽ�1_2

% A = [1 2 4 ; 2 6 0]
% B = [4 1 4 3 ; 0 -1 3 1 ; 2 7 5 2]
% A*B

%�ǽ�1_3
% A=[1 2 ; 3 4]
% B=[2 3 ; 4 5]
% A*B
% B*A
% trace(A*B)
% trace(B*A)


%�ǽ�1_4
% k = 2
% trace(A+B)
% trace(A) + trace(B)
% 
% trace(k*A)
% k*trace(A)

%�ǽ�2_1
% A = [1 2 3 ; 2 5 3 ; 1 0 8]
% D = [2 0 0 ; 0 1 0 ; 0 0 3]
% 
% A*D

%�ǽ�2_2
% inv(D)

%�ǽ�2_3
% (D)^2
% (D)^3
% (D)^4

%�ǽ�2_4
% A = [1 2 3 ; 2 5 3 ; 1 0 8]
% E1 = [1 0 0 ; -2 1 0 ; -1 0 1]
% E2 = [1 0 0 ; 0 1 0 ; 0 2 1]
% E3 = [1 0 0 ; 0 1 0 ; 0 0 -1]
% E4 = [1 0 -3 ; 0 1 3 ; 0 0 1]
% E5 = [1 -2 0 ; 0 1 0 ; 0 0 1]
% I3 = [1 0 0 ; 0 1 0  ; 0 0 1]

%�ǽ�3_1
% E5*E4*E3*E2*E1*A

%�ǽ�3_2
% inv((E5*E4*E3*E2*E1))*I3

%�ǽ�3_3
% E5*E4*E3*E2*E1

%�ǽ�4_1
% A = [1 2 ; 3 4]
% b = [2 3 ; 4 5]

% det(A*B)
% det(A)*det(B)

%�ǽ�4_2
% det(A+B)
% det(A) + det(B)


%�ǽ�4_3
% det(inv(A))
% 1/det(A)

%�ǽ�4_4
% det(A)
% det(transpose(A))


%�ǽ�4_5
% k = 2
% B = [k*1 k*2 ; 3 4]
% 
% det(B)
% k*det(A)

%�ǽ�4_6
% A2 = [3 4 ; 1 2]
% det(A)
% det(A2)*-1

%�ǽ�4_7
% A = [1 2 ; 2 4]
% det(A)

%�ǽ�4_8
% D = [2 0 0 ; 0 2 0 ; 0 0 2]
% det(D)
 

%�ǽ�4_9
% U = [1 2 3 ; 0 4 5 ; 0 0 6]
% det(U)


%�ǽ�4_10
% L = [1 0 0 ; 2 3 0 ; 4 5 6]
% det(L)


%�ǽ�5_1
A = [-4 2 5 ; 2 -2 3 ; 1 3 7]

norm(A, 2)


























