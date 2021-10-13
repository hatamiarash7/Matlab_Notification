function notify(type, title, msg)
    %NOTIFY Create windows notification
    %   Types   : important, info, error
    %   Example : notify('info', 'any title', 'your message');

    [status, result] = system(['notify-send -i "' type '" "' title '" "' msg '"']);

    if status ~= 0
        warning('Notify:Error', result);
    end

    clear type title msg status result;
end
