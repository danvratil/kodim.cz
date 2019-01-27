from random import randint, choice, shuffle

subjects = [
  'Matematika', 
  'Fyzika', 
  'Chemie', 
  'Biologie', 
  'Dějepis', 
  'Společenské vědy',
  'Zeměpis', 
  'Informatika'
]

students = [
  'Martina Korbářová',
  'Filip Lacina',
  'Josef Vodseďálek',
  'Kateřina Novotná',
  'Marta Kinclová',
  'Lukáš Jurčík',
  'Arnošt Sas',
  'Alexey Opatrný',
  'Pavel Kysilka',
  'Miroslav Bednář',
  'Antonín Hlídek',
  'Lenka Jarošová',
  'Pavel Horák',
  'Vasil Lácha',
  'Ivana Dvořáková',
  'Marie Kortusová',
  'Jana Zbořilová',
  'Petr Valenta',
  'Hedvika Popelková',
  'Monika Dudysová',
  'Petr Tábor',
  'Marie Krejcárková'
]

data = []

for name in students:
  line = [name]
  day = choice(['po', 'út', 'st', 'čt', 'pá'])
  sub1 = choice(subjects)
  sub2 = choice(subjects)
  while sub1 == sub2:
    sub2 = choice(subjects)

  line.append(sub1)
  line.append(randint(1, 5))
  line.append(day)
  data.append(line)
  
  line = [name]
  line.append(sub2)
  line.append(randint(1, 5))
  line.append(day)
  data.append(line)

shuffle(data)

for line in data:
  print(','.join([str(r) for r in line]))



