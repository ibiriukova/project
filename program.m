function gui02 
msgbox('selected image');
[FileName, PathName] = uigetfile;
if FileName~=0
    % ������������ ������� ���� � �����
    FullName = [PathName FileName];
    % ���������� ����������� �� ������������ ����� 
    Pict = imread(FullName);    
end
figure('MenuBar','none','Name','Conversion','NumberTitle','off','Position',[200,200,100,140]); 
uicontrol('Style','ToggleButton','String','Convert','Position',[20,90,70,20],... 
'CallBack',@ToggleButtonPressed); 
uicontrol('Style','PushButton','String','Close','Position',[20,20,70,20],... 
'CallBack','close'); 

function ToggleButtonPressed(h, eventdata) 

B=['c:\' randi(1000) '.pnm'];            
            imwrite(Pict,B);
 msgbox('saved on the disk C(c:\)');
end
end
