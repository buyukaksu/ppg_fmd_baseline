function brush_rep_e_callback(handle_object, event, h2,p_rep_e)
% burada 'brush' yaptıktan sonra aşağıdaki kodu çalıştırıyoruz ve 
% brushed data'yı x'e export ediyoruz.
    global p_rep_e;
    h2=findobj(gca,'type','line');
    for i=1:size(h2)
      idx=get(h2(i),'BrushData');
      idx=logical(idx);
      x=get(h2(i),'XData');
      x=x(idx);
    end
    p_rep_e = min(x);
end