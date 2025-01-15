function result = myFunction(input)
  % Improved error handling
  try
    if input < 0
      error('Input must be non-negative');
    end
    % ... more code ...
  catch exception
    % Log error information for debugging
    fprintf('Error in myFunction: %s\n', exception.message);
    fprintf('Stack trace:\n');
    for i = 1:length(exception.stack)
      fprintf('\t%s\n', exception.stack(i).name);
    end
    % Re-throw the exception for higher-level handling or return a default value
    rethrow(exception);
    %Alternatively, provide a default return value:
    % result = NaN;
  end
end

% Example usage:
input = -1;
try
  result = myFunction(input);
catch exception
  disp(['Error caught in main script: ' exception.message]);
end