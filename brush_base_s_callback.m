function brush_base_s_callback(handle_object, event,p_base_s)
    % we set the brush tool on 
    % than we select the relevant points and we push the "Select Baseline Start" button 
    global p_base_s;
    h2=findobj(gca,'type','line');
    for i=1:size(h2)
      idx=get(h2(i),'BrushData');
      idx=logical(idx);
      x=get(h2(i),'XData');
      x=x(idx);
    end
    p_base_s = max(x);
end