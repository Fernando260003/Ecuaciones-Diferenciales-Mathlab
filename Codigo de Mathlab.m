clc;
syms x 
syms y 
 %Ingresamos nuetra ecuacion asignada a la variable M %
M=4*(x^3)-4*x*(y^2)+y
%Ingresamos nuetra ecuacion asignada a la variable N %
N=4*(y^3)-4*(x^2)*y+x

%El comnado pretty nos ayuda a que la ecuacion se nos presente de forma
%ordenada
pretty(M)
pretty(N)

%La resta de las derivadas parciales debe de ser cero, para que sea una
%ecuacion diferencial excata

c=diff(M,y)-diff(N,x)

%si se comprueba que la resta es cero, se procede a realizar las
%opereracione

 if c==0
%lo primero que hacemos es integrar M respecto de X   
Fx=int(M,x);
%ahora derivamos Fx la funcion respecto de X y restamos a N que seria
%similar a realizar una igualacion de N repecto al diferencial
fy=N-diff(Fx,y);
%Por ultimo integramos nuestra ecuacion anterior respecto de Y
Fy=int(fy,y);
%le indicamos al programa que dado el caso de que la respuesta de la resta
%de las dericadas parciales nos diga de que no es una ecuacion diferencial
%exacta
 else
     "la ecuacion no es exacta"
%con el comnado end cerrramos nuestro condicional
 end
 %el ultimo paso es sustituir el resultado de g(y) en la funcion f(x,y)=c
d=Fx+Fy
%factorizamos la respuesta
e=factor (d)
%ordenamos la ecuacion
pretty(e)
 



