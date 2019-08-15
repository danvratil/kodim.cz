import pandas
import random
import sys

with open(sys.argv[1], encoding='utf-8') as file:
  names = [line.split() for line in file]

with open('jmena100.csv', encoding='utf-8') as file:
  firsts = [line.split(',')[0] for line in file]

data = [name for name in names if name[0] in firsts]
obory = [
  'počítačová grafika',
  'správa IT systémů',
  'teoretická informatika',
  'softwarové inženýrství',
  'webové inženýrství',
  'informatika a management',
  'číslicová technika'
]

with open(sys.argv[2], 'w') as file:
  for name in data:
    name.append(random.choice(obory))
    name.append(random.randint(1, 5))
    name.append(random.randint(1, 12))
    name.append(round(random.uniform(1, 3), 2))

    file.write(','.join([str(n) for n in name]))
    file.write('\n')


print(data)
