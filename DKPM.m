function [] = DKPM(l1,l2,l3)

    disp('This is DKPM calculator for a three-link robotic arm of type RRR');

    Q1=input('Enter the first angle: (in degrees) \n ');
    Q2=input('Enter the second angle: (in degrees) \n ');
    Q3=input('Enter the third angle: (in degrees) \n ');

    x=l1*cosd(Q1) + l2*cosd(Q1+Q2) + l3*cosd(Q1+Q2+Q3);
    y=l1*sind(Q1) + l2*sind(Q1+Q2) + l3*sind(Q1+Q2+Q3);
    fprintf('The position of the end effector at the given angles is: \n [ %f , %f ]', x , y);

end