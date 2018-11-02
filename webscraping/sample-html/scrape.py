from requests_html import HTML
soubor = open('sample.html', encoding="utf8")
obsah = soubor.read()
soubor.close()
html = HTML(html=obsah)

for odstavec in html.find('a'):
  print(odstavec.attrs['href'])
