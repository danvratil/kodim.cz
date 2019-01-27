from sys import argv
from random import shuffle

def parens(string):
  counter = 0
  for paren in string:
    if paren == '(':
      counter += 1
    else:
      counter -= 1
      if counter < 0:
        break

  return counter == 0

def genParens(n):
  if n == 0:
    return [""]
  
  start = genParens(n-1)
  result = []
  for run in start:
    result.append(run + '(')
    result.append(run + ')')

  return result

res = []
for n in range(2, 11, 2):
  res += genParens(n)

yes = []
no = []

for pars in res:
  if parens(pars):
    yes.append(pars)
  else:
    no.append(pars)

print(yes, no)