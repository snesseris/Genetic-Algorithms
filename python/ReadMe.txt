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

The folder contains three files:
1) The python file "ga_toolkit_v2.py" which contains the nessesary GA functions needed to run the code.
2) The Jupyter notebook "example_v1.ipynb" which ighlights the usage of the code.
3) The txt file "data_hz.txt" with some mock data, used in the example.

For now the code only fits one-dimensional data of the form, x, y, \sigma_y. To use with your own data/likelihoods, just replace the chi^2 appropriately. A version with more than one independent variables is comng soon.

The output of the code is a function GA(x) that describes the data in a non-parametric way.

Possible use-cases include:
1) Fitting data in order to exctract some information or other unknown apriori quantity.
2) Compressing a known, but too complicated function.

For questions/comments drop me a line at savvas nesseris@csic.es

# Ascii art by Felix Lee <flee@cse.psu.edu>

