# Genetic algorithms' toolkit for long run chains with no iteration number printed
# Implementation of the error estimate through the path integral approach

from __future__ import division
from sympy import *
import sympy as sym
import random as rnd
import copy
import time
import pickle
import os
import math as mt
from sys import exit
import numpy as np

# This sets the version number.
__version__ = '2.1'

# This variable keeps track if we already printed the logo
__logo__ = False

# This changes the speed of the logo 
# __speed__  = 0 means no delay, aka full speed
# __speed__  = 1 means regular delay, aka low speed
__speed__  = 0

ascii=[
"     _.---.._             _.---...__  ",
"  .-'   /\   \          .'  /\     /  ",
"  `.   (  )   \        /   (  )   /   ",
"    `.  \/   .'\      /`.   \/  .'    ",
"      ``---''   )    (   ``---''      ",
"              .';.--.;`.              ",
"            .' /_...._\ `.            ",
"          .'   `.a  a.'   `.          ",
"         (        \/        )         ",
"          `.___..-'`-..___.'          ",
"             \          /             ",
"              `-.____.-'              "
]

# Ascii art by Felix Lee <flee@cse.psu.edu>

# Quick test to print the logo:
# python -c 'import ga_toolkit_v2 as ga; ga.__speed__=1; ga.logo()'

def logo():
	global __logo__
	if __logo__ == False:
		print('')
		print('   Genetic Algorithm TOolkit (GATO)')
		print('')
		for i in range(len(ascii)):
			print(ascii[i])
			time.sleep(0.1*__speed__) 
		print('')
		time.sleep(0.5*__speed__) 
		print('Developed by Savvas Nesseris (2022-2023), v'+__version__+'.')
		print('')
		time.sleep(1.0*__speed__) 
		print('If you use this code for a publication, please cite:')
		print('https://arxiv.org/abs/2211.14142')
		print('')
		time.sleep(1.0*__speed__) 
		print('For more info please see:')
		print('https://github.com/snesseris/Genetic-Algorithms')
		print('')
		time.sleep(1.0*__speed__) 
		print('Published under the GPLv3:')
		print('https://www.gnu.org/licenses/gpl-3.0.en.html')
		print('')
		time.sleep(1.0*__speed__) 
		print('----------------------------------------')
		print('')
		__logo__ = True 
	pass

def poly(x):
	return x

def cpl(x):  
	return x/(1+x)

def exp(x):   
    if isinstance(x, sym.Expr):
        return sym.exp(x)
    else:
        try:
            return np.longdouble(pow(2.718, np.longdouble(x)))
        except OverflowError:
            return np.finfo(np.longdouble).max
    
def polyxtox(x):
    if isinstance(x, sym.Expr):
        return sym.Pow(x,x)
    else:
        try:
            return np.longdouble(pow(np.longdouble(x), np.longdouble(x)))
        except OverflowError:
            return np.finfo(np.longdouble).max

# we do the trick below so that we can evaluate both symbolic and fast numeric expressions at one :D 
def trig1(x):
	if isinstance(x, sym.Expr):
		return sym.cos(x)
	else: 
		return mt.cos(x)
	
def pickgram(gram, x):
	pick = {
		'poly': poly,
		'polyxtox': polyxtox,
		'exp': exp,
		'cpl': cpl,  
		'trig1': trig1
	}
	chosen_gram = pick.get(gram,'poly')
	try:
		return chosen_gram(x)
	except:
		print("No correct grammar given")
		exit()
		pass

def makeakid(rangs, leng):
	kid0=[0]*leng
	for i in range(leng):
		kid0[i]=[rnd.uniform(rangs[0][0],rangs[0][1]), rnd.randrange(rangs[1][0],rangs[1][1]), rnd.uniform(rangs[2][0],rangs[2][1]),rnd.randrange(rangs[3][0],rangs[3][1])]
	return kid0

# This calculates the actual GA function (GA0) depending on the chromosomes and the prior
def make_function(x, kid, gram, func_prior):
	func0=0.
	for i in range(len(kid)):
		func0 += kid[i][0]*pow(pickgram(gram[kid[i][1]],kid[i][2]*x),kid[i][3])
	return func_prior(x,func0)

def mutation(kid, rangs):
	rep=[rnd.randrange(0,len(kid)),rnd.randrange(0,len(kid[0]))]
	kid1=copy.deepcopy(kid)
	if rep[1]==0:
		kid1[rep[0]][rep[1]]=rnd.uniform(rangs[0][0],rangs[0][1])
	elif rep[1]==1: 
		kid1[rep[0]][rep[1]]=rnd.randrange(rangs[1][0],rangs[1][1])
	elif rep[1]==2: 
		kid1[rep[0]][rep[1]]=rnd.uniform(rangs[2][0],rangs[2][1])
	elif rep[1]==3: 
		kid1[rep[0]][rep[1]]=rnd.randrange(rangs[3][0],rangs[3][1])
	return kid1

def crossover(kid_0, kid_1):
	lenc=rnd.randrange(1,len(kid_0))
	kids01=kid_0[:lenc]+kid_1[lenc:]
	kids02=kid_0[lenc:]+kid_1[:lenc]
	return [kids01,kids02]

def round_to_even(x):
	return round(x/2.)*2

def tournament(fit, tours):
	return sorted(rnd.sample(fit,tours))[-1][1]

def negativetournament(fit, tours):
	return sorted(rnd.sample(fit,tours))[0][1]

def partition(l, n):
    for i in range(0, len(l), n):
        yield l[i:i + n]

def find_losers(fit, maxkids, tour):
	pp = [0]*int(10*maxkids)
	for i in range(10*maxkids):
		pp[i]=negativetournament(fit,tour)
	return rnd.sample(list(set(pp)),maxkids)

def find_winners(fit, maxkids, tour):
	pp = [0]*int(10*maxkids)
	for i in range(10*maxkids):
		pp[i]=tournament(fit,tour)
	return rnd.sample(list(set(pp)),maxkids)

def delete_multiple_element(list, indices):
	res = []
	for idx, ele in enumerate(list):
	# checking if element not present in index list
		if idx not in indices:
			res.append(ele)
	return res

def read_chains(input):
	chain = []
	if os.path.isfile(input['resume_chains'][1]):
		if input['verbose']==True:
			print('Now reading old GA chain...')
		with (open(input['resume_chains'][1], "rb")) as openfile:
			while True:
				try:
					chain.append(pickle.load(openfile))
				except EOFError:
					break
	else:
		print('Fatal error reading GA chain!')
		print('The file probably does not exist.')
		print('Now exiting...')
		exit()
	return chain

def export_ini(file,dic):
	list_of_strings = [ f'{key} : {dic[key]}' for key in dic ]

	with open(file, "w") as text_file:
		text_file.write("Input options \n")
		[ text_file.write(f'{st}\n') for st in list_of_strings ]
	pass

def set_defaults(inp):
	for key in default_params:
		try:
			inp[key]
		except:
			print('Parameter',key,'is missing from the input.')
			print('Setting the value according to the defaults.')
			inp[key]=default_params[key]
	return inp

default_params={
'Nchains' : 4,
'Ngens' : 100,
'Npops' : 100,
'Nseed' : 100,
'ranges': [[-1,1], [0,2], [0, 2], [0, 10]], 
'length': 4, 
'depth' : 4, 
'selectionrate' : 0.3, 
'toursize' : 4, 
'crossoverrate' : 0.75, 
'mutationrate' : 0.3,
'verbose' :  True,
'save_chains' :  [False, 'chain'],
'resume_chains' :  [False, './chains/chain_seed_100_123.pic'],
'grammar' : ['poly'], 
'GA_prior' : 'No prior set'
}

def evolution(chi2f, input, gram): 
	# Here we check and set the defaults:
	set_defaults(input)
	
	# Check if the grammar is empty or not
	# This part needs to be improved...
	if not gram or type(gram) is not list:
		gram = ['poly']
		print('craaap')
		exit()

	# set the seed
	rnd.seed(input['Nseed'])
	
	# Print the seed number:
#	if input['verbose']==True:
#		print('Now running seed '+str(input['Nseed']))
	
	# Make a folder for the chains if it doesn't exist
	if not os.path.exists('./chains'):
		os.makedirs('./chains')
	
	# The filename in case we want to save the chain in binary (using pickle).
	# We always save the GA chains in the "chains" folder.
	cur_time = time.time()
	outfile='./chains/'+input['save_chains'][1]+'_seed_'+str(input['Nseed'])+'_'+str(cur_time)+'.pic'

	# The filename for the .ini file with the settings (just a txt).
	outfile_ini='./chains/'+input['save_chains'][1]+'_seed_'+str(input['Nseed'])+'_'+str(cur_time)+'.ini'

	# This saves the ini
	if input['save_chains'][0]==True:
		export_ini(outfile_ini,input)
	
	# The max number of kids (the variable name is a joke).
	maxchilds = round_to_even(input['selectionrate']*input['Npops'])
	
	# Allocate the lists for the chromosomes, the fitness and bestfit per generation.
	kids=[[0] * input['Npops'] for i in range(input['Ngens'])]
	fitness = [0]*input['Npops']
	bestfitperstep = [0]*input['Ngens']
	
	# Make the initial chromosomes of the population
	# either by reading old chain or making new one.

	if input['resume_chains'][0]==True:
		kids[0]=read_chains(input)[-1][0]
		if input['verbose']==True:
			print('Previous chain has been read!')
	else:
		for i in range(input['Npops']):
			kids[0][i]=makeakid(input['ranges'], input['length'])

	# Calculate the fitness, aka chi^2, of the initial population and sort the members.
	# Note that for historical reasons fitness~-chi^2 = 2*log-like
	for i in range(input['Npops']):
		fitness[i]=[-chi2f(kids[0][i],gram),i]
	fitness = sorted(fitness, key=lambda x: x[0])

	# This saves the chain
	if input['save_chains'][0]==True:
		chainfile=open(outfile, "wb")
		pickle.dump([kids[0],fitness],chainfile)

	#bestfitperstep[0] = round(fitness[-1][0],2)
	#bestfitperstep[0] = [-round(fitness[-1][0],2),kids[0][fitness[-1][1]]]
	bestfitperstep[0] = [-fitness[-1][0],kids[0][fitness[-1][1]]]

	# This is the main loop
	for j in range(1,input['Ngens']):

		# Do the selection, i.e. randomly pick some of the members of the population that will either be kicked out (=losers) or propagate (winners).
		losers  = list(find_losers(fitness,maxchilds,input['toursize']))
		winners = list(find_winners(fitness,maxchilds,input['toursize']))

		# A temporary placeholder for the generation
		kidst=[0]*maxchilds

		# These are the crossover and mutation operators
		for i in range(0,len(losers),2):
			if rnd.uniform(0,1) < input['crossoverrate']:
				cross=crossover(kids[j-1][winners[i]],kids[j-1][winners[i+1]])
				if rnd.uniform(0,1) < input['mutationrate']:
					kidst[i]=mutation(cross[0], input['ranges'])
					kidst[i+1]=mutation(cross[1], input['ranges'])
				else:
					kidst[i]=cross[0]
					kidst[i+1]=cross[1]
			else:
				kidst[i]=kids[j-1][losers[i]]
				kidst[i+1]=kids[j-1][losers[i+1]]
	
		#This is the new generation
		kids[j]=kidst+delete_multiple_element(kids[j-1], losers)

		# Find the bestfit in every step
		for i in range(input['Npops']):
			#fitness[i]=[-round(chi2f(kids[j][i],gram),2),i]
			fitness[i]=[-chi2f(kids[j][i],gram),i]
		fitness = sorted(fitness, key=lambda x: x[0])

		# This saves the chain
		if input['save_chains'][0]==True:
			pickle.dump([kids[j],fitness],chainfile)

		#Find best-fit in current generation
		#bestfitperstep[j] = round(fitness[-1][0],2)
		#bestfitperstep[j] = [-round(fitness[-1][0],2),kids[j][fitness[-1][1]]]
		bestfitperstep[j] = [-fitness[-1][0],kids[j][fitness[-1][1]]]
	
	# This closes the chain file
	if input['save_chains'][0]==True:
		chainfile.close()
	return bestfitperstep

###############################################################################

def derivative(f,a,method='central',h=0.0001):
    '''Compute the difference formula for f'(a) with step size h.
    Parameters
    ----------
    f : function
        Vectorized function of one variable
    a : number
        Compute derivative at x = a
    method : string
        Difference formula: 'forward', 'backward' or 'central'
            central: (f(a+h) - f(a-h))/2h
            forward: (f(a+h) - f(a))/h
            backward: (f(a) - f(a-h))/h       
    h : number
        Step size in difference formula
    Returns
    -------
    Derivative function
    '''
    if method == 'central':
        return (f(a + h) - f(a - h))/(2*h)
    elif method == 'forward':
        return (f(a + h) - f(a))/h
    elif method == 'backward':
        return (f(a) - f(a - h))/h
    else:
        raise ValueError("Method must be 'central', 'forward' or 'backward'.")

from scipy.optimize import minimize
from scipy.special import erf

def der_points(xdata, ydata, ydata_err):
	'''Compute the derivative of a set of data points
	Parameters
	----------
	xdata : array-like
		x data points
	ydata : array-like
		y data points
	ydata_err : array-like
		y data errors
	Returns
	-------
	Derivative points, error of the derivative points
	'''
	dx = np.diff(xdata)
	dy_dx = np.zeros_like(ydata)
	sigma_dy_dx = np.zeros_like(ydata)
	for i in range(1, len(xdata) - 1):
		dy_dx[i] = (ydata[i + 1] - ydata[i - 1]) / (xdata[i + 1] - xdata[i - 1])
		sigma_dy_dx[i] = np.sqrt((ydata_err[i + 1]**2 + ydata_err[i - 1]**2) / (xdata[i + 1] - xdata[i - 1])**2)

    # Handle boundaries with forward/backward differences
	dy_dx[0] = (ydata[1] - ydata[0]) / (xdata[1] - xdata[0])
	sigma_dy_dx[0] = np.sqrt((ydata_err[1]**2 + ydata_err[0]**2) / (xdata[1] - xdata[0])**2)
	dy_dx[-1] = (ydata[-1] - ydata[-2]) / (xdata[-1] - xdata[-2])
	sigma_dy_dx[-1] = np.sqrt((ydata_err[-1]**2 + ydata_err[-2]**2) / (xdata[-1] - xdata[-2])**2)
	return dy_dx, sigma_dy_dx

def compute_dfuncGA(X, Y, sY, funcGA):
    '''
    Computes the error function dfuncGA(z) for the GA functions, incorporating the uncertainty bands for the given data.
    Parameters:
        X : array-like
            Input data points.
        Y : array-like
            Observed data points.
        sY : array-like
            Standard deviations of the observed data points.
        funcGA : callable
            The function that computes the GA function.
    Returns:
        dfuncGA : callable
            A function that computes the uncertainty of the GA function.
    '''
    # Define the polynomial function parapoly
    def parapoly(x, a1, a2, a3):
        return a1 + a2 * x + a3 * x**2

    # Define chi2CI
    def chi2CI(params, X, Y, sY, funcGA):
        a1, a2, a3 = params
        CI = []
        for i in range(len(X)):
            term1 = 0.5 * (
                erf(1 / (np.sqrt(2) * sY[i])*(parapoly(X[i], a1, a2, a3) + funcGA(X[i]) - Y[i]))
              + erf(1 / (np.sqrt(2) * sY[i])*(parapoly(X[i], a1, a2, a3) - funcGA(X[i]) + Y[i]))
        		)
            CI.append(term1)
        return sum((np.array(CI) - erf(1/np.sqrt(2)))**2)

    # Define chi2GApluserr
    def chi2GApluserr(params, X, Y, sY, funcGA):
        a1, a2, a3 = params
        temp = [
            (Y[i] - (funcGA(X[i]) + parapoly(X[i], a1, a2, a3))) / sY[i]
            for i in range(len(X))
        ]
        return sum(temp[i]**2 for i in range(len(X)))

    # Define chi2tot
    def chi2tot(params, X, Y, sY, funcGA):
        return chi2CI(params, X, Y, sY, funcGA) + chi2GApluserr(params, X, Y, sY, funcGA)

    # Minimize chi2tot to find optimal parameters
    fminerr = minimize(
        chi2tot,
        [0.11, 0.11, 0.11],
        args=(X, Y, sY, funcGA),
        method='L-BFGS-B',
        options={'maxiter': 500}
    )
    a1, a2, a3 = fminerr.x

    # Define dfuncGA based on the optimized parameters for the parametric polynomial
    def dfuncGA(z):
        return parapoly(z, a1, a2, a3)

    return dfuncGA