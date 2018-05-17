function h=logcolorbar()
% h=logcolorbar();
% logcolorbar - Make a log-scale colorbar for log-data.
% Output:
%  - h Handle for colorbar axes.

    h=colorbar;
    ticks = get(h,'ytick');
    newticks = {};
    for i=1:length(ticks)
        gstr = sprintf('%1.0g',10^ticks(i));
        fstr = sprintf('%1.0f',10^ticks(i));
        if length(fstr) < length(gstr) && ~strcmpi(fstr,'0')
            newticks{i} = fstr;
        else
            newticks{i} = gstr;
        end
    end
    set(h,'yticklabel',newticks);
end
