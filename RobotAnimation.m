function RobotAnimation(l1,l2,l3,Q1min,Q1max,Q2min,Q2max,Q3min,Q3max)

disp('This is the Robot Animation for a three-link robotic arm of type RRR');
Q1=linspace(Q1min,Q1max,12);
Q2=linspace(Q2min,Q2max,6);
Q3=linspace(Q3min,Q3max,4);

for i=1:length(Q1)
    q1=Q1(i);
    for j = 1:length(Q2)
        q2=Q2(j);
        for k=1:length(Q3)
            q3=Q3(k);
            x0=0;
            y0=0;
            x1=l1*cosd(q1);
            y1=l1*sind(q1);
            x2=x1+l2*cosd(q1+q2);
            y2=y1+l2*sind(q1+q2);
            x3=x2+l3*cosd(q1+q2+q3);
            y3=y2+l3*sind(q1+q2+q3);
            plot([x0 x1],[y0 y1],[x1 x2],[y1 y2],[x2 x3],[y2 y3],'linewidth',3);
            grid on;
            axis([-15 15 -15 15]);
            pause(0.3);
        end
    end

end
end