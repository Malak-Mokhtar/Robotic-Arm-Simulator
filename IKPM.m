function [Q1, Q2, Q3] = IKPM(l1,l2,l3,x,y,Q1min,Q1max,Q2min,Q2max,Q3min,Q3max)
for phi = 0:1:360
    xBAR = x - l3*cosd(phi);
    yBAR = y - l3*sind(phi);

   Q2 = real(acosd((xBAR^2 + yBAR^2 - l1^2 - l2^2)/(2*l1*l2)));
   matrix=[l1+l2*cosd(Q2) , -l2*sind(Q2) ; l2*sind(Q2) , l1+l2*cosd(Q2)];
   matrix_inv=inv(matrix);
   IKPM_matrix=matrix_inv*[xBAR ; yBAR];
   Q1RAD=atan2(IKPM_matrix(2) , IKPM_matrix(1));
   Q1=Q1RAD*(180/pi);
   Q3 = phi - Q2 - Q1;   
   
    if Q1 >= Q1min && Q1 <= Q1max
        if Q2 >= Q2min && Q2 <= Q2max
            if Q3 >= Q3min && Q3 <= Q3max
                break;
            end
        end
    end
end
end