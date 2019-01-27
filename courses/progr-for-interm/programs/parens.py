from sys import argv

counter = 0
for paren in argv[1]:
  if paren == '(':
    counter += 1
  else:
    counter -= 1
    if counter < 0:
      break

if counter == 0:
  print('correct')
else:
  print('wrong')