Welcome to the Genetic Algorithm TOolkit (GATO)!
     _.---.._             _.---...__  
  .-'   /\   \          .'  /\     /  
  `.   (  )   \        /   (  )   /   
    `.  \/   .'\      /`.   \/  .'    
      ``---''   )    (   ``---''      
              .';.--.;`.              
            .' /_...._\ `.            
          .'   `.a  a.'   `.          
         (        \/        )         
          `.___..-'`-..___.'          
             \          /             
              `-.____.-'              

This is a Genetic Algorithm (GA) implementation in python3, developed by Savvas Nesseris (2022-23), email: savvas nesseris@csic.es

The folder contains four files:
1) The python file "ga_toolkit_v2.py" which contains the nessesary GA functions needed to run the code. Use "import" to use it in your code (see also the example below).
2) The python file "ga_toolkit_v2_run.py" which is used for long chains and iterations since it doesn't print each generation. It includes the following new functions:
     - "derivative"; which computes the derivative of a function since the Scipy one was deprecated;
     - "compute_dfuncGA"; which computes the error for the resulting function of the GA using the path integral approach;
     - "der_points"; which computes the derivative and resulting error for a set of descrete data points, useful to apply the "compute_dfuncGA" in case of the derivative of a function resulting from the GA;
3) The Jupyter notebook "example_v1.ipynb" which highlights the usage of the code.
4) The txt file "data_hz.txt" with some mock data, used in the example above.

For now, the code only fits one-dimensional data of the form, x, y, \sigma_y. To use with your own data/likelihoods, just replace the chi^2 appropriately. A version with more than one independent variables is coming soon.

The output of the code is a function GA(x) that describes the data in a non-parametric way.

Possible use-cases include:
1) Fitting data in order to extract some information or other apriori unknown quantity.
2) Compressing a known, but too complicated, function.

For questions/comments drop me a line at savvas nesseris@csic.es

# Ascii art by Felix Lee <flee@cse.psu.edu>
