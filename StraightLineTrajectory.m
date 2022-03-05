function []  = StraightLineTrajectory(l1,l2,l3,Q1min,Q1max,Q2min,Q2max,Q3min,Q3max)
    disp('This is the generation of a Straight Line Trajectory between two points in the Working Area of a three-link robotic arm of type RRR');
    xi=input('Enter x initial');
    yi=input('Enter y initial');
    xf=input('Enter x final');
    yf=input('Enter y final');
    Xi=[xi;yi];
    Xf=[xf;yf];
   
    workingArea(l1,l2,l3,Q1min,Q1max,Q2min,Q2max,Q3min,Q3max);
    hold on 
    grid on
    
    line1 = line ([0,0] , [0,1],'Color','red','LineStyle','--','LineWidth',1.5);
    line2 = line ([0,0] , [0,1],'Color','red','LineStyle','--','LineWidth',1.5);
    line3 = line ([0,0] , [0,1],'Color','red','LineStyle','--','LineWidth',1.5);
 
    
      a0=Xi;
      a1=0;
      a2=0;
      a3=10*(Xf-Xi);
      a4=-15*(Xf-Xi);
      a5=6*(Xf-Xi);
      
    time = 0:0.1:2;
    time = time/2;
    for i = 1:length(time)
            X = (time(i)^5).*a5 + a4*time(i)^4 + a3*time(i)^3 + a0;
            [q1,q2,q3]=IKPM(l1,l2,l3,X(1),X(2),Q1min,Q1max,Q2min,Q2max,Q3min,Q3max);
            x1=l1*cosd(q1);
            y1=l1*sind(q1);
            x2=x1+l2*cosd(q1+q2);
            y2=y1+l2*sind(q1+q2);
            x3=x2+l3*cosd(q1+q2+q3);
            y3=y2+l3*sind(q1+q2+q3);
            
            set (line1, 'XData',[00,x1], 'YData',[0, y1] );
            set (line2, 'XData',[x1,x2], 'YData',[y1, y2] );
            set (line3, 'XData',[x2,x3], 'YData',[y2, y3] );
            plot(X(1),X(2),'color','k','Marker','s','MarkerSize',2,'lineWidth',3);
            drawnow;
            pause(0.1);
            axis([-(l1+l2+l3) (l1+l2+l3) -(l1+l2+l3) (l1+l2+l3)]);
    end
end