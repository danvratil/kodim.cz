<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>V této lekci si ukážeme, jak zobrazovat různé druhy grafů pomocí modulu <code>matplotlib</code>. Také si předstvíme Jupyter notebook, díky kterému budeme schopni vytvářet hezké reporty z našich datových analýz.</p>

  <h2>První graf</h2>
  <p>Modul <code>matplotlib</code> nabízí ohromné množství možností pro vizualizaci dat. My zde probereme jen naprosté základy, aby nám lekce nenarostla to olbřímých rozměrů.</p>

  <p>Pokud chceme v Pythonu používat modul <code>matplotlib</code>, je potřeba jej již tradičným způsobem nainstalovat</p>

  <pre>$ pip3 install matplotlib</pre>

  <p>Pod windows jako obvykle stačí</p>

  <pre>$ pip install matplotlib</pre>

  <p>Nyní můžeme otevřít Python konzoli a náš zbrusu nový modul naimportovat. </p>

  <pre>&gt;&gt;&gt; import matplotlib.pyplot as plt</pre>

  <p>Pokud vše proběhlo jak má, můžeme vyzkoušet zobrazit naše první data. Bude to předpověď počasí na příští týden</p>

<pre>&gt;&gt;&gt; teploty = [2.5, 2.1, 3.2, 3.8, 3.4, 4.2, 5.0]
&gt;&gt;&gt; plt.plot(teploty)
&gt;&gt;&gt; plt.show()</pre>

  <p>Měli bychom obdržet následující graf</p>

  <div class="text-center">
    <img src="/img/python-data/teploty.png" alt="Graf teplot" />
  </div>

  <p>Nyní si s grafem můžeme vyhrát nastavit jeho vzezření přesně tak, jak potřebujeme. Všechny funkce na kreslení grafů obsahují nepřeberné možnosto nastavení, je proto dobré číst oficiální dokumentaci a projít se nějaký vhodný tutoriál na internetu, například přímo <a href="https://matplotlib.org/users/pyplot_tutorial.html">ten oficiální</a> k modulu <code>pyplot</code>.</p>

  <h2>Typy grafů</h2>
  <p>Základní typy grafů, které se hojně používaji mohou být například tyto:</p>

  <dl>
    <dt>Bodový graf</dt>
    <dd>Funkce <code>plot()</code>, <a href="https://matplotlib.org/api/_as_gen/matplotlib.pyplot.plot.html">oficiální dokumentace</a>.</dd>

    <dt>Sloupcový graf</dt>
    <dd>Funkce <code>bar()</code>, <a href="https://matplotlib.org/api/_as_gen/matplotlib.pyplot.bar.html">oficiální dokumentace</a>.</dd>

    <dt>Histogram</dt>
    <dd>Funkce <code>hist()</code>, <a href="https://matplotlib.org/api/_as_gen/matplotlib.pyplot.hist.html">oficiální dokumentace</a>.</dd>

    <dt>Krabicový graf</dt>
    <dd>Funkce <code>boxplot()</code>, <a href="https://matplotlib.org/api/_as_gen/matplotlib.pyplot.boxplot.html">oficiální dokumentace</a>.</dd>
  </dl>

  <h2>Histogramy</h2>
  <p>Histogram je důležitý typ grafu, který nám umožňuje zobrazit četnost hodnot z nějakého datasetu. Následující seznam obsahuje výšku 64 nádhoných mužů v České republice, měřeno v centimetrech.</p>

<pre>&gt;&gt;&gt; muzi = [
  179.3, 183.7, 181.4, 176.0, 183.6, 184.7, 163.4, 180.3, 
  167.5, 166.8, 173.5, 172.5, 173.0, 177.6, 176.0, 179.5, 
  182.6, 172.0, 183.2, 177.0, 176.2, 175.7, 174.3, 180.3, 
  184.9, 171.1, 182.3, 169.7, 181.3, 188.8, 176.8, 159.0, 
  180.3, 198.5, 185.8, 191.0, 170.9, 196.0, 183.3, 183.0, 
  189.9, 184.8, 184.0, 183.1, 184.0, 190.7, 191.7, 187.8, 
  177.5, 177.5, 189.2, 188.4, 195.0, 204.2, 180.2, 181.3, 
  178.2, 182.6, 172.1, 175.7, 180.7, 181.2, 165.0, 188.6
]</pre>

  <p>Pomocí histogramu zobrazíme četnosti jednotlivých hodnot.</p>

<pre>&gt;&gt;&gt; plt.hist(muzi)  
&gt;&gt;&gt; plt.show()</pre>

  <div class="text-center">
    <img src="/img/python-data/vysky-muzi.png" alt="Histogram výšek" />
  </div>

  <p>Histogram si pro přehlednost můžeme rozdělit do přihrádek (anglicky <em>bins</em>) po pěti centimetrech</p>

<pre>&gt;&gt;&gt; plt.hist(muzi, bins=[
  150, 155, 160, 165, 170, 175, 180, 185, 190, 195, 200, 205, 210
])  
&gt;&gt;&gt; plt.show()</pre>

  <div class="text-center">
    <img src="/img/python-data/vysky-muzi-bins.png" alt="Histogram výšek s přihrádkami" />
  </div>

  <h2>Krabicový graf</h2>
  <p>Krabicový graf graficky znázorňuje medián a kvartily naměřených hodnot. Můžeme si jej vyzkoušet na výškách mužů.</p>

  <pre>&gt;&gt;&gt; plt.boxplot(muzi, whis='range')
&gt;&gt;&gt; plt.show()</pre>

  <div class="text-center">
    <img src="/img/python-data/vysky-muzi-box.png" alt="Krabicový graf muži" />
  </div>

  <p>Krabicové grafy jsou užitečné předveším pro porovnání dvou různých měření. Přidejme si druhou datovou sadu představující naměřené výšky žen</p>

<pre>&gt;&gt;&gt; zeny = [
  172.0, 169.0, 166.8, 164.6, 172.7, 171.5, 167.0, 167.0, 
  168.3, 184.7, 166.0, 160.0, 168.8, 165.8, 173.5, 163.0, 
  168.9, 158.4, 166.4, 169.4, 174.2, 175.6, 167.2, 168.0, 
  171.5, 168.8, 168.9, 174.1, 169.0, 170.7, 156.3, 174.8, 
  169.1, 161.4, 172.5, 166.1, 171.5, 163.9, 164.5, 169.0, 
  168.5, 163.3, 169.5, 167.4, 175.5, 165.0, 166.6, 158.9, 
  164.5, 168.7, 161.6, 175.8, 179.0, 167.9, 161.1, 167.6, 
  165.9, 165.2, 176.0, 179.4, 160.1, 163.8, 177.7, 160.4
]</pre>

  <p>Nyní můžeme zobrazit krabicový graf porovnávající výšky obou pohlaví.</p>

  <pre>&gt;&gt;&gt; plt.boxplot([muzi, zeny], whis='range')
&gt;&gt;&gt; plt.show()</pre>

  <div class="text-center">
    <img src="/img/python-data/vysky-muzi-zeny-box.png" alt="Krabicový graf muži vs ženy" />
  </div>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  <%self:exrc title="Házení kostkami">
    <p>Mějme dvě hrací kostky, kterými vždy hodíme najednou a zaznamenáme součet bodů. Stáhněte si textový soubor <a href="/download/python-data/kostky.txt" download>kostky.txt</a>, který obsahuje 1000 takových nezávislých hodů. </p>

    <p>Načtěte tato data do Python seznamy a zobrazte histogram. Zvolte vhodné rozložení přihrádek a zodpovězte následující dotazy:</p>

    <ol>
      <li>Jaká je nejčastější hodnota, který na dvou kostkách padne?</li>
      <li>Je větší šance, že padne hodnota 12 než že padne hodnota 2?</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Call centrum">
    <p>V souboru <a href="/download/python-data/callcentrum.txt" download>callcentrum.txt</a> najdete něklik tisíc záznamů pro call centrum, které udávají časy mezi jednotlivými příchozími hovory v minutách a vteřinách. Načtěte tato data do seznamu v Pythonu. Časy převeďte na vteřiny a zobrazte jejich histogram a boxplot. Co lze z těchto dvou grafů vyčíst?</p>
  </%self:exrc>

  <%self:exrc title="Hurá na hory">
    <p>Následující data obsahují úhrnné množství sněhu (v cm) napadlé za každý rok pro posledních 50 let pro dva lyžarské resorty. První sloupec je rok, druhý jsou data pro resort Hora šílenství, třetí jsou data pro resort Prašné údolí.

    <pre>snih = [
  [1968, 480, 351],
  [1969, 462, 663],
  [1970, 443, 490],
  [1971, 518, 444],
  [1972, 537, 420],
  [1973, 446, 941],
  [1974, 446, 691],
  [1975, 450, 477],
  [1976, 356, 395],
  [1977, 381, 652],
  [1978, 345, 525],
  [1979, 430, 762],
  [1980, 266, 316],
  [1981, 533, 781],
  [1982, 471, 769],
  [1983, 407, 801],
  [1984, 526, 633],
  [1985, 391, 488],
  [1986, 361, 624],
  [1987, 470, 471],
  [1988, 506, 514],
  [1989, 333, 208],
  [1990, 462, 909],
  [1991, 438, 443],
  [1992, 364, 488],
  [1993, 452, 579],
  [1994, 484, 519],
  [1995, 460, 809],
  [1996, 465, 682],
  [1997, 431, 814],
  [1998, 463, 595],
  [1999, 460, 512],
  [2000, 503, 750],
  [2001, 462, 951],
  [2002, 429, 413],
  [2003, 405, 738],
  [2004, 477, 777],
  [2005, 385, 316],
  [2006, 368, 417],
  [2007, 513, 635],
  [2008, 448, 689],
  [2009, 525, 443],
  [2010, 427, 225],
  [2011, 460, 618],
  [2012, 417, 742],
  [2013, 517, 247],
  [2014, 466, 552],
  [2015, 523, 441],
  [2016, 422, 690],
  [2017, 420, 699]
]</pre>

  <p>Načtěte data do vašeho programu a použijte krabicový graf k porovnání sněhových srážek v obou resortech. Do kterého byste se vypravili příští rok na lyže a proč?</p>
  </%self:exrc>
</%self:exercises>

<%self:lesson>
  <h2>Jupyter Notebook</h2>

</%self:lesson>
