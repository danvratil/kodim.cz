<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Do této chvíle jsme se v tomto kurzu učili spíše základy programování než čistokrevnou datovou analýzu. Bylo potřeba, abychom si nejdříve zažili pojmy ze programování jako jsou proměnné, funkce, podmínky, cykly, seznamy, slovníky a tak dále. Bez těchto znalostí a nástrojů bychom mnoho dat nezpracovali. Nyní, když už máme tuto technickou stárnku věci takříkajíc bezpečně zmáknutou, můžeme vykročit směrem k opravdové datové analýze.</p>

  <h2>Datová analýza</h2>
  <p>Pojem datový analýze je poměrně široký a není úplně jasné, jak jej definovat. Pod datovou analýzou se skrývá několik rolí a činností, a ne vždy jsou tyto prováděny jednou osobou. Patří sem například</p>

  <ul>
    <li>analýza dat,</li>
    <li>čištění dat,</li>
    <li>transformace dat,</li>
    <li>vizualizace dat,</li>
    <li>návrh datové architektury,</li>
    <li>strojové učení,</li>
    <li>datové modelování,</li>
    <li>práce s velkými daty (big data),</li>
    <li>a další...</li>
  </ul>

  <p>Užitečné je také vědět, proč jsme si pro práci s daty vybrali právě jazyk Python. Python není rozhodně jediný jazyk užitečný v tomto směru. Nejčastěji se však používá právě Python nebo také jazyk R, který je na rozdíl od Pythonu zaměřený výhrandně na práci s daty. Výběr jayzka závisí na několika faktorech:

  <ul>
    <li>use case, na kterém pracujeme,</li>
    <li>data, s jakými pracujeme,</li>
    <li>tým, ve kterém pracujeme,</li>
    <li>technologie vybrané firmy / projektu a jejich možnosti,</li>
    <li>dodatečné knihovny / moduly vybraného jazyka,</li>
    <li>objem dat, s jakými pracujeme.</li>
  </ul>

  <p>Python nám umožňuje pracovat s velkými datovými sadami, vizualizovat data pomocí různých modulů, podporuje mnoho modulů pro strojové učení a tak dále.</p>

  <h2>Pandas</h2>
  <p>Pandas je Python modul pro práci s daty. Umožňuje pracovat s daty v ucelené struktuře podobné relačním databázím. Díky mnoha zabudovaným funkcím umí rychle zpracovat velké množství dat, vyhodnocovat je a čistit a, čímž šetří datovému analytikovi mnoho času.</p>

  <p>Při práci s Pandasem se tedy nebudeme učit nové programovací techniky v Pythonu, ty už povětšinou známe. Budeme naopak objevovat co všechno Pandas umí a kolik práce nám dokáže ušetřit proti tomu, kdybychom používali na práci s daty čistý Python tak, jako jsme to dělali doposud.</p>

  <h3>Začátek práce s Pandasem</h3>
  <p>Pandas je externí balíček, který musíme nejdříve nainstalovat, podobně jako jsme to dělali minulou lekci s balíčkem <code>requests</code>. Napíšeme tedy na příkazovou řádku</p>

  <pre>pip3 install pandas</pre>

  <p>Jako vždy, pokud jsme na Windows, píšeme pouze</p>

  <pre>pip install pandas</pre>

  <p>Pandas je raletivně veliký balíček, který obsahuje mnoho modulů, takže instalace bude nějakou chvíli trvat. </p>

  <h2>Základní práce s DataFrame</h2>
  <p>DateFrame je v Pandasu tabulková datová struktura založená na podobném principu jako například uspořádání dat v Excelu nebo v databázi. Můžeme jej považovat za další datový typ vedle slovníků a seznamů. DataFrame obsahuje data ve sloupcích, kde každý sloupec může mít různý datový typ, tedy například číslo, desetinné číslo, řetězec, pravdivostní hodnota a jiné.</p>  

  <p>Pro první pokusy s DataFramy si stáhněte <a href="/download/python-data/countries.csv"> tabulku ve formátu CSV</a>, která obsahuje informace o zemích a státech po celé planetě. Jsou to data z roku 1986, takže se nedivte, že obsahují země jako Czechoslovakia. Ta této tabulce si můžeme vyzkoušíme základni metody pro práci s Pandasem. Nejdříve data načteme.</p>

<pre>&gt;&gt;&gt; import pandas
&gt;&gt;&gt; df = pandas.read_csv('countries.csv', encoding='utf-8')</pre>

  <p>Všechna data vypíšeme na obrazovku prostě tak, že zobrazíme přímo proměnnou <code>df</code>. Tato proměnná obsahuje náš načtený dataframe.</p>

<pre>&gt;&gt;&gt; df</pre>

  <p>V tomto souboru je však dat mnoho a tak se nám všechna nevejdou na obrazovku. První pět řádků tabulky vypíšeme takto</p>

<pre>&gt;&gt;&gt; df.head()</pre>

  <p>Posledních pět řádků:</p>

<pre>&gt;&gt;&gt; df.tail()</pre>

  <p>Kdybychom chtěli jiný počet než pět, předáme jej metodám <code>head()</code> nebo <code>tail()</code> jako parametr. Prvních a posledních deset řádků tak vypíšeme pomocí</p>

<pre>&gt;&gt;&gt; df.head(10)
&gt;&gt;&gt; df.tail(10)</pre>

  <p>Počet řádků a sloupců:</p>

<pre>&gt;&gt;&gt; df.shape</pre>

  <p>Názvy všech sloupců:</p>

<pre>&gt;&gt;&gt; df.columns</pre>

  <p>Souhrnné informace o celé tabulce: názvy sloupců, datové typy, počet neprázdných hodnot atd.</p>

<pre>&gt;&gt;&gt; df.info()</pre>

  <h3>Práce se sloupci</h3>
  <p>Přístup ke sloupci funguje podobně jako přístup ke klíčům ve slovníku. Sloupec s názvem 'area' tak vypíšeme takto:</p>

<pre>&gt;&gt;&gt; df['area']</pre>

  <p>Pokud chceme třeba jen prvních nebo posledních dvacet hodnot, píšeme</p>

<pre>&gt;&gt;&gt; df['area'].head(20)
&gt;&gt;&gt; df['area'].tail(20)</pre>

  <h3>Práce s řádky</h3>
  <p>Přístup k řádkům funguje stejně jako přístup k položkám seznamu. Druhý řádek tabulky tedy získáme takto</p>

<pre>&gt;&gt;&gt; df[1]</pre>

  <p>Můžeme používat všechny triky, které známe z indexování seznamů</p>

<pre>&gt;&gt;&gt; df[5:20]
&gt;&gt;&gt; df[5:]
&gt;&gt;&gt; df[:20]
</pre>



</%self:lesson>