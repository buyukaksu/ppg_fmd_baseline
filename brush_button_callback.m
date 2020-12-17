function brush_button_callback(handle_object, event, h2,x)
% burada 'brush' yaptıktan sonra aşağıdaki kodu çalıştırıyoruz ve 
% brushed data'yı x'e export ediyoruz.
    global x;
    disp('hi')
    h2=findobj(gca,'type','line')
    for i=1:size(h2)
      idx=get(h2(i),'BrushData');
      idx=logical(idx);
      x=get(h2(i),'XData');
      x=x(idx)
    end
end
