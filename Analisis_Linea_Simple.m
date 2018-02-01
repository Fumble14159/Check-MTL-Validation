function Analisis_Linea_Simple(tipo,d)

% tipo: 1 - Ribbon / 2 - Asimétrico / 3 - Simétrico
% d = Longitud de la linea

SimularLinea(tipo,d)
[Mat_PN_EP,Mat_PN_NE,Mat_NE_EP,f]=PintarAtenuacionReducidos(tipo);
mediascocientesMIMOsReducidos(tipo,1,2,2)
mediascocientesMIMOsReducidos(tipo,2,3,3)
mediascocientesMIMOsReducidos(tipo,1,3,4)

figure(5)
subplot(3,1,1)
plot(f,abs(Mat_PN_EP(:,1,1)),'k',f,abs(Mat_PN_EP(:,2,2)),'r',f,abs(Mat_PN_EP(:,1,2)),'b',f,abs(Mat_PN_EP(:,2,1)),'m')
legend('PNPN - H11','EPEP - H22','EPPN - H12','PNEP - H21')
grid on
title('Atenuacion Linea bajo prueba. Matriz PN-EP')
xlabel('Frecuencia (Mhz)')
ylabel('Amplitud (Módulo)')

subplot(3,1,2)
plot(f,abs(Mat_PN_NE(:,1,1)),'k',f,abs(Mat_PN_NE(:,2,2)),'r',f,abs(Mat_PN_NE(:,1,2)),'b',f,abs(Mat_PN_NE(:,2,1)),'m')
legend('PNPN - H11','NENE - H22','NEPN - H12','PNNE - H21')
grid on
title('Atenuacion Linea bajo prueba. Matriz PN-NE')
xlabel('Frecuencia (Mhz)')
ylabel('Amplitud (Módulo)')

subplot(3,1,3)
plot(f,abs(Mat_NE_EP(:,1,1)),'k',f,abs(Mat_NE_EP(:,2,2)),'r',f,abs(Mat_NE_EP(:,1,2)),'b',f,abs(Mat_NE_EP(:,2,1)),'m')
legend('NENE - H11','EPEP - H22','EPNE - H12','NEEP - H21')
grid on
title('Atenuacion Linea bajo prueba. Matriz NE-EP')
xlabel('Frecuencia (Mhz)')
ylabel('Amplitud (Módulo)')

figure(6) % Igual que figure(5) pero en dB
subplot(3,1,1)
plot(f,20*log10(abs(Mat_PN_EP(:,1,1))),'k',f,20*log10(abs(Mat_PN_EP(:,2,2))),'r',f,20*log10(abs(Mat_PN_EP(:,1,2))),'b',f,20*log10(abs(Mat_PN_EP(:,2,1))),'m')
legend('PNPN - H11','EPEP - H22','EPPN - H12','PNEP - H21')
grid on
title('Atenuacion Linea bajo prueba. Matriz PN-EP')
xlabel('Frecuencia (Mhz)')
ylabel('Amplitud (dB)')

subplot(3,1,2)
plot(f,20*log10(abs(Mat_PN_NE(:,1,1))),'k',f,20*log10(abs(Mat_PN_NE(:,2,2))),'r',f,20*log10(abs(Mat_PN_NE(:,1,2))),'b',f,20*log10(abs(Mat_PN_NE(:,2,1))),'m')
legend('PNPN - H11','NENE - H22','NEPN - H12','PNNE - H21')
grid on
title('Atenuacion Linea bajo prueba. Matriz PN-NE')
xlabel('Frecuencia (Mhz)')
ylabel('Amplitud (dB)')

subplot(3,1,3)
plot(f,20*log10(abs(Mat_NE_EP(:,1,1))),'k',f,20*log10(abs(Mat_NE_EP(:,2,2))),'r',f,20*log10(abs(Mat_NE_EP(:,1,2))),'b',f,20*log10(abs(Mat_NE_EP(:,2,1))),'m')
legend('NENE - H11','EPEP - H22','EPNE - H12','NEEP - H21')
grid on
title('Atenuacion Linea bajo prueba. Matriz NE-EP')
xlabel('Frecuencia (Mhz)')
ylabel('Amplitud (dB)')