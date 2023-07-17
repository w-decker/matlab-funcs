%% Introduction
% Author: Will Decker

%% Example function
X = [1, 2, 3, 4, 5, 6, 7];
ans = mean(X);
sprintf('The mean of X is %g', ans)

%% Building our own function 
function ans = mySum(a, b)

ans = a + b
sprintf('%g + %g = %g', a, b, ans)

end

%% Making it better

% call function
mySum(2, 3)

function ans = mySum(a, b)
%MYSUM Summates two numbers together.
    % a (double or scalar) Can be positive or negative integer
    % b (double or scalar) Can be positive or negative integer
    
% computes sum
ans = a + b
    
% displays output
sprintf('%g + %g = %g', a, b, ans)

end