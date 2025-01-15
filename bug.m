function result = myFunction(input)
  % Some code that might throw an error
  if input < 0
    error('Input must be non-negative');
  end
  % ... more code ...
end

% Example usage:
input = -1;
try
  result = myFunction(input);
catch exception
  disp(['Error: ' exception.message]);
end