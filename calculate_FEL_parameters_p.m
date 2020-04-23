% calculate_FEL_parameters
%Helical rho
%rho1D =1/param.gamma0*(1/8*param.I/IA*param.K.^2/param.sigmax^2/param.ku^2)^(1/3);

csi1=param.K^2/(4+2*param.K^2);
JJ1=besselj(0,csi1)-besselj(1,csi1);

rho1D = 1/param.gamma0*(1/16*param.I/IA*param.K^2*JJ1^2/param.sigmax^2/param.ku^2)^(1/3);

Lgain = param.lambdau/(4*sqrt(3)*pi*rho1D);
pnoise=param.gamma0*0.511e6*2*pi*3e8/param.lambda0*rho1D^2/2*1.6e-19;
Lsat = param.lambdau/rho1D;
Psat = 1.6*rho1D*param.Ee*param.I;