function gui02 
msgbox('�������� �����������');
[FileName, PathName] = uigetfile;
if FileName~=0
    % ������������ ������� ���� � �����
    FullName = [PathName FileName];
    % ���������� ����������� �� ������������ ����� 
    Pict = imread(FullName);    
end
figure('MenuBar','none','Name','Conversion','NumberTitle','off','Position',[200,200,100,140]); 
uicontrol('Style','ToggleButton','String','��������������','Position',[10,90,100,20],... 
'CallBack',@ToggleButtonPressed); 
uicontrol('Style','PushButton','String','Close','Position',[10,20,100,20],... 
'CallBack','close'); 

function ToggleButtonPressed(h, eventdata) 

B=['c:\' randi(1000) '.pnm'];            
            imwrite(Pict,B);
 msgbox('��������� �� ������ c:\(���� �)');
end
end
