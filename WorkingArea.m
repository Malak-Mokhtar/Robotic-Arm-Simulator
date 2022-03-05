function [] = WorkingArea(l1,l2,l3,Q1min,Q1max,Q2min,Q2max,Q3min,Q3max)

disp('This is the calculation and plotting of the Working Area for a three-link robotic arm of type RRR');
Q1minRAD=Q1min * pi/180;
Q1maxRAD=Q1max * pi/180;
Q2minRAD=Q2min * pi/180;
Q2maxRAD=Q2max * pi/180;
Q3minRAD=Q3min * pi/180;
Q3maxRAD=Q3max * pi/180;

n=200;
sum=0;

Px=[]; Px1=[]; Px2=[]; Px3=[]; Px4=[]; Px5=[]; Px6=[]; Px7=[]; Px8=[]; Px9=[]; Px10=[]; Px11=[]; Px12=[];
Py=[]; Py1=[]; Py2=[]; Py3=[]; Py4=[]; Py5=[]; Py6=[]; Py7=[]; Py8=[]; Py9=[]; Py10=[]; Py11=[]; Py12=[];

%Path 1
q1= Q1minRAD;
q2 =Q2minRAD;
for q3 = Q3minRAD : (Q3maxRAD-Q3minRAD)/n : Q3maxRAD
    P = [cos(q1) , cos(q1 + q2) , cos(q1 + q2 + q3) ; sin(q1) , sin(q1 + q2) , sin(q1 + q2 +q3)] * [l1 ; l2 ; l3];
    Px1 = [Px1;P(1)];
    Py1 = [Py1;P(2)];
end

%Path 2
q1= Q1minRAD;
q2 =Q2maxRAD;
for q3 = Q3minRAD : (Q3maxRAD-Q3minRAD)/n : Q3maxRAD
    P = [cos(q1) , cos(q1 + q2) , cos(q1 + q2 + q3) ; sin(q1) , sin(q1 + q2) , sin(q1 + q2 +q3)] * [l1 ; l2 ; l3];
    Px2 = [Px2;P(1)];
    Py2 = [Py2;P(2)];
end

%Path 3
q1= Q1maxRAD;
q2 =Q2minRAD;
for q3 = Q3minRAD : (Q3maxRAD-Q3minRAD)/n : Q3maxRAD
    P = [cos(q1) , cos(q1 + q2) , cos(q1 + q2 + q3) ; sin(q1) , sin(q1 + q2) , sin(q1 + q2 +q3)] * [l1 ; l2 ; l3]; 
    Px3 = [Px3;P(1)];
    Py3 = [Py3;P(2)];

end

%Path 4
q1= Q1maxRAD;
q2 =Q2maxRAD;
for q3 = Q3minRAD : (Q3maxRAD-Q3minRAD)/n : Q3maxRAD
    P= [cos(q1) , cos(q1 + q2) , cos(q1 + q2 + q3) ; sin(q1) , sin(q1 + q2) , sin(q1 + q2 +q3)] * [l1 ; l2 ; l3];
    Px4 = [Px4;P(1)];
    Py4 = [Py4;P(2)];
 
end

%Path 5
q1= Q1minRAD;
q3 =Q3minRAD;
for q2 = Q2minRAD : (Q2maxRAD-Q2minRAD)/n : Q2maxRAD
    P= [cos(q1) , cos(q1 + q2) , cos(q1 + q2 + q3) ; sin(q1) , sin(q1 + q2) , sin(q1 + q2 +q3)] * [l1 ; l2 ; l3];
    Px5 = [Px5;P(1)];
    Py5 = [Py5;P(2)];

end

%Path 6
q1= Q1minRAD;
q3 =Q3maxRAD;
for q2 = Q2minRAD : (Q2maxRAD-Q2minRAD)/n : Q2maxRAD
   P= [cos(q1) , cos(q1 + q2) , cos(q1 + q2 + q3) ; sin(q1) , sin(q1 + q2) , sin(q1 + q2 +q3)] * [l1 ; l2 ; l3];
    Px6 = [Px6;P(1)];
    Py6 = [Py6;P(2)];
    
end

%Path 7
q1= Q1maxRAD;
q3 =Q3minRAD;
for q2 = Q2minRAD : (Q2maxRAD-Q2minRAD)/n : Q2maxRAD
    P= [cos(q1) , cos(q1 + q2) , cos(q1 + q2 + q3) ; sin(q1) , sin(q1 + q2) , sin(q1 + q2 +q3)] * [l1 ; l2 ; l3]; 
    Px7 = [Px7;P(1)];
    Py7 = [Py7;P(2)];
end

%Path 8
q1= Q1maxRAD;
q3 =Q3maxRAD;
for q2 = Q2minRAD : (Q2maxRAD-Q2minRAD)/n : Q2maxRAD
    P= [cos(q1) , cos(q1 + q2) , cos(q1 + q2 + q3) ; sin(q1) , sin(q1 + q2) , sin(q1 + q2 +q3)] * [l1 ; l2 ; l3];
    Px8 = [Px8;P(1)];
    Py8 = [Py8;P(2)];
end

%Path 9
q2= Q2minRAD;
q3 =Q3minRAD;
for q1 = Q1minRAD : (Q1maxRAD-Q1minRAD)/n : Q1maxRAD
    P= [cos(q1) , cos(q1 + q2) , cos(q1 + q2 + q3) ; sin(q1) , sin(q1 + q2) , sin(q1 + q2 +q3)] * [l1 ; l2 ; l3];
    Px9 = [Px9;P(1)];
    Py9 = [Py9;P(2)];
end

%Path 10
q2= Q2minRAD;
q3 =Q3maxRAD;
for q1 = Q1minRAD : (Q1maxRAD-Q1minRAD)/n : Q1maxRAD
    P= [cos(q1) , cos(q1 + q2) , cos(q1 + q2 + q3) ; sin(q1) , sin(q1 + q2) , sin(q1 + q2 +q3)] * [l1 ; l2 ; l3];
    Px10 = [Px10;P(1)];
    Py10 = [Py10;P(2)];
end

%Path 11
q2= Q2maxRAD;
q3 =Q3minRAD;
for q1 = Q1minRAD : (Q1maxRAD-Q1minRAD)/n : Q1maxRAD
    P= [cos(q1) , cos(q1 + q2) , cos(q1 + q2 + q3) ; sin(q1) , sin(q1 + q2) , sin(q1 + q2 +q3)] * [l1 ; l2 ; l3];
    Px11 = [Px11;P(1)];
    Py11 = [Py11;P(2)];
end

%Path 12
q2= Q2maxRAD;
q3 =Q3maxRAD;
for q1 = Q1minRAD : (Q1maxRAD-Q1minRAD)/n : Q1maxRAD
    P= [cos(q1) , cos(q1 + q2) , cos(q1 + q2 + q3) ; sin(q1) , sin(q1 + q2) , sin(q1 + q2 +q3)] * [l1 ; l2 ; l3];
    Px12 = [Px12;P(1)];
    Py12 = [Py12;P(2)];
    
end


Px=[Px1;Px2;Px3;Px4;Px5;Px6;Px7;Px8;Px9;Px10;Px11;Px12];
Py=[Py1;Py2;Py3;Py4;Py5;Py6;Py7;Py8;Py9;Py10;Py11;Py12];
plot(Px1 , Py1,'b', Px2, Py2,'b', Px3, Py3,'b', Px4, Py4,'b', Px5, Py5,'b', Px6, Py6,'b', Px7, Py7,'b', Px8, Py8,'b', Px9, Py9,'b', Px10, Py10,'b', Px11, Py11,'b', Px12, Py12,'b');


wa=0;
for i = 1:length(Px1)-1
    wa = wa + (Px1(i+1) + Px1(i))*(Py1(i+1) - Py1(i));
end

for i = 1:length(Px2)-1
    wa = wa + (Px2(i+1) + Px2(i))*(Py2(i+1) - Py2(i));
end

for i = 1:length(Px6)-1
     wa = wa + (Px6(i+1) + Px6(i))*(Py6(i+1) - Py6(i));
end

for i = 1:length(Px7)-1
     wa = wa + (Px7(i+1) + Px7(i))*(Px7(i+1) - Px7(i));
end

for i = 1:length(Px9)-1
     wa = wa + (Px9(i+1) + Px9(i))*(Py9(i+1) - Py6(i));
end

for i = 1:length(Px10)-1
    wa = wa + (Px10(i+1) + Px10(i))*(Py10(i+1) - Py10(i));
end


fprintf('The working area= %f', wa);


t1=linspace(Q1min, Q1max, 100);
t2=linspace(Q2min, Q2max, 100);
t3=linspace(Q3min, Q3max, 100);
[q1,q2,q3]=ndgrid(t1,t2,t3);
xM = l1 * cosd(q1) + l2 * cosd(q1 + q2) + l3 * cosd(q1 + q2 + q3);
yM = l1 * sind(q1) + l2 * sind(q1 + q2) + l3 * sind(q1 + q2 + q3);
figure(2)
plot(xM(:),yM(:),'b.')

end