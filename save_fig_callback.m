function save_fig_callback(~,~,fig1,fig_title,pathname)
    saving_path = [pathname fig_title];
    exportgraphics(fig1, saving_path)
end