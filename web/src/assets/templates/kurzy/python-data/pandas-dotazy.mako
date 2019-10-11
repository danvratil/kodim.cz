<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Do této chvíle jsme se v tomto kurzu učili spíše základy programování než čistokrevnou datovou analýzu. Bylo potřeba, abychom si nejdříve zažili pojmy z programování jako jsou proměnné, funkce, podmínky, cykly, seznamy, slovníky a tak dále. Bez těchto znalostí a nástrojů bychom mnoho dat nezpracovali. Ovšem nyní, když už máme tuto technickou stránku věci takříkajíc bezpečně zmáknutou, můžeme vykročit směrem k opravdové datové analýze.</p>

  <h2>Datová analýza</h2>
  <p>Pojem datová analýza je poměrně široký a nemusí být úplně jasné, jak jej definovat. Pod datovou analýzou se skrývá několik rolí a činností, a ne vždy jsou tyto prováděny jednou osobou. Patří sem například</p>

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

  <p>Užitečné je také vědět, proč jsme si pro práci s daty vybrali právě jazyk Python. Python není rozhodně jediný jazyk užitečný v tomto směru. Existuje také jazyk R, který se na rozdíl od Pythonu zaměřuje čistě na práci s daty. Proto se v R některé úkoly při datové analýze řeší snáze, než v Pythonu. Na druhou stranu jazyk Python je proti R obecnější, má širší použití co se týče programování a proto se v něm naopak mnoho programátorských problémů řeší snáze než v R. Výběr toho pravého jazyka je tedy na zvážení pro každý jednotlivý projekt a zvažuje se

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
  <p>Pandas je Python modul pro práci s daty. Přidává tedy do Pythonu to, na co před tím analytici používali jazyk R. Umožňuje pracovat s daty v ucelené struktuře podobné relačním databázím. Díky mnoha zabudovaným funkcím umí rychle zpracovat velké množství dat, vyhodnocovat je a čistit, čímž šetří datovému analytikovi mnoho času.</p>

  <p>Při práci s Pandasem se tedy nebudeme učit nové programovací techniky v Pythonu, ty už povětšinou známe. Budeme naopak objevovat co všechno Pandas umí a kolik práce nám dokáže ušetřit proti tomu, kdybychom používali na práci s daty čistý Python tak, jako jsme to dělali doposud.</p>

  <h3>Začátek práce s Pandasem</h3>
  <p>Pandas je externí balíček, který musíme nejdříve nainstalovat, podobně jako jsme to dělali minulou lekci s balíčkem <code>requests</code>. Napíšeme tedy na příkazovou řádku</p>

  <pre>pip3 install pandas</pre>

  <p>Jako vždy, pokud jsme na Windows, píšeme pouze</p>

  <pre>pip install pandas</pre>

  <p>Pandas je relativně veliký balíček, který obsahuje mnoho modulů, takže instalace bude nějakou chvíli trvat. </p>

  <h2>Základní práce s DataFrame</h2>
  <p>V Pandasu se povětšinou pracuje s datovou strukturou zvanou DataFrame. Je to tabulková datová struktura založená na podobném principu jako například uspořádání dat v Excelu nebo v databázi. Můžeme jej považovat za další datový typ vedle slovníků a seznamů. DataFrame obsahuje data ve sloupcích, kde každý sloupec může mít různý datový typ, tedy například číslo, desetinné číslo, řetězec, pravdivostní hodnota a jiné.</p>  

  <p>Abychom si práci s DataFrame vyzkoušeli, budeme používat následující cvičnou tabulku českých měst, která provozují tramvajovou dopravu.</p>

  <table>
    <thead>
      <th>mesto</th>
      <th>kraj</th>
      <th>obyvatel</th>
      <th>linek</th>
      <th>vymera</th>
    </thead>
    <tbody>
      <tr>
        <td>brno</td><td>JHM</td><td>379 527</td><td>22</td><td>230.22</td>
      </tr>
      <tr>
        <td>liberec</td><td>LBK</td><td>103 979</td><td>6</td><td>106.09</td>
      </tr>
      <tr>
        <td>litvinov</td><td>ULK</td><td>24 143</td><td>5</td><td>40.70</td>
      </tr>
      <tr>
        <td>most</td><td>ULK</td><td>66 644</td><td>5</td><td>86.94</td>
      </tr>
      <tr>
        <td>olomouc</td><td>OLK</td><td>100 494</td><td>7</td><td>103.36</td>
      </tr>
      <tr>
        <td>ostrava</td><td>MSK</td><td>290 450</td><td>15</td><td>214.23</td>
      </tr>
      <tr>
        <td>plzen</td><td>PLK</td><td>170 936</td><td>3</td><td>137.65</td>
      </tr>
      <tr>
        <td>praha</td><td>PHA</td><td>1 294 513</td><td>24</td><td>496.00</td>
      </tr>
    </tbody>
  </table>

  <h3>Načítání dat</h3>

  <p>Tabulku výše si můžete stáhnout ve <a href="/download/python-data/mesta.csv" download>formátu CSV</a>. Abychom si ji mohli prohlédnout jako DataFrame, otevřeme si nejprve Python konzoli, importujeme modul <code>pandas</code> a načteme CSV soubor pomocí funkce <code>read_csv().</code></p> 
  
<pre>&gt;&gt;&gt; import pandas
&gt;&gt;&gt; mesta = pandas.read_csv('mesta.csv', index_col='mesto', encoding='utf-8')</pre>

  <p>Celý DataFrame vypíšeme na obrazovku prostě tak, že zobrazíme přímo proměnnou <code>mesta</code>.</p>

<pre>&gt;&gt;&gt; mesta
         kraj   obyvatel  linky  vymera
mesto                                  
brno      JHM    379 527     22  230.22
liberec   LBK    103 979      6  106.09
litvinov  ULK     24 143      5   40.70
most      ULK     66 644      5   86.94
olomouc   OLK    100 494      7  103.36
ostrava   MSK    290 450     15  214.23
plzen     PLK    170 936      3  137.65
praha     PHA  1 294 513     24  496.00</pre>

  <p>Pandas nabízí kromě funkce <code>read_csv()</code> také funkci pro čtení formátu JSON <code>read_json()</code> nebo dokonce funkci pro čtení přímo Excelovových tabulek <code>read_excel()</code>.</p>

  <h3>Základní informace o tabulce</h3>

  <p>Jakmile máme tabulku načtenou, budeme o ní chtít vědět nějaké úplně základní údaje. K tomu nám pomůže metoda <code>info()</code>, která vrací souhrnné informace o celé tabulce: názvy sloupců, datové typy, počet neprázdných hodnot atd.</p>

<pre>&gt;&gt;&gt; mesta.info()
Data columns (total 4 columns):
kraj        8 non-null object
obyvatel    8 non-null object
linky       8 non-null int64
vymera      8 non-null float64
dtypes: float64(1), int64(1), object(2)
memory usage: 320.0+ bytes</pre>

  <p>Počet řádků a sloupců můžeme získat z vlastnosti <code>shape</code>:</p>

<pre>&gt;&gt;&gt; mesta.shape
(8, 4)</pre>

  <p>Názvy všech sloupců pak z vlastnosti <code>columns</code>:</p>

<pre>&gt;&gt;&gt; mesta.columns
Index(['kraj', 'obyvatel', 'linky', 'vymera'], dtype='object')</pre>

  <h2>Základní selekce</h2>

  <p>Abychom dokázali s naší tabulkou manipulovat, potřebujeme dobře rozumět tomu, jak vlastně Pandas DataFrame funguje. Pomůže nám k tomu následující obrázek, který ukazuje, jak náš DataFrame vypadá poté, co jsme jej načetli z CSV.</p>

  <div class="text-center my-5">
    <img src="/img/python-data/dataframe.svg" alt="Pandas DataFrame" class="img-fluid" />
  </div>
  
  <p>Do začátku je nejdůležitější si uvědomit, že Pandas pracuje nejen se jmény sloupců, ale také se <strong>jmény řádků</strong>. Jménům řádků se v Pandasu říká <em>index</em>. Již při načtení našeho DataFrame z CSV jsme zvolili, že řádky se budou jmenovat podle názvů měst (použili jsme parametr <code>index_col</code>). Zvolili jsme tedy sloupec <code>mesto</code> jako náš index. Díky tomu máme jednoznačné názvy sloupců i řádků a můžeme tak vytvářet různé dotazy na data z tabulky.</p>

  <h3>Výběr podle jmen řádků a sloupců</h3>

  <p>K výběru dat pomocí jmen řádků a sloupců slouží metoda <code>loc[]</code>. Je to trochu zvláštní metoda, neboť se volá pomocí hranatých závorek namísto kulatých. Jakmile tuto divnou věc s větším či menším vzdorem přijmeme, můžeme pomocí ní zkusit vybrat z tabulky jeden řádek tak, že napíšeme do těchto hranatých závorek přímo jeho název.</p>

<pre>&gt;&gt;&gt; mesta.loc['brno']
kraj            JHM
obyvatel    379 527
linky            22
vymera       230.22
Name: brno, dtype: object</pre>

  <p>Chceme-li řádků více, stačí jejich jména napsat jako seznam.</p>
<pre>&gt;&gt;&gt; mesta.loc[['brno', 'praha', 'ostrava']]
        kraj   obyvatel  linky  vymera
mesto                                 
brno     JHM    379 527     22  230.22
praha    PHA  1 294 513     24  496.00
ostrava  MSK    290 450     15  214.23</pre>

  <p>Všimněte si, že když jsme chtěli pouze jeden řádek, vypsal se nám výsledek jinak orientovaný, než když jsme chtěli řádků více. Je to proto, že pokud dáme metodě <code>loc[]</code> jméno řádku přímo, vrátí nám takzvanou <em>sérii</em>, což je jiný datový typ než DataFrame. Pokud chceme DataFrame i v případě jednoho řádku, musíme dotaz zadat jako jednoprvkový seznam.</p>

<pre>&gt;&gt;&gt; mesta.loc[['brno']]
      kraj obyvatel  linky  vymera
mesto                             
brno   JHM  379 527     22  230.22</pre>

  <p>Metoda <code>loc[]</code> dokonce umožňuje pro výběr řádků použít rozsah od:do.</p>

<pre>&gt;&gt;&gt; mesta.loc['most':'plzen']
        kraj obyvatel  linky  vymera
mesto                               
most     ULK   66 644      5   86.94
olomouc  OLK  100 494      7  103.36
ostrava  MSK  290 450     15  214.23
plzen    PLK  170 936      3  137.65</pre>

  <p>S rozsahy uvnitř <code>loc[]</code> můžeme pracovat podobně jako jsme byli zvyklí u číselných rozsahů při výběru hodnot z obyčejných seznamů. Můžeme tak například vybrat všechny řádky od města most až do konce tabulky</p>

<pre>&gt;&gt;&gt; mesta.loc['most':]</pre>

  <p>nebo všechna města od začátku až po Plzeň</p>

<pre>&gt;&gt;&gt; mesta.loc[:'plzen']</pre>

  <p>Metodu <code>loc[]</code> můžeme také použít k výběru podle jmen sloupců. Stačí dotaz na sloupce zadat jako druhý parametr metody. Vypišme například počty obyvatel všech měst mezi Mostem a Plzní</p>

<pre>&gt;&gt;&gt; mesta.loc['most':'plzen', 'obyvatel']
mesto
most        66 644
olomouc    100 494
ostrava    290 450
plzen      170 936</pre>

  <p>Při výběru sloupců podle jmen můžeme použít úplně stejných triků jako při výběru řádků. Vyzkoušejte si následující následující dotazy:</p>

  <p>Vyber počty obyvatel a počty linek pro všechna města až po Plzeň.</p>

<pre>&gt;&gt;&gt; mesta.loc[:'plzen', ['obyvatel', 'linky']]</pre>  

  <p>Vyber všechny sloupce až po linky pro všechna města počínaje Mostem.</p>

<pre>&gt;&gt;&gt; mesta.loc['most':, :'linky']</pre>  

  <p>Vyber všechny řádky pro sloupce od linek dál.</p>

  <pre>&gt;&gt;&gt; mesta.loc[:, 'linky':]</pre>  

  <h3>Výběr podle pozic řádků a sloupců</h3>

  <p>Při práci s většími tabulkami se nám může snadno stát, že nechceme vybírat sloupce nebo řádky podle jejich jmen, nýbrž podle jejich pozic. K tomu slouží metoda <code>iloc[]</code>. Tato metoda se používá velmi podobně jako metoda <code>loc[]</code> s tím rozdílem, že pro výběr použivá právě pozice, nikoliv jména. Pandas čísluje pozice řádků a sloupců uvnitř DataFramu stejně, jak jsme zvyklí, tedy vždy od nuly. Můžeme proto rovnou vyzkoušet několik dotazů.</p>

  <p>Řádek na pozici 3 jako série.</p>
<pre>&gt;&gt;&gt; mesta.iloc[3]
kraj           ULK
obyvatel    66 644
linky            5
vymera       86.94
Name: most, dtype: object</pre>  

  <p>Řádek na pozici 3 jako DataFrame:</p>
<pre>&gt;&gt;&gt; mesta.iloc[[3]]
      kraj obyvatel  linky  vymera
mesto                             
most   ULK   66 644      5   86.94</pre>  

  <p>Řádky na pozicích 1, 3 a 5:</p>
<pre>&gt;&gt;&gt; mesta.iloc[[1, 3, 5]]
        kraj obyvatel  linky  vymera
mesto                               
liberec  LBK  103 979      6  106.09
most     ULK   66 644      5   86.94
ostrava  MSK  290 450     15  214.23</pre>

  <p>Řádky 1 až 4, sloupce od 2 nahoru:</p>
<pre>&gt;&gt;&gt; mesta.iloc[1:4, 2:]
          linky  vymera
mesto                  
liberec       6  106.09
litvinov      5   40.70
most          5   86.94</pre>

  <p>Metoda <code>iloc[]</code> je tedy velmi podobá metodě <code>loc[]</code>. Je zde však jeden významný rozdíl. Pokud používáme uvnitř <code>iloc[]</code> rozsahy (například <code>2:5</code>), horní hranice je <strong>vždy vyjma</strong>, tedy řádek 5 nebude do výberu zahrnut. Pokud však použjeme rozsah v metodě <code>loc[]</code>, bude horní mez <strong>vždy včetně</strong>. Takže rozsah <code>'liberec':'most'</code> bude obsahovat i řádek se jménem most.</p>

  <h2>Ukládání dat</h2>
  
  <p>Podobně jako jsme měli funkce <code>read_csv</code>, <code>read_json</code> a <code>read_excel</code> pro čtení dat, máme také metody pro zápis dat. Pomocí metod <code>to_csv</code> a <code>to_json</code> můžeme celý DataFrame zapsat do CSV nebo JSONu. Stačí zadat název souboru</p>

<pre>
&gt;&gt;&gt; mesta.to_csv('data.csv')
</pre>

  <p>Užitečná je také metoda <code>to_html</code>, která zapíše DataFrame jako webovou stránku. Zkuste napsat</p>

<pre>
&gt;&gt;&gt; mesta.to_html('data.html')
</pre>

  <p>a otevřít soubor <code>data.html</code> v prohlížeči. Takto si můžete tabulku prohlédnout hezky naformátovanou.</p>

</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Česká jména">
    <p>Stáhněte si soubor <a href="/download/python-data/jmena100.csv" download>jmena100.csv</a>, který obsahuje tabulku 100 nejpoužívanějších českých křestních jmen seřazených od nejpoužívanějšího k nejméně používanému. Otevřete Python konzoli a pomocí Pandasu načtěte tuto tabulku jako DataFrame. Jako index zvolte sloupec s názvem 'jméno'.</p>
    
    <p>Datový soubor obsahuje následující sloupečky</p>

    <ul>
      <li><strong>jméno</strong> - křestní jméno</li>
      <li><strong>četnost</strong> - počet obyvatel ČR mající toto jméno</li>
      <li><strong>věk</strong> - průměrný věk nositelů jména</li>
      <li><strong>pohlaví</strong> - zda je jméno mužské či ženské</li>
      <li><strong>svátek</strong> - datum, kdy má dané jméno svátek</li>
      <li><strong>původ</strong> - původ jména</li>
    </ul>
    
     Vyřešte následující úkoly.</p>

    <ol>
      <li>Vypište na konzoli informace o jménu Martin.</li>
      <li>Vypište na konzoli informace pro jména Martin, Zuzana a Josef.</li>
      <li>Vypište na konzoli informace o všech nejčastějších jménech až po Martina.</li>
      <li>Vypište pouze průměrné věky osob mající jména mezi Martinem a Terezou.</li>
      <li>Vypište průměrný věk a původ pro všechna jména od Libora dolů.</li>
      <li>Vypište sloupečky mezi věkem a původem pro všechna jména v tabulce..</li>
    </ol>
  </%self:exrc>

</%self:exercises>

<%self:lesson>
  <h2>Index</h2>
  <p>Když jsme prve načítali tabulku měst do DataFramu příkazem </p>

<pre>&gt;&gt;&gt; mesta = pandas.read_csv('mesta.csv', index_col='mesto', encoding='utf-8')</pre>

  <p>zvolili jsme, že indexem řádků mají být jména měst. Pokud však tabulku načteme bez toho, abychom specifikovali index, Pandas nám vytvoří číselný index automaticky. Je to něco podobného jako číslování řádků v Excelu. Napišme tedy příkaz pro načtení tabulky takto:</p>

<pre>&gt;&gt;&gt; mesta = pandas.read_csv('mesta.csv', encoding='utf-8')</pre>

  <p>Načtená tabulka poté bude vypadat následovně</p>

  <table>
    <thead>
      <th></th>
      <th>mesto</th>
      <th>kraj</th>
      <th>obyvatel</th>
      <th>linek</th>
      <th>vymera</th>
    </thead>
    <tbody>
      <tr>
        <td><strong>0</strong></td><td>brno</td><td>JHM</td><td>379 527</td><td>22</td><td>230.22</td>
      </tr>
      <tr>
        <td><strong>1</strong></td><td>liberec</td><td>LBK</td><td>103 979</td><td>6</td><td>106.09</td>
      </tr>
      <tr>
        <td><strong>2</strong></td><td>litvinov</td><td>ULK</td><td>24 143</td><td>5</td><td>40.70</td>
      </tr>
      <tr>
        <td><strong>3</strong></td><td>most</td><td>ULK</td><td>66 644</td><td>5</td><td>86.94</td>
      </tr>
      <tr>
        <td><strong>4</strong></td><td>olomouc</td><td>OLK</td><td>100 494</td><td>7</td><td>103.36</td>
      </tr>
      <tr>
        <td><strong>5</strong></td><td>ostrava</td><td>MSK</td><td>290 450</td><td>15</td><td>214.23</td>
      </tr>
      <tr>
        <td><strong>6</strong></td><td>plzen</td><td>PLK</td><td>170 936</td><td>3</td><td>137.65</td>
      </tr>
      <tr>
        <td><strong>7</strong></td><td>praha</td><td>PHA</td><td>1 294 513</td><td>24</td><td>496.00</td>
      </tr>
    </tbody>
  </table>

  <p>Všimněte si nového prvního sloupečku, který obsahuje index vytvořený Pandasem. Vzhledem k tomu, že index je nyní číselný, může být trochu matoucí rozdíl mezi použitím metod <code>loc[]</code> a <code>iloc[]</code>. Metoda <code>loc[]</code> vždycky vždycky vždycky používá pro výběr dat <strong>jména</strong> řádků (tedy index). V předchozích příkladech byla jména řádků názvy měst, nyní jsou jména řádků obyčejná čísla. Index je v tedy v tomto případě stejný, jako pozice řádků. Dejme tomu, že chceme získat všechna města od začátku tabulky po město Most. V předchozím příkladu, kde indexem byly názvy měst, bychom psali </p>

<pre>&gt;&gt;&gt; mesta.loc[:'most']</pre>

  <p>Nyní, když máme index číselný píšeme</p>

<pre>&gt;&gt;&gt; mesta.loc[:3]</pre>

  <p>V tomto případě tedy volání <code>loc[]</code> vypadá stejně jako <code>iloc[]</code>. Rodíl je však v tom, že rozsahy v indexu vždy počítají horní mez <strong>včetně</strong>, kdežto rozsahy v pozicích počítají horní mez <strong>vyjma</strong>. Kdybychom tedy chtěli stejná data pomocí metody <code>iloc[]</code>, psali bychom</p>

<pre>&gt;&gt;&gt; mesta.iloc[:4]</pre>

  <h2>Dotazy jako v SQL</h2>
  <p>Kromě metod <code>loc[]</code> a <code>iloc[]</code> umožňuje Python DataFrame psát dotazy nad tabulkami podobným způsobem, jako se píší dotazy v jazyce SQL. Stačí použít obyčejné hranaté závorky jako je známe z práce se seznamy.</p>

  <p>Aby následující příklady byly co nejvíc srozumitelné, budeme uvádět i jejich ekvivalent v SQL. Můžeme si představovat, že máme tabulku měst uloženou nejen jako DataFrame v Pythonu ale také jako tabulku v SQL databázi. </p>

  <h3>Výběr sloupečků</h3>

  <div class="row">
    <p class="col-md-2 text-right"><strong>Dotaz:</strong></p>
    <p class="col-md-10">Sloupečky <code>linky</code> a <code>obyvatel</code>.</pre>
  </div>

  <div class="row">
    <p class="col-md-2 text-right">SQL:</p>
    <pre class="col-md-10">SELECT linky, obyvatel FROM mesta;</pre>
  </div>
  
  <div class="row">
    <p class="col-md-2 text-right">Pandas:</p>
    <pre class="col-md-10">mesta[['linky', 'obyvatel']]</pre>
  </div>
  
  <div class="row">
    <p class="col-md-2 text-right">Výsledek:</p>
<pre class="col-md-10">          linky   obyvatel
mesto                     
brno         22    379 527
liberec       6    103 979
litvinov      5     24 143
most          5     66 644
olomouc       7    100 494
ostrava      15    290 450
plzen         3    170 936
praha        24  1 294 513</pre>
  </div>

  <h3>Podmínky</h3>
  
  <div class="row">
    <p class="col-md-2 text-right"><strong>Dotaz:</strong></p>
    <p class="col-md-10">Všechny sloupečky pro města s více než deseti linkami.</pre>
  </div>

  <div class="row">
    <p class="col-md-2 text-right">SQL:</p>
    <pre class="col-md-10">SELECT * FROM mesta WHERE linky > 10;</pre>
  </div>
  
  <div class="row">
    <p class="col-md-2 text-right">Pandas:</p>
    <pre class="col-md-10">mesta[mesta['linky'] > 10]</pre>
  </div>
  
  <div class="row">
    <p class="col-md-2 text-right">Výsledek:</p>
<pre class="col-md-10">        kraj   obyvatel  linky  vymera
mesto                                 
brno     JHM    379 527     22  230.22
ostrava  MSK    290 450     15  214.23
praha    PHA  1 294 513     24  496.00</pre>
  </div>

  <div class="row">
    <p class="col-md-2 text-right"><strong>Dotaz:</strong></p>
    <p class="col-md-10">Sloupečky 'kraj' a 'vymera' pro města s rozlohou mezi 100 a 200 km<sup>2</sup>.</pre>
  </div>

  <div class="row">
    <p class="col-md-2 text-right">SQL:</p>
    <pre class="col-md-10">SELECT kraj, vymera FROM mesta WHERE vymera >= 100 and vymera <= 200;</pre>
  </div>
  
  <div class="row">
    <p class="col-md-2 text-right">Pandas:</p>
    <pre class="col-md-10">mesta[(mesta['vymera'] >= 100) & (mesta['vymera'] <= 200)][['kraj', 'vymera']]
</pre>
  </div>
  
  <div class="row">
    <p class="col-md-2 text-right">Výsledek:</p>
<pre class="col-md-10">        kraj  vymera
mesto               
liberec  LBK  106.09
olomouc  OLK  103.36
plzen    PLK  137.65</pre>
  </div>
  
  <p>V posledním dotazu už je taková přehršel hranatých a kulatých závorek, že by z toho znejistěl i kovaný Pythonista. Můžeme si situaci malinko ulehčit tím, že si obsah hranatých závorek nejdříve uložíme do proměnné a až pak dotaz vyhodnotíme</p>

<pre>&gt;&gt;&gt; radky = (mesta['vymera'] >= 100) & (mesta['vymera'] <= 200)
&gt;&gt;&gt; sloupce = ['kraj', 'vymera']
&gt;&gt;&gt; vyber = mesta[radky][sloupce]
</pre>

  <p>Všimněte si, že výsledkem každého dotazu je opět DataFrame, který jsme si takto uložili do proměnné <var>vyber</var>. Nad touto proměnnou pak můžeme vesele spouštět jakékoliv další dotazy.</p>

  <h3>Logické operátory v podmínkách</h3>
  <p>Před chvílí jsme viděli použití operátoru <code>&amp;</code>, který v dotazech slouží jako logická spojka AND. Můžeme však také použít operátor <code>|</code>, který představuje logické OR. Chtějme například počty linek všech měst z Jihomomoravského nebo Olomouckéko kraje</p>

<pre>&gt;&gt;&gt; mesta[(mesta['kraj'] == 'JHM') | (mesta['kraj'] == 'OLK')][['linky']]
         linky
mesto         
brno        22
olomouc      7</pre>

  <p>Snadno se však může stát, že budeme chtít krajů více, například Jihomoravský, Olomoucký a Ústecký. Takový zápis by byl pomocí operátoru OR nepraktický. Zde můžeme použít metodu <code>isin()</code>, která vrací <code>True</code>, pokud se hodnota nechází v zadaném seznamu.</p>

<pre>&gt;&gt;&gt; mesta[mesta['kraj'].isin(['JHM', 'ULK', 'OLK'])][['linky']]
          linky
mesto          
brno         22
litvinov      5
most          5
olomouc       7</pre>

  <p>Poslední operátor, který můžeme v podmínkách dotazů použít vypadá takto <code>~</code> a představuje negaci. Můžeme tak vypsat linky všech měst, které se nenacházeji v jednom ze zadaných krajů:</p>

<pre>&gt;&gt;&gt; mesta[~mesta['kraj'].isin(['JHM', 'ULK', 'OLK'])][['linky']]
         linky
mesto         
liberec      6
ostrava     15
plzen        3
praha       24</pre>
  
  <p>Kombinací výše uvedených operátorů můžeme snadno vytvořit velmi komplikované dotazy. Vzhledem k tomu, že výsledky všech dotazů jsou opět DataFramy, můžeme si výsledky dotazů ukládat do proměnných a pouštět na nich další dotazy až se dostaneme ke kýženému výsledku.</p>

  <h2>Převod mezi DataFrame a seznamy</h2>

  <p>Python DataFrame je obsáhlý a komplikovaný objekt. Pokud s ním chceme pracovat, musíme znát spoustu triků a metod, které nám Pandas poskytuje. Občas se nám tak může hodit převést DataFrame na prachobyčejný Pythonovský seznam seznamů, což je teritorium, ve kterém jsme si po mnoha lekcích Pythonu zatím mnohem jistější než v Pandasu. K takovému převodu nám poslouží jednoduchý příkaz.</p>

<pre>&gt;&gt;&gt; data = mesta.values.tolist()
&gt;&gt;&gt; data
[['JHM', '379 527', 22, 230.22], ['LBK', '103 979', 6, 106.09], ['ULK', '24 143', 5, 40.7], ['ULK', '66 644', 5, 86.94], ['OLK', '100 494', 7, 103.36], ['MSK', '290 450', 15, 214.23], ['PLK', '170 936', 3, 137.65], ['PHA', '1 294 513', 24, 496.0]]</pre>

  <p>Ve výsledných seznamech nám ovšem chybí názvy měst. Potíž je v tom, že index se v Pandasu nebere jako součást dat. Pokud chceme index vrátit do původního stavu a mít ho jako automaticky generovaná čísla řádků, můžeme použít metodu <code>reset_index()</code>. S její pomocí pak už dokážeme dostat z DataFramu čistá data takto</p>

  <pre>&gt;&gt;&gt; data = mesta.reset_index().values.tolist()</pre>

  <p>Můžeme však postupovat i obráceně a vyrobit DataFrame ze seznamu seznamů. Pokud však nechceme názvy sloupců jako čísla, je třeba názvy dodat.</p>

  <pre>&gt;&gt;&gt; mesta2 = pandas.DataFrame(data, columns=['mesto', 'kraj', 'obyvatel', 'linky', 'vymera'])</pre>

</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  
  <%self:exrc title="Česká jména podruhé">
    <p>Budeme pokračovat s daty o českých jménech z předchozího cvičení. Minule jsme používali sloupeček se jmény jako index. Tentokrát načtěte soubor se jmény tak, aby Pandas vyrobil index číselný. Proveďte následující dotazy</p>

    <ol>
      <li>Vypište všechny řádky se jmény, jejichž nositelé mají průměrný věk vyšší než 60. </li>
      <li>Vypište pouze jména z těch řádků, kde četnost je mezi 80 000 a 100 000. </li>
      <li>Vypište jména a četnost pro jména se slovanským nebo hebrejským původem. Kolik takových jmen je?</li>
      <li>Vypište všechna jména, která mají svátek prvních 7 dní v únoru.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Původ jmen">
    <p>Napište program, který</p>

    <ol>
      <li>Načte naše data o českých jménech.</li>
      <li>Vytvoří z něj DataFrame, který obsahuje jména a četnosti jmen, která nejsou ani hebrejského, ani aramejského ani slovanského původu. </li>
      <li>Převede tento DataFrame na obyčejné Python seznamy. Pomocí chroustání seznamů spočítá součet všech četností těchto jmen.</li>
      <li>Na výstup vypíše, jaké procentuální zastoupení mají tato jména v celé ČR. Podle odhadů OSN má k osmému květnu 2019 Česká Republika 10 629 798 obyvatel.</li> 
    </ol>
  </%self:exrc>
</%self:exercises>


<%self:lesson>
  <h2>Čtení na doma</h2>

  <p>Na konci této lekce už nejspíš máte základní intuici o tom, co to Pandas je a k čemu asi tak slouží. Abychom mohli pokročit dále, je potřeba si některé detaily fungování Pandasu objasnit více do hloubky, čímž předejdeme pozdějšímu zmatení.</p>

  <h3>Série</h3>
  <p>DataFrame není jediná datová struktura, se kterou Pandas pracuje. Už během lekce jsem malinko narazili na takzvané série (anglicky <em>Series</em>). Sérii si můžeme představit jako seznam hodnot s indexem. Vyrobit sérii není nic těžkého. Mějme například obyčejný seznam značek aut </p>

<pre>&gt;&gt;&gt; brands = ['subaru', 'toyota', 'honda', 'ford', 'mazda', 'tesla']</pre>

  <p>Z tohoto seznamu velmi snadno vyrobíme sérii</p>

<pre>&gt;&gt;&gt; sbrands = pandas.Series(brands)
&gt;&gt;&gt; sbrands
0    subaru
1    toyota
2     honda
3      ford
4     mazda
5     tesla
dtype: object</pre>

  <p>Všimněte si, že nám Pandas automaticky vyrobil index. To je jedna z hlavních věcí, které odlišují Série od klasických seznamů. Série má vždy index. Lze si ji tak představit jako jeden sloupeček nějaké tabulky. </p>

  <p>Pokud by se nám při výrobě série nelíbil automaticky generovaný index, můžeme si specifikovat index vlastní. Dejme tomu, že bychom chtěli číslovat od jedničky místo od nuly.</p>

<pre>&gt;&gt;&gt; sbrands = pandas.Series(brands, [1, 2, 3, 4, 5, 6])
&gt;&gt;&gt; sbrands
1    subaru
2    toyota
3     honda
4      ford
5     mazda
6     tesla
dtype: object</pre>

  <p>Můžeme samozřejmě specifikovat i jiný index než číselný.</p>

<pre>&gt;&gt;&gt; sbrands = pandas.Series(brands, ['a', 'b', 'c', 'd', 'e', 'f'])
&gt;&gt;&gt; sbrands
a    subaru
b    toyota
c     honda
d      ford
e     mazda
f     tesla
dtype: object</pre>

  <p>Dokonce můžeme sérii vyrobit přímo ze slovníku.</p>

<pre>&gt;&gt;&gt; sbrands = pandas.Series({
...   'a': 'subaru',
...   'b': 'toyota',
...   'c': 'honda',
...   'd': 'ford',
...   'e': 'mazda',
...   'f': 'tesla'
... })</pre>

  <p>K přístupu k prvkům série můžeme použít notaci, kterou jsem zvyklí používat na seznamech.</p>

<pre>&gt;&gt;&gt; sbrands[1]
'toyota'</pre>

  <p>U sérií však také funguje přístup skrze index.</p>

<pre>&gt;&gt;&gt; sbrands['b']
'toyota'</pre>

  <h3>Série v DataFrame</h3>

  <p>Série však nemusíme vyrábět přímo od píky tak jako výše. Častěji získáme sérii tak, že si vytáhneme sloupeček z nějakého DataFrame. Vezměme například naši tabulku s údaji o českých městech. Schválně ji načteme do DataFrame tak, aby indexem byly názvy měst.</p>

<pre>&gt;&gt;&gt; mesta = pandas.read_csv('mesta.csv', index_col='mesto')</pre>

  <p>Každý sloupeček této tabulky pak můžeme získat jako sérii. Zkusme to například se sloupečkem <code>linky</code>.<p>

<pre>&gt;&gt;&gt; mesta['linky']
mesto
brno        22
liberec      6
litvinov     5
most         5
olomouc      7
ostrava     15
plzen        3
praha       24
Name: linky, dtype: int64</pre>

  <p>Stejně jako u DataFrame, indexem v naší sérii jsou názvy měst.</p>

  <h3>Aritmetika se sériemi</h3>

  <p>Jak už nejspíš tušíte, série jsou mnohem mocnější než obyčejné Python seznamy a můžeme nad nimi podnikat spoustu šikovných operací, které u seznamů nefungují. </p>

  <p>Série můžeme sčítat, odčítat, násobit, dělit úplně stejně, jako by to byla čísla. </p>

<pre>&gt;&gt;&gt; mesta['linky'] + mesta['linky']
mesto
brno        44
liberec     12
litvinov    10
most        10
olomouc     14
ostrava     30
plzen        6
praha       48
Name: linky, dtype: int64
</pre>

  <p>Sami si můžete vyzkoušet ostatní operátory. Operace fungují také mezi sérií a číslem.</p>
  
<pre>&gt;&gt;&gt; mesta['linky'] * 3
mesto
brno        66
liberec     18
litvinov    15
most        15
olomouc     21
ostrava     45
plzen        9
praha       72
Name: linky, dtype: int64</pre>

  <h3>Porovnávání sérií</h3>

  <p>Série můžeme také provnávat. Zkusme například takovýto výraz</p>

<pre>&gt;&gt;&gt; mesta['linky'] &gt; 10
mesto
brno         True
liberec     False
litvinov    False
most        False
olomouc     False
ostrava      True
plzen       False
praha        True
Name: linky, dtype: bool
</pre>

  <p>Všimněte si, že výsledkem porovnání série s číslem je nová série, která obsahuje pravdivostní hodnoty. Ty jsou <code>True</code> právě tam, kde je porovnání splněno.</p>

  <p>Pravdivostní série jsou velmi zajimavá zvířátka. Můžeme je kombinovat pomocí operátorů <code>&amp;</code> (a zároveň), <code>|</code> (nebo), <code>~</code> (negace). Můžeme tedy napsat něco podobného, co jsme již v této lekci viděli.</p>

<pre>&gt;&gt;&gt; (mesta['linky'] > 10) & (mesta['linky'] < 20)
mesto
brno        False
liberec     False
litvinov    False
most        False
olomouc     False
ostrava      True
plzen       False
praha       False
Name: linky, dtype: bool</pre>

  <p>Ten nejpřekvapivější trik je, že pomocí pravdivostních sérií můžeme také vyhledávat v DataFramech. Nejdříve si uložme výsledek našeho výpočtu do proměnné</p>

<pre>&gt;&gt;&gt; query = (mesta['linky'] > 10) & (mesta['linky'] < 20)</pre>

  <p>Tato proměnná nyní obsahuje pravdivostní sérii. Můžeme tedy dále psát</p>

<pre>&gt;&gt;&gt; mesta[query]
        kraj obyvatel  linky  vymera
mesto                               
ostrava  MSK  290 450     15  214.23</pre>

  <p>Tento příklad vnáší jasnější porozumění do toho, proč fungují vyhledávací výrazy jako tento:</p>

<pre>&gt;&gt;&gt; mesta[(mesta['linky'] > 10) & (mesta['linky'] < 20)]</pre>

  <h3>Metody na sériích</h3>
  <p>Série mají opravdu úctyhodné množství metod. Najdeme zde mimo jiné nám už známé metody <code>loc</code> a <code>iloc</code>, které fungují stejně jako na DataFrame. Další užitečná metoda je například metoda <code>mean</code>, která spočítá průměr z hodnot v sérii. </p>

<pre>&gt;&gt;&gt; mesta['linky'].mean()
10.875</pre>
   
  <p>Další šikovné metody mohou být například <code>min</code> a <code>max</code>, které najdou nejmenší a největší hodnotu. Ty se pak dají s výhodou použít k různým dotazům. Zkusme například zjistit, které město má nejvíce tramvajových linek.</p>

<pre>&gt;&gt;&gt; mesta[mesta['linky'] == mesta['linky'].max()]
      kraj   obyvatel  linky  vymera
mesto                               
praha  PHA  1 294 513     24   496.0</pre>

  <p>Tímto výčet metod na sériích rozhodně nekončí. Pokud vás zajímá, jaké všechny metody lze na sériích použít, můžete nahlédnout do <a href="https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.html">oficiální dokumentace pandasu</a>.</p>
</%self:lesson>