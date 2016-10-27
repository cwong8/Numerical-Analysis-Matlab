% Problem 4
% clear
format long e

% cd 'C:\Users\Christopher\Desktop\MAT 128A\Project 1';

% Use Divided_differences_P1 to get the vector a
% Use Horners_Rule_P2 to get y = f(x(j))

n = input('Specify the power of the desired polynomial: ');
eval_x = input('Evaluate the polynomial at x = ');
x = input('Input a vector of x values: ');
y = input('Input a vector of y values: ');
w = input('Input a vector of w values: ');

if numel(x) ~= (n+1) || numel(y) ~= (n+1) || numel(w) ~= (n+1)
  error('Your vectors are not of length n+1');
else
  if numel(unique(x)) ~= (n+1)
    error('x must be a vector of distinct values');
  end
end

display_x = eval_x;
copies = numel(eval_x);
eval_x = repmat(eval_x, 1, numel(x));
x = repelem(x, copies);
y = repelem(y, copies);
w = repelem(w, copies);
token = eval_x - x;
for i = 1:copies
  for j = i:copies:numel(token)
    if token(j) ~= 0
      j = i:copies:numel(token);
      eval_y(i) = (sum((w(j)./(eval_x(j) - x(j))).*y(j))) / (sum(w(j)./(eval_x(j) - x(j))));
    else
      if token(j) == 0
        eval_y(i) = y(j);
        break
      end
    end
  end
end
output = horzcat(display_x', eval_y');
fprintf('f(%d) = %d\n', output');
