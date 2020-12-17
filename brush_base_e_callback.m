function brush_base_e_callback(handle_object, event, h2,p_base_e)
    % we set the brush tool on 
    % than we select the relevant points and we push the "Select Baseline End" button 
    global p_base_e;
    h2=findobj(gca,'type','line');
    for i=1:size(h2)
      idx=get(h2(i),'BrushData');
      idx=logical(idx);
      x=get(h2(i),'XData');
      x=x(idx);
    end
    p_base_e = min(x);
end