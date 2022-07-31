clc; clear all; close all;
import java.awt.*;
import java.awt.event.*;


rob=Robot;
none=false;

gpu=gpuDevice(1);

T_MP=0;
T_MBs=0;
T_BT=0;
T_END=0;
T_ENDwin=0;
T_Oleada=0;
T_FinOleada=0;
T_Evento=0;
T_PP=0;
T_MenuPS=0;
T_Soldados=0;
T_Ataquetome=0;
T_ErrorApp=0;
T_AcercaInforme=0;
NoLog=24526;
lastActivity="Inicio";
prelastActivity="Inicio";
AcercaInforme = rgb2gray(imread("img\AcercaInforme.JPG"));
AcercaInforme=wiener2(AcercaInforme,[80 80]);
AcercaInforme=edge(AcercaInforme,'sobel');

MenuPS = rgb2gray(imread("img/MenuPS.jpg"));
MenuPS=wiener2(MenuPS,[80 80]);
MenuPS=edge(MenuPS,'sobel');

PP = rgb2gray(imread("img/PP.jpg"));
PP=wiener2(PP,[80 80]);
PP=edge(PP,'sobel');

MP = rgb2gray(imread("img/MP.jpg"));
MP=wiener2(MP,[80 80]);
MP=edge(MP,'sobel');

MBs = rgb2gray(imread("img/MBs.jpg"));
MBs=wiener2(MBs,[80 80]);
MBs=edge(MBs,'sobel');

BT = rgb2gray(imread("img/BT.jpg"));
BT=wiener2(BT,[80 80]);
BT=edge(BT,'sobel');

END = rgb2gray(imread("img/END.jpg"));
END=wiener2(END,[80 80]);
END=edge(END,'sobel');

ENDwin = rgb2gray(imread("img/ENDwin.jpg"));
ENDwin=wiener2(ENDwin,[80 80]);
ENDwin=edge(ENDwin,'sobel');

Oleada = rgb2gray(imread("img/Oleada.jpg"));
Oleada=wiener2(Oleada,[80 80]);
Oleada=edge(Oleada,'sobel');

FinOleada = rgb2gray(imread("img/OleadaEND.jpg"));
FinOleada=wiener2(FinOleada,[80 80]);
FinOleada=edge(FinOleada,'sobel');

Oleada_derrota = rgb2gray(imread("img/Derrota_oleada.jpg"));
Oleada_derrota=wiener2(Oleada_derrota,[80 80]);
Oleada_derrota=edge(Oleada_derrota,'sobel');

Evento = rgb2gray(imread("img/Evento.jpg"));
Evento=wiener2(Evento,[80 80]);
Evento=edge(Evento,'sobel');

Soldados = rgb2gray(imread("img/Soldados.jpg"));
Soldados=wiener2(Soldados,[80 80]);
Soldados=edge(Soldados,'sobel');

Ataquetome = rgb2gray(imread("img/Ataquetome.jpg"));
Ataquetome=wiener2(Ataquetome,[80 80]);
Ataquetome=edge(Ataquetome,'sobel');

ErrorApp = rgb2gray(imread("img/ErrorApp.jpg"));
ErrorApp=wiener2(ErrorApp,[80 80]);
ErrorApp=edge(ErrorApp,'sobel');


MP=  im2uint8(MP);
MBs=  im2uint8(MBs);
BT=  im2uint8(BT);
END=  im2uint8(END);
Oleada=  im2uint8(Oleada);
FinOleada=  im2uint8(FinOleada);
Oleada_derrota=  im2uint8(Oleada_derrota);
Evento=  im2uint8(Evento);
ENDwin=im2uint8(ENDwin);
MenuPS=im2uint8(MenuPS);
Soldados=im2uint8(Soldados);
Ataquetome=im2uint8(Ataquetome);
ErrorApp=im2uint8(ErrorApp);
PP=im2uint8(PP);
AcercaInforme=im2uint8(AcercaInforme);
dtLastAct=now;
while 1
tic
    while 1
        tic

        if(lastActivity ~= prelastActivity) 
            prelastActivity=lastActivity;
        end
        NoLog=NoLog+1;
        display("-------INICIO---------- Log:"+NoLog+" -- LastActivity: "+lastActivity+" -- preLastActivity: "+prelastActivity);
        display("T_MP "+T_MP);
        display("T_MBs "+T_MBs);
        display("T_BT "+T_BT);
        display("T_END "+T_END);
        display("T_ENDwin "+T_ENDwin);
        display("T_Oleada "+T_Oleada);
        display("T_FinOleada "+T_FinOleada);
        display("T_Evento "+T_Evento);
        display("T_PP "+T_PP);
        display("T_MenuPS "+T_MenuPS);
        display("T_Soldados "+T_Soldados);
        display("T_Ataquetome "+T_Ataquetome);
        display("T_ErrorApp "+T_ErrorApp);
        display("T_AcercaInforme "+T_AcercaInforme);
        display(":::::::::::::::::::::::::::::::::");
     display("-------Fin---------- Log:"+NoLog+" -- LastActivity: "+lastActivity+" -- preLastActivity: "+prelastActivity);
    display("Elapsed time is "+ toc +" seconds.");
        if(none==true)
            % fwrite(device,'A')
            display("none battaaaa");
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_F   )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_F   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            %    rob.keyPress(KeyEvent.VK_ENTER  )
            %    pause(0.1);
            %    rob.keyRelease(KeyEvent.VK_ENTER  )
            %    display("none VK_ENTER");

            %    rob.keyPress(KeyEvent.VK_RIGHT  )
            %    pause(0.1);
            %    rob.keyPress(KeyEvent.VK_DOWN  )
            %    pause(0.1);
            %    rob.keyRelease(KeyEvent.VK_RIGHT  )
            %    rob.keyRelease(KeyEvent.VK_DOWN  )
            %    display("none VK_ENTER");
            %    rob.keyPress(KeyEvent.VK_ENTER  )
            %    pause(0.1);
            %    rob.keyRelease(KeyEvent.VK_ENTER  )
            %    display("none VK_ENTER");
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            display(" VK_R");
            pause(0.1);
        else
            %fwrite(device,'B')
        end


        pos = [0 0 3840 2160]; % [left top
        % width height]
        rect = java.awt.Rectangle(pos(1),pos(2),pos(3),pos(4));
        cap = rob.createScreenCapture(rect);
        % Convert to an RGB image
        rgb = typecast(cap.getRGB(0,0,cap.getWidth,cap.getHeight,[],0,cap.getWidth),'uint8');
        imgData = zeros(cap.getHeight,cap.getWidth,3,'uint8');
        imgData(:,:,1) = reshape(rgb(3:4:end),cap.getWidth,[])';
        imgData(:,:,2) = reshape(rgb(2:4:end),cap.getWidth,[])';
        imgData(:,:,3) = reshape(rgb(1:4:end),cap.getWidth,[])';
        imwrite(imgData,'img/snapshot1.jpg')
        snapshot1 = rgb2gray(imread("img/snapshot1.jpg"));
       
        snapshot1=wiener2(snapshot1,[80 80]);
        snapshot1=edge(snapshot1,'sobel');
        snapshot1=  im2uint8(snapshot1);
        %    T_Oleada_derrota= ssim(Oleada_derrota,snapshot1);
        %    T_MP_sol = ssim(MP_sol,snapshot1);
        %  T_Oleada_derrota=0;

        T_MP= (ssim(MP,snapshot1));
        if(T_MP > (0.9) || T_MenuPS > (0.93) || T_ErrorApp > (0.93))
         
            % fwrite(device,'N')
            rob.keyPress(KeyEvent.VK_ENTER  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_ENTER  )
            display("T_MP VK_ENTER");
            lastActivity= datestr(now, 'dd/mm/yy-HH:MM')+" T_MP "+ T_MP +" "+"T_MenuPS "+ T_MenuPS +" "+"T_ErrorApp "+ T_ErrorApp;
            dtLastAct=now;
            none=false;
            T_MenuPS=0;
            T_ErrorApp=0;
            break;
        end
        T_MBs= (ssim(MBs,snapshot1));
        if(T_MBs > (0.9))
            %  fwrite(device,'N')
            rob.keyPress(KeyEvent.VK_LEFT  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_LEFT  )
            display("T_MBs VK_LEFT");
            pause(0.1);
            none=false;
            rob.keyPress(KeyEvent.VK_ENTER  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_ENTER  )
            display("VK_ENTER");
            pause(0.1);
            none=false;
            rob.keyPress(KeyEvent.VK_LEFT  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_LEFT  )
            display(" VK_LEFT");
            pause(0.1);
            rob.keyPress(KeyEvent.VK_ENTER  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_ENTER  )
            pause(1);
            display("T_MBs VK_ENTER");
            %     fwrite(device,'A')
            none=true;
                       lastActivity= datestr(now, 'dd/mm/yy-HH:MM')+" T_MBs "+ T_MBs ;
                       dtLastAct=now;
            break;
        end
        if(none==true)
            % fwrite(device,'A')
            display("none battaaaa");
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_F   )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_F   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            %    rob.keyPress(KeyEvent.VK_ENTER  )
            %    pause(0.1);
            %    rob.keyRelease(KeyEvent.VK_ENTER  )
            %    display("none VK_ENTER");

            %    rob.keyPress(KeyEvent.VK_RIGHT  )
            %    pause(0.1);
            %    rob.keyPress(KeyEvent.VK_DOWN  )
            %    pause(0.1);
            %    rob.keyRelease(KeyEvent.VK_RIGHT  )
            %    rob.keyRelease(KeyEvent.VK_DOWN  )
            %    display("none VK_ENTER");
            %    rob.keyPress(KeyEvent.VK_ENTER  )
            %    pause(0.1);
            %    rob.keyRelease(KeyEvent.VK_ENTER  )
            %    display("none VK_ENTER");
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            display(" VK_R");
            pause(0.1);
        else
            %fwrite(device,'B')
        end
        %    T_BT= (ssim(BT,snapshot1));
        %
        %       if(T_BT > (0.91))
        %         none=true;
        %         %  fwrite(device,'A')
        %         display("T_BT ifffffffff");
        %
        %
        %     end

        T_END= (ssim(END,snapshot1));
        T_ENDwin= (ssim(ENDwin,snapshot1));
        if(T_END > (0.94) || T_ENDwin> (0.94))
            %   fwrite(device,'N')
            rob.keyPress(KeyEvent.VK_ENTER  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_ENTER  )
            display("T_END VK_ENTER");
            none=false;
               lastActivity= datestr(now, 'dd/mm/yy-HH:MM')+" T_END "+ T_END +" "+"T_ENDwin "+ T_ENDwin;
               dtLastAct=now;
            break;
        end

        T_Oleada= (ssim(Oleada,snapshot1));
        if(T_Oleada > (0.92))
            %  fwrite(device,'N')
            none=true;
            rob.keyPress(KeyEvent.VK_ENTER  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_ENTER  )
            display("T_Oleada VK_ENTER");
              lastActivity= datestr(now, 'dd/mm/yy-HH:MM')+" T_Oleada "+ T_Oleada ;
              dtLastAct=now;
            break;
        end

        T_FinOleada= (ssim(FinOleada,snapshot1));
        if(T_FinOleada > (0.93))
            %   fwrite(device,'N')
            rob.keyPress(KeyEvent.VK_ENTER  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_ENTER  )
            display("T_FinOleada VK_ENTER");
            none=false;
                lastActivity= datestr(now, 'dd/mm/yy-HH:MM')+" T_FinOleada "+ T_FinOleada ;
                dtLastAct=now;
            break;
        end

        % T_Oleada_derrota
        %     if(T_Oleada_derrota > (0.87))
        %         %   fwrite(device,'N')
        %         rob.keyPress(KeyEvent.VK_ENTER  )
        %         pause(0.1);
        %         rob.keyRelease(KeyEvent.VK_ENTER  )
        %         display("T_Oleada_derrota VK_ENTER");
        %         none=false;
        %     end
        if(none==true)
            % fwrite(device,'A')
            display("none battaaaa");
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_F   )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_F   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            %    rob.keyPress(KeyEvent.VK_ENTER  )
            %    pause(0.1);
            %    rob.keyRelease(KeyEvent.VK_ENTER  )
            %    display("none VK_ENTER");

            %    rob.keyPress(KeyEvent.VK_RIGHT  )
            %    pause(0.1);
            %    rob.keyPress(KeyEvent.VK_DOWN  )
            %    pause(0.1);
            %    rob.keyRelease(KeyEvent.VK_RIGHT  )
            %    rob.keyRelease(KeyEvent.VK_DOWN  )
            %    display("none VK_ENTER");
            %    rob.keyPress(KeyEvent.VK_ENTER  )
            %    pause(0.1);
            %    rob.keyRelease(KeyEvent.VK_ENTER  )
            %    display("none VK_ENTER");
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            display(" VK_R");
            pause(0.1);
        else
            %fwrite(device,'B')
        end
        T_Evento= (ssim(Evento,snapshot1));
        if(T_Evento > (0.92) || T_PP > (0.895) || T_AcercaInforme > (0.92))
            %   fwrite(device,'N')
            %  fwrite(device,'N')
            %   fwrite(device,'N')
            %     fwrite(device,'N')
            %   fwrite(device,'N')
            %   fwrite(device,'N')
            rob.keyPress(KeyEvent.VK_ESCAPE   )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_ESCAPE   )
            display("T_Evento VK_ESCAPE");
            none=false;
             lastActivity= datestr(now, 'dd/mm/yy-HH:MM')+" T_Evento "+ T_Evento +" "+"T_PP "+ T_PP +" "+"T_AcercaInforme "+ T_AcercaInforme;
            dtLastAct=now;
             if(T_PP> (0.895))
                pause(0.5);
                rob.keyPress(KeyEvent.VK_UP )
                pause(0.1);
                rob.keyRelease(KeyEvent.VK_UP  )
                display("T_PP VK_UP");
                T_PP=0;
            end
            T_AcercaInforme=0;
              
            break;

        end

        if(T_Soldados > (0.91) || T_Ataquetome> (0.92) )
            rob.keyPress(KeyEvent.VK_ESCAPE   )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_ESCAPE   )
            pause(0.2);
            rob.keyPress(KeyEvent.VK_ESCAPE   )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_ESCAPE   )
            pause(0.1);
            display("T_Soldados VK_ESCAPE");
            none=false;
             lastActivity= datestr(now, 'dd/mm/yy-HH:MM')+" T_Soldados "+ T_Soldados +" "+"T_Ataquetome "+ T_Ataquetome;
            dtLastAct=now;
             T_Soldados=0;
            T_Ataquetome=0;
            
            break;
        end
        if(none==true)
            % fwrite(device,'A')
            display("none battaaaa");
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_F   )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_F   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            %    rob.keyPress(KeyEvent.VK_ENTER  )
            %    pause(0.1);
            %    rob.keyRelease(KeyEvent.VK_ENTER  )
            %    display("none VK_ENTER");

            %    rob.keyPress(KeyEvent.VK_RIGHT  )
            %    pause(0.1);
            %    rob.keyPress(KeyEvent.VK_DOWN  )
            %    pause(0.1);
            %    rob.keyRelease(KeyEvent.VK_RIGHT  )
            %    rob.keyRelease(KeyEvent.VK_DOWN  )
            %    display("none VK_ENTER");
            %    rob.keyPress(KeyEvent.VK_ENTER  )
            %    pause(0.1);
            %    rob.keyRelease(KeyEvent.VK_ENTER  )
            %    display("none VK_ENTER");
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            pause(0.1);
            rob.keyPress(KeyEvent.VK_R  )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_R   )
            display(" VK_R");
            pause(0.1);
        else
            %fwrite(device,'B')
        end
        T_PP=(ssim(PP,snapshot1));
        T_MenuPS= (ssim(MenuPS,snapshot1));
        T_Soldados= (ssim(Soldados,snapshot1));
        T_Ataquetome= (ssim(Ataquetome,snapshot1));
        T_ErrorApp= (ssim(ErrorApp,snapshot1));
        T_AcercaInforme=(ssim(AcercaInforme,snapshot1));
        display("-----------FIN-----------------");
    toc
    end
     dT = now - dtLastAct;
    toc
     display("-------Fin---------- Log:"+NoLog+" -- LastActivity: "+lastActivity+" -- preLastActivity: "+prelastActivity);
    display("Elapsed time is "+ toc +" seconds.");
     display("Dif time is "+ dT +" minutes.");
    if(dT > minutes(35))
            rob.keyPress(KeyEvent.VK_ESCAPE   )
            pause(0.1);
            rob.keyRelease(KeyEvent.VK_ESCAPE   )
    end
    pause(1);
end



