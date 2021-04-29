% MEASURE1
ndeadlock
% MEASURE2
AF(#P1 ==1 && #P2 == 1 && #P3 == 1)
% MEASURE3
AF(#P4 == 1 &&  #P5 == 1 && #P6 == 1)
% MEASURE4
AF((#P4 == #P5) || (#P4 == #P6) || (#P5 == #P6 ))
% MEASURE5
AF((#P4 == 1) && (#P4 == #P5) && (#P4 == #P6))
% MEASURE6
AF(#P4 > 1)
% MEASURE7
AF(#P0 > 1)
% MEASURE8
EF(#P8 > 2)
% MEASURE9
AF(#P1 ==1 && #P2 == 1 && #P3 == 1 && #P4 == 1)
