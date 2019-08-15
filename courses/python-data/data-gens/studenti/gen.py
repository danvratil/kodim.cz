from datetime import date
from random import randint

with open('jmena.txt') as file:
  names = [line.strip() for line in file]

start = date(1980, 1, 1).toordinal()
end = date(1998, 1, 1).toordinal()

for name in names:
  ordinal = randint(start, end)
  birth = date.fromordinal(ordinal)
  month = birth.month
  if(name.startswith('x')):
    month += 50
    name = name[1:]

  suffix = randint(1000, 9900)  
  id = int(f'{birth.year % 100}{month:0>2d}{birth.day:0>2d}{suffix}')
  id += (11 - id % 11)
  id = str(id)
  id = f'{id[:6]}/{id[6:]}'
  print(f'{name.split()[0]}\t{name.split()[1]}\t{id}')