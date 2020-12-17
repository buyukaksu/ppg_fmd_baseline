function equalize_zoom_callback (obj, evnt, g1,g2,g3,g4)
        g2.XLim = g1.XLim;
        g2.YLimMode = 'auto';
        g3.XLim = g1.XLim;
        g3.YLimMode = 'auto';
        g4.XLim = g1.XLim;
        g4.YLimMode = 'auto';
end