# :star: Gradient Descent and Local Minimum :star:
## I. Project description
This function (Matlab script) will help you find a local minimum of two variable function. The result is a local minimum that is nearest to starting point.
## II.How to use source code
1. Open Matlab. ([Get 30 days free-trial](https://www.youtube.com/watch?v=DVfWATmX2nE))
2. Add *GradientDescent.m* file to your workspace.
3. In *command window* call the function with syntax \
```>> GradientDescent (f,x,y)```\
With *f* is a two variable function and (x,y) is a starting point.
4.  Example:
```
>> syms x y
>> GradientDescent(x^2 + y^2, 2, 3)
% Result:
x = 0.000332306
y = 0.000498460
```
## III. Requirement knowledge
- Basic Calculus knowledge:
    - Multivariable function.
    - Local extrema.
    - Saddle-point.
    - How to find local extrema and saddle-point of multivariable function.
    - How to escape saddle-point.
- Gradient Descent algorithm. 
- Basic Matlab commands.

## IV. Escape saddle-point
I use Noisy Gradient Descent idea ([here](https://www.offconvex.org/2016/03/22/saddlepoints/)) to escape the saddle-point.
>$$y = x-\eta\nabla f(x) + \epsilon$$
## V. Notice
If you have already known about Gradient Descent, you will regconize the importance of **learning rate** in this project: it will take a **long time** to find the local minimum if you set a **low learning rate**. On the other hand, with a **high learning rate**, you will **never meet the** local minimum.
In *GradientDescent.m* I chose value 0.1 (quite large). For the best performance, you can choose lower values 0.01, 0.001, etc (depend on your function).



