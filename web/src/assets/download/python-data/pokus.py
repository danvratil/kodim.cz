import pandas

def ubehnuto(text):
  text = text.replace(',', '.')
  casti = text.split()
  
  if(len(casti) == 2):
    return float(casti[0])
  else:
    return float(text[:4])


vaha = pandas.read_csv('vaha.txt', encoding='utf-8', sep='\t')

cisloDne = vaha['den'].str[3:].str.replace('.', '')
cisloDne = pandas.to_numeric(cisloDne)
den = vaha['den'].str[:3]

vaha['číslo dne'] = cisloDne
vaha['den'] = den

print(vaha['váha'].apply(ubehnuto))