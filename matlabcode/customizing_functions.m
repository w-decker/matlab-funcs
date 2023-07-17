%% Customizing functions
% Author: Will Decker

%% Using nargin and varargin

function ans = mySum(a, varargin)

if nargin == 1
    ans = a + a;
    sprintf('%g + %g = %g', a, a, ans)
elseif nargin > 1
    ans = a;
    for i = 1:length(varargin)
        ans = ans + varargin{i}
    end
    sprintf('Your sum is %g', ans)
end
end

%% Using switch case

function ans = mySum(a, varargin)
if nargin == 1
    ans = a + a;
    sprintf('%g + %g = %g', a, a, ans)
elseif nargin == 1 && strcmp(varargin{end}, 'abs')
    switch sign(a)
        case -1
            a = a*(-1);
        otherwise
            a = a;
    end
    ans = a + a;
    sprintf('%g + %g = %g', a, a, ans)
elseif nargin > 1 && ~strcmp(varargin{end}, 'abs')
    ans = a;
    for i = 1:length(varargin)
        ans = ans + varargin{i};
    end
    sprintf('Your sum is %g', ans)
elseif nargin >= 1 && strcmp(varargin{end}, 'abs')
    switch sign(a)
        case -1
            a = a*(-1);
        otherwise 
            a = a;
    end
    nvar = length(varargin) - 1;
    for i = 1:nvar
        switch sign(varargin{i})
            case -1
               varargin{i} = varargin{i}*(-1);
            otherwise
               varargin{i} = varargin{i};
        end
    end
    ans = a;
    for i = 1:nvar
        ans = a + varargin{i};
    end
    sprintf('Your sum is %g', ans)
end
end