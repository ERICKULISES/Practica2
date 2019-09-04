%ERICK ULISES ESTEVEZ MORAN 
close all
%preguntamos cuantos grados se movera el rectangulo en 3d
prompt = 'Introduzca el valor (grados) de la rotacion en x (phi): ';
phiDeg = input(prompt);

prompt = 'Introduzca el valor (grados) de la rotacion en y (theta): ';
thetaDeg = input(prompt);

prompt = 'Introduzca el valor (grados) de la rotacion en z (psi): ';
psiDeg = input(prompt);
%nombramos cada uno de los ejes como phirad a x etc
phiRad = deg2rad(phiDeg);
thetaRad = deg2rad(thetaDeg);
psiRad = deg2rad(psiDeg);

for phiRad = 0:0.5:phiRad
    clf;
    for thetaRad = 0:0.5:thetaRad
        clf;
        for psiRad = 0:0.5:psiRad
            clf;
        
line([5 -5],[0 0],[0 0], 'color',[1 0 0],'linewidth', 1.5);
line([0 0],[5 -5],[0 0], 'color',[0 1 0],'linewidth', 1.5);
line([0 0],[0 0],[5 -5], 'color',[0 0 1],'linewidth', 1.5);

grid on
     %X Y Z
p1 = [0 0 0];
p2 = [0 3 0];
p3 = [0 3 2];
p4 = [0 0 2];
     %X Y X
p5 = [7 0 0];
p6 = [7 3 0];
p7 = [7 3 2];
p8 = [7 0 2];
%se manda a llamar la funcion print para evitar hacer todas las formulas de
%las lineas.
print(p1,p2,p3,p4,p5,p6,p7,p8)

view(120,30)
%ecuacciones de rotacion
Rx = [1 0 0; 0 cos(phiRad) -sin(phiRad);0 sin(phiRad) cos(phiRad)];
Ry = [cos(thetaRad) 0 sin(thetaRad); 0 1 0; -sin(thetaRad) 0 cos(thetaRad)];
Rz = [cos(psiRad) -sin(psiRad) 0; sin(psiRad) cos(psiRad) 0; 0 0 1];
Rt = Rx*Ry*Rz;

p1 = Rt*p1';
p2 = Rt*p2';
p3 = Rt*p3';
p4 = Rt*p4';
p5 = Rt*p5';
p6 = Rt*p6';
p7 = Rt*p7';
p8 = Rt*p8';

print(p1,p2,p3,p4,p5,p6,p7,p8)

pause (0.5)
        end
    end
end