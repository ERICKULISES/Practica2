function print(p1,p2,p3,p4,p5,p6,p7,p8)

line([p1(1) p2(1)],[p1(2) p2(2)],[p1(3) p2(3)],'color',[0 0 1],'linewidth', 3);
line([p2(1) p3(1)],[p2(2) p3(2)],[p2(3) p3(3)],'color',[0 0 1],'linewidth', 3);
line([p3(1) p4(1)],[p3(2) p4(2)],[p3(3) p4(3)],'color',[0 0 1],'linewidth', 3);
line([p4(1) p1(1)],[p4(2) p1(2)],[p4(3) p1(3)],'color',[0 0 1],'linewidth', 3);

line([p5(1) p6(1)],[p5(2) p6(2)],[p5(3) p6(3)],'color',[0 0 1],'linewidth', 3);
line([p6(1) p7(1)],[p6(2) p7(2)],[p6(3) p7(3)],'color',[0 0 1],'linewidth', 3);
line([p7(1) p8(1)],[p7(2) p8(2)],[p7(3) p8(3)],'color',[0 0 1],'linewidth', 3); 
line([p8(1) p5(1)],[p8(2) p5(2)],[p8(3) p5(3)],'color',[0 0 1],'linewidth', 3);

line([p1(1) p5(1)],[p1(2) p5(2)],[p1(3) p5(3)],'color',[1 0 1],'linewidth', 3);
line([p2(1) p6(1)],[p2(2) p6(2)],[p2(3) p6(3)],'color',[1 0 1],'linewidth', 3);
line([p3(1) p7(1)],[p3(2) p7(2)],[p3(3) p7(3)],'color',[1 0 1],'linewidth', 3);
line([p4(1) p8(1)],[p4(2) p8(2)],[p4(3) p8(3)],'color',[1 0 1],'linewidth', 3);
end