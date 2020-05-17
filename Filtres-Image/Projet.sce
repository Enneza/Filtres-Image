/// Projet L3 Traitement d'image et de signal
/// GROUPE:
///         BERRAI Dyhia 15608005
///         HUARD Alicia 15601834

f=figure('figure_position',[307,0],'figure_size',[943,685],'auto_resize','on','background',[33],'figure_name','Figure n°%d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
path="C:\Users\Alicia\Desktop\TSI\BERRAI_HUARD";
f=figure('figure_position',[190,50],...
'figure_size',[1050,650],...
'auto_resize','on',...
'background',[2],...
'figure_name','Projet BERRAI HUARD',...
'dockable','off',...
'infobar_visible','off',...
'toolbar_visible','off',...
'menubar_visible','off',...
'default_axes','on',...
'visible','off');

handles.dummy = 0;

handles.Load_Image=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0971922,0.8010753,0.2141037,0.1103584],'Relief','default','SliderStep',[0.01,0.1],'String','Load Image','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Load Image','Callback','Load_Image_callback(handles)')

handles.Original=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0971922,0.6505376,0.2141037,0.1103584],'Relief','default','SliderStep',[0.01,0.1],'String','Original','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Original','Callback','Original_callback(handles)')

handles.Save=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0971922,0.4982079,0.2141037,0.1103584],'Relief','default','SliderStep',[0.01,0.1],'String','Save','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Save','Callback','Save_callback(handles)')

handles.Zoom_in=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.5,0.3513932,0.1511879,0.0495356],'Relief','default','SliderStep',[0.01,0.1],'String','Zoom in','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Zoom in','Callback','Zoom_in_callback(handles)')

handles.Zoom_out=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7516199,0.3513932,0.1511879,0.0495356],'Relief','default','SliderStep',[0.01,0.1],'String','Zoom out','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Zoom out','Callback','Zoom_out_callback(handles)')

handles.Grey_filter=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7422678,0.2043344,0.2119438,0.1068111],'Relief','default','SliderStep',[0.01,0.1],'String','Grey filter','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Grey filter','Callback','Grey_filter_callback(handles)')

handles.Sobel_filter=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.3422678,0.0510836,0.2119438,0.1068111],'Relief','default','SliderStep',[0.01,0.1],'String','Sobel filter','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Sobel filter','Callback','Sobel_filter_callback(handles)')

handles.Mirror=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7422678,0.0557276,0.2119438,0.1068111],'Relief','default','SliderStep',[0.01,0.1],'String','Mirror','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Mirror','Callback','Mirror_callback(handles)')

handles.Negative_filter=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.3422678,0.1919505,0.2119438,0.1068111],'Relief','default','SliderStep',[0.01,0.1],'String','Negative filter','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Negative filter','Callback','Negative_filter_callback(handles)')

handles.Close=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0464363,0.1037152,0.1125918,0.1570588],'Relief','default','SliderStep',[0.01,0.1],'String','Close','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Close','Callback','Close_callback(handles)')

handles.Axe= newaxes();handles.Axe.margins = [ 0 0 0 0];handles.Axe.axes_bounds = [0.400432,0.0468111,0.5509071,0.5050464];
f.visible = "on";


//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////

function Load_Image_callback(handles)
    filePath = uigetfile('*'); 
    image = imread(filePath);
    imshow(image);
    handles.OriginalImage = image;
    handles.CopyImage     = image;
    handles.MirrorImage   = 0;
    handles = resume(handles);

endfunction


function Original_callback(handles)
    image = handles.OriginalImage;
    imshow(image);
    handles.CopyImage= image;
    handles = resume(handles);

endfunction


function Save_callback(handles)
   imageTosave=handles.CopyImage;
   imshow(imageTosave);
   [fileName,filePath]=uiputfile(["*.jpeg"; "*.png"; "*.jpg"]);
   fileName=fullfile(filePath,fileName);
   imwrite(imageTosave,string(fileName+".jpg"));

endfunction


function Zoom_in_callback(handles)
    handles.BeforeZoom=handles.CopyImage;
    image = handles.CopyImage;
    rect1=rubberbox();
    imheight=size(image,"r");

    rect1(2)=imheight-rect1(2);   
    zoomed=imcrop(image,rect1);
    imshow(zoomed);
    height=size(zoomed,"r");
    handles.CopyImage=zoomed;
    handles = resume(handles);

endfunction


function Zoom_out_callback(handles)
    imshow(handles.BeforeZoom);
    if handles.CopyImage==handles.BeforeZoom then
        handles.BeforeZoom=handles.OriginalImage;
    end
    handles.CopyImage=handles.BeforeZoom;
    handles = resume(handles);

endfunction


function Grey_filter_callback(handles)
    image = rgb2gray(handles.CopyImage);
    imshow(image);
    handles.CopyImage = image;
    handles = resume(handles);

endfunction


function Sobel_filter_callback(handles)
    image = handles.CopyImage;
    filter = fspecial('sobel'); 
    image = imfilter(image, filter);
    imshow(image);
    handles.CopyImage = image;
    handles = resume(handles);

endfunction


function Mirror_callback(handles)
    test=~handles.MirrorImage;
    if test then
        image = handles.CopyImage(:,$:-1:1,:);
    else
        image = handles.OriginalImage;
    end
    imshow(image);
    handles.MirrorImage=test;
    handles.CopyImage = image;
    handles = resume(handles);

endfunction


function Negative_filter_callback(handles)
    [nl, nc] = size(handles.CopyImage);
    image = handles.CopyImage;
    for i = 1:nl
        for j = 1:nc
            image(i, j) = 255 - image(i, j)
        end;
    end
    imshow(image);
    handles.CopyImage = image;
    handles = resume(handles);

endfunction


function Close_callback(handles)
    close(f);

endfunction


