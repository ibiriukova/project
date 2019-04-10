function gui02 
msgbox('Выберите изображение');
[FileName, PathName] = uigetfile;
if FileName~=0
    % Формирование полного пути к файлу
    FullName = [PathName FileName];
    % Считывание изображения из графического файла 
    Pict = imread(FullName);    
end
figure('MenuBar','none','Name','Conversion','NumberTitle','off','Position',[200,200,100,140]); 
uicontrol('Style','ToggleButton','String','Конвертировать','Position',[10,90,100,20],... 
'CallBack',@ToggleButtonPressed); 
uicontrol('Style','PushButton','String','Close','Position',[10,20,100,20],... 
'CallBack','close'); 

function ToggleButtonPressed(h, eventdata) 

B=['c:\' randi(1000) '.pnm'];            
            imwrite(Pict,B);
 msgbox('Сохранено по адресу c:\(Диск С)');
end
end
