close all
clear variables
clc

disp('Welcome! This is a program containing different modules for a three-link robotic arm');
l1=input('Enter the length of the first link: ');
l2=input('Enter the length of the second link: ');
l3=input('Enter the length of the third link: ');

Q1min=input('Enter the minimum angle of the first link: (in degrees) \n ');
Q1max=input('Enter the maximum angle of the first link: (in degrees) \n ');
Q2min=input('Enter the minimum angle of the second link: (in degrees) \n ');
Q2max=input('Enter the maximum angle of the second link: (in degrees) \n ');
Q3min=input('Enter the minimum angle of the third link: (in degrees) \n ');
Q3max=input('Enter the maximum angle of the third link: (in degrees) \n ');

     
c=1;
while c==1
choice=input('Enter: \n 1 for DKPM \n 2 for IKPM \n 3 for Working Area \n 4 for Straight Line Trajectory \n 5 for Robot Animation \n');
if(choice==1)
  DKPM(l1,l2,l3);
elseif(choice==2)
    x=input('Enter the value for x-coordinate: ');
    y=input('Enter the value for y-coordinate: ');
    [Q1, Q2, Q3]= IKPM(l1,l2,l3,x,y,Q1min,Q1max,Q2min,Q2max,Q3min,Q3max);
    fprintf('The angles of the end effector at the given coordinates are: \n [ %f , %f , %f ] ', Q1 , Q2, Q3);  
elseif(choice==3)
    WorkingArea(l1,l2,l3,Q1min,Q1max,Q2min,Q2max,Q3min,Q3max);
elseif(choice==4)
    StraightLineTrajectory(l1,l2,l3,Q1min,Q1max,Q2min,Q2max,Q3min,Q3max);
elseif(choice==5)
    RobotAnimation(l1,l2,l3,Q1min,Q1max,Q2min,Q2max,Q3min,Q3max);
end
c=input('\n Do you want to continue? Enter: \n 1 if yes \n 0 if no \n');
end