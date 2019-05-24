<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>V předchozí lekci jsme si ukázali, jak se v Pandasu vytvoří DataFrame a jak z něj můžeme vybírat data pomocí různých způsobů dotazování. Nyní se posuneme o kus dále a ukážeme si, jak můžeme s DataFramy dělat složitější operace jako je filtrování chybějících hodnot, spojování a agregace. </p>

  <h2>Maturita</h2>
  <p>Abychom měli nějaký praktický příklad k procvičování, použijeme fiktivní data z výsledků maturitních zkoušek během jednoho týdne na nějakém menším gymnáziu. Maturita se odehrává ve třech místnostech: U202, U203 a U302. Máme tedy tři tabulky dat, z každé místnosti jednu. Níže si můžete prohlédnout příklad tabulky z místnosti U202. Všechny tabulky jsou ke stažení zde: <a href="/download/python-data/u202.csv" download>u202.csv</a>, <a href="/download/python-data/u203.csv" download>u203.csv</a>, <a href="/download/python-data/u302.csv" download>u302.csv</a>.</p>

  <table>
    <thead>
      <th>jméno</ht>
      <th>předmět</ht>
      <th>známka</ht>
      <th>den</ht>
    </thead>
    <tbody>
      <tr><td>Jana Zbořilová</td><td>Chemie</td><td></td><td>pá</td></tr>
      <tr><td>Lukáš Jurčík</td><td>Dějepis</td><td>3</td><td>pá</td></tr>
      <tr><td>Pavel Horák</td><td>Matematika</td><td>2</td><td>út</td></tr>
      <tr><td>Lukáš Jurčík</td><td>Společenské vědy</td><td>2</td><td>pá</td></tr>
      <tr><td>Pavel Kysilka</td><td>Biologie</td><td>1</td><td>pá</td></tr>
      <tr><td>Kateřina Novotná</td><td>Dějepis</td><td>1</td><td>po</td></tr>
      <tr><td>Marie Krejcárková</td><td>Fyzika</td><td>2</td><td>čt</td></tr>
      <tr><td>Vasil Lácha</td><td>Dějepis</td><td>4</td><td>po</td></tr>
      <tr><td>Alexey Opatrný</td><td>Matematika</td><td>2</td><td>po</td></tr>
      <tr><td>Petr Valenta</td><td>Dějepis</td><td></td><td>pá</td></tr>
      <tr><td>Miroslav Bednář</td><td>Chemie</td><td>2</td><td>st</td></tr>
      <tr><td>Pavel Horák</td><td>Chemie</td><td>5</td><td>út</td></tr>
      <tr><td>Ivana Dvořáková</td><td>Matematika</td><td>1</td><td>st</td></tr>
      <tr><td>Lenka Jarošová</td><td>Biologie</td><td>4</td><td>st</td></tr>
      <tr><td>Miroslav Bednář</td><td>Dějepis</td><td>5</td><td>st</td></tr>
    </tbody>
  </table>

  <h2>Práce s chybějícími hodnotami</h2>
  
  <p>V praxi se poměrně často setkáme s tím, že v datovém setu některé hodnoty chybí. Můžeme si například všimnout, že v tabulce U202 dvěma studentům chybí známka. To může znamenat, že se doma hrůzou zhroutili a na maturitu ani nedorazili. Na takové případy je třeba být připraven.</p>

  <p>V Pandasu, ale i obecně v datové analýze, je možné se s chybějícími daty vypořádat různými způsoby:</p>
  
  <ol>
    <li>Nahradit je za jiné výchozí hodnoty.</li>
    <li>Odstranit všechny řádky s chybějícími daty z datového setu.</li>
    <li>Vyčlenit je do separátního datasetu a zpracovat je zvlášť.</li>    
  </ol>

  <p>Načtěme si naši první tabulku jako DataFrame.</p>

  <pre>&gt;&gt;&gt; import pandas
&gt;&gt;&gt; u202 = pandas.read_csv('u202.csv', encoding='utf-8')</pre>

  <p>Pokud Pandas narazí na prázdnou buňku, vloží místo ní do tabulky speciální hodnotu <code>NaN</code> (z anglického <em>Not a Number</em>). Jakmile tyto speciální hodnoty v našem DataFrame objevíme, můžeme použít několik různých metod.</p>

  <p>Série obsahují metodu <code>isnull</code>, která vrátí pravdivostní sérii s hodnotou <code>True</code> všude tam, kde v původní sérii chybí hodnota. Metoda <code>notnull</code> pracuje přesně opačně. Vrátí pravdivostní sérii s hodnotami <code>True</code> všude tam, kde v původní sérii hodnota nechybí.</p>

<pre>&gt;&gt;&gt; u202['známka'].isnull()
0      True
1     False
2     False
3     False
4     False
5     False
6     False
7     False
8     False
9      True
10    False
11    False
12    False
13    False
14    False
Name: známka, dtype: bool</pre>

  <p>Tyto metody můžeme využít například k tomu, abychom získali všechna data, kde chybí hodnota ve sloupečku <em>známka</em>.</p>

<pre>&gt;&gt;&gt; u202[u202['známka'].isnull()]
            jméno  předmět  známka den
0  Jana Zbořilová   Chemie     NaN  pá
9    Petr Valenta  Dějepis     NaN  pá</pre>

  <p>Další užitečné metody na práci s chybějícími hodnotami najdeme na DataFrame.</p>

  <ol>
    <li><code>dropna()</code> - vrátí datový set očištěn od chybějících dat</li>
    <li><code>dropna(ax</code>is=1) - odstraní všechny sloupce, které obsahují chybějící data</li>
    <li><code>fillna(x)</code> - nahradí všechna chybějící data a hodnoty hodnotou x</li>
  </ol>

  <h2>Spojení dat</h2>
  <p>Nyní bychom chtěli všechny tři naše tabulky spojit do jedné. Nejdříve si každou z nich načteme do samostatného DataFrame s tím, že vyhodíme studenty, kteří na maturitu nedorazili..</p>

<pre>&gt;&gt;&gt; u202 = pandas.read_csv('u202.csv', encoding='utf-8').dropna()
&gt;&gt;&gt; u203 = pandas.read_csv('u203.csv', encoding='utf-8').dropna()
&gt;&gt;&gt; u302 = pandas.read_csv('u302.csv', encoding='utf-8').dropna()</pre>

  <p>Pokud chceme tyto tři DataFrame spojit do jednoho, můžeme použít funkci <code>concat</code></p>

<pre>&gt;&gt;&gt; maturita = pandas.concat([u202, u203, u302])</pre>

  <p>Pozor ale na to, že v takto vzniklém DataFrame se nám rozbije index, protože se prostě spojí za sebe indexy jednotlivých tabulek. Pokud chceme, aby Pandas při spojování index přepočítal, musíme napsat </p>

<pre>&gt;&gt;&gt; maturita = pandas.concat([u202, u203, u302], ignore_index=True)</pre>

  <p>To už je lepší. Stále nám však zůstává jeden problém. Po spojení tabulek do jedné už nevíme, kdo maturoval v jaké místnosti. Tuto informaci si proto doplníme do původních tří tabulek jako nový sloupeček. Až poté tabulky spojíme do jedné.</p>

<pre>
&gt;&gt;&gt; u202['místnost'] = 'u202'
&gt;&gt;&gt; u203['místnost'] = 'u203'
&gt;&gt;&gt; u302['místnost'] = 'u302'
&gt;&gt;&gt; maturita = pandas.concat([u202, u203, u302], ignore_index=True)</pre>

  <p>Takto už nám vznikla pěkná vyčištěná tabulka. Uložme si ji do CSV, ať ji nemusíme vyrábět pořád znova. Nebudeme ukládat index, protože ten si vždycky necháme vyrobit automaticky.</p>

<pre>&gt;&gt;&gt; maturita.to_csv('maturita.csv', index=False)</pre>

  <p>Výslednou tabulku si můžete stáhnout jako soubor <a href="/download/python-data/maturita.csv" download>maturita.csv</a>.</p>

  <h2>Joinování dat</h2>

  <p>Už jsme si ukázali, jak v Pandase spojovat tabulky za sebe, což v SQL odpovídá příkazu UNION. Pandas však umí DataFrame také mergovat, což odpovídá SQL příkazu JOIN. Abychom si tento postup mohli předvést, nečteme si tabulku, která uvádí, kdo v který den předsedal maturitní zkoušecí komisi.</p>

  <table>
    <thead>
      <tr>
        <th>den</th>
        <th>datum</th>
        <th>jméno</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>po</td>
        <td>20.5.2019</td>
        <td>Marie Zuzaňáková</td>
      </tr>
      <tr>
        <td>út</td>
        <td>21.5.2019</td>
        <td>Marie Zuzaňáková</td>
      </tr>
      <tr>
        <td>st</td>
        <td>22.5.2019</td>
        <td>Petr Ortinský</td>
      </tr>
      <tr>
        <td>čt</td>
        <td>23.5.2019</td>
        <td>Petr Ortinský</td>
      </tr>
      <tr>
        <td>pá</td>
        <td>24.5.2019</td>
        <td>Alena Pniáčková</td>
      </tr>
    </tbody>
  </table>

  <p>Data si můžete stáhnout jako soubor <a href="/download/python-data/predsedajici.csv"  download>predsedajici.csv</a>. Načtěme si jej jako DataFrame.</p>

<pre>&gt;&gt;&gt; preds = pandas.read_csv('predsedajici.csv', encoding='utf-8')</pre>

  <p>Join tabulek se v Pandase dělá pomocí funkce <code>merge</code>. Nejprve ji otestujme pouze na datech z prvni mistnosti. </p>

<pre>&gt;&gt;&gt; test = pandas.merge(u202, preds)</pre>

  <p>Takto na poprvé se však s úspěchem nesetkáme, neboť výsledkem příkazu bude prázdný DataFrame. Důvod je ten, že metoda <code>merge</code> dělá ve výchozím nastavení INNER JOIN podle všech sloupečků, které mají stejná jména. Naše dvě tabulky se tedy spojí podle sloupečků <em>jméno</em> a <em>den</em>. Tyto dva sloupečky ale nemají pro žádný řádek v obou tabulkách stejnou hodnotu, takže nám ve výsledku žádný řádek nezbude. </p>

  <p>Můžeme být neoblomná a zaexperimentovat s OUTER JOIN</p>

<pre>&gt;&gt;&gt; test = pandas.merge(u202, preds, how='outer')</pre>

  <p>Takto nám ale ve výsledku vznikne ohromné množství nedefinovaných hodnot. Co doopravdy potřebujeme je joinovat pouze podle sloupečku <em>den</em>, což zařídíme takto</p>

<pre>&gt;&gt;&gt; test = pandas.merge(u202, preds, on=['den'])
&gt;&gt;&gt; test.head()
         jméno_x           předmět  známka den mistnost      datum           jméno_y
0   Lukáš Jurčík           Dějepis     3.0  pá     u202  24.5.2019   Alena Pniáčková
1   Lukáš Jurčík  Společenské vědy     2.0  pá     u202  24.5.2019   Alena Pniáčková
2  Pavel Kysilka          Biologie     1.0  pá     u202  24.5.2019   Alena Pniáčková
3    Pavel Horák        Matematika     2.0  út     u202  21.5.2019  Marie Zuzaňáková
4    Pavel Horák            Chemie     5.0  út     u202  21.5.2019  Marie Zuzaňáková</pre>

  <p>Potíž je v tom, že se teď oba sloupečky <em>jméno</em> automaticky přejmenovaly, aby neměly v tabulce stejný název. Zde můžeme použít metodu <code>rename</code>, abychom sloupečky přejmenovali na něco smysluplného.  </p>

<pre>test = test.rename(columns={'jméno_x': 'jméno', 'jméno_y': 'předs'})</pre>
  
  <p>Nyní už tabulka vypadá hezky. Proveďme tedy totéž pro celý náš maturitní dataset a opět si jej uložme do souboru, ať jej máme vždy po ruce.</p>

<pre>&gt;&gt;&gt; maturita2 = pandas.merge(maturita, preds, on=['den'])
&gt;&gt;&gt; maturita2 = maturita2.rename(columns={'jméno_x': 'jméno', 'jméno_y': 'předs'})
&gt;&gt;&gt; maturita2.to_csv('maturita2.csv', index=False)</pre>

  <p>Výslednou tabulku si opět můžete stáhnout jako soubor <a href="/download/python-data/maturita2.csv" download>maturita2.csv</a>.</p>

  <h2>Grupování</h2>
  <p>Z databází známe kromě UNION a JOIN také operaci GROUP BY. V Pandase ji provedeme tak, že pomocí metody <em>groupby</em> vyrobíme z DataFrame speciální objekt <code>DataFrameGroupBy</code>. Dejme tomu, že chceme grupovat podle sloupečku <em>místnost</em>.</p>

<pre>&gt;&gt;&gt; maturita2.groupby('místnost')
&ltpandas.core.groupby.generic.DataFrameGroupBy object at 0x7f96153a1cf8&gt</pre>

  <p>Na tomto speciálním objektu pak můžeme používat různé agregační funkce. Nejjednodušší je funkce <code>count</code></p>

<pre>&gt;&gt;&gt; maturita2.groupby('místnost').count()
          jméno  předmět  známka  den  datum  předs
místnost                                           
u202         13       13      13   13     13     13
u203         13       13      13   13     13     13
u302         12       12      12   12     12     12</pre>

  <p>Další užitečné agregační funkce jsou například </p>

  <ul>
    <li><code>sum</code> - součet hodnot</li>
    <li><code>max</code> - maximální hodnota</li>
    <li><code>min</code> - minimální hodnota</li>
    <li><code>first</code> - první hodnota</li>
    <li><code>last</code> - poslední hodnota</li>
    <li><code>mean</code> - průměr z hodnot</li>
    <li><code>median</code> - medián z hodnot</li>
    <li><code>var</code> - rozptyl hodnot</li>
    <li><code>std</code> - standardní odchylka hodnot</li>
    <li><code>all</code> - <code>True</code>, pokud jsou všechny hodnoty <code>True</code></li>
    <li><code>any</code> - <code>True</code>, pokud je alespoň jedna z hodnot <code>True</code></li>
  </ul>

  <p>Nemusíme samozřejmě grupovat přes všechny sloupečky. Vybereme si pouze ty, které nás zajímají. Zkusme například spočítat průměrnou známku z jednotlivých předmětů.</p>

<pre>&gt;&gt;&gt; maturita2.groupby('předmět')['známka'].mean()</pre>

  <p>Všimněte si, že takto obdržíme sérii, nikoliv DataFrame. Pozornější z vás možná tuší, že abychom získali DataFrame, musíme psát</p>

<pre>&gt;&gt;&gt; maturita2.groupby('předmět')[['známka']].mean()</pre>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Studenti">
    <p>Stáhněte si datové sety, se kterými budeme pracovat v tomto cvičení: <a href="/download/python-data/jmena100.csv" download>jmena100.csv</a>, <a href="/download/python-data/studenti1.csv" download>studenti1.csv</a>, <a href="/download/python-data/studenti2.csv" download>studenti2.csv</a>. První set už známe z minulé lekce. Druhé dva sety obsahují seznam studentů na nějaké menší IT fakultě. Proveďte následující úkoly a zodpovězte předložené otázky.</p>

    <ol>
      <li>Načtěte dva datové sety studentů do oddělených pandas DataFrame a pomocí funkce <code>concat</code> je spojte do jednoho setu.</li>
      <li>Pokud studentovi chybí ročník, znamená to, že již nestuduje. Pokud mu chybí číslo skupiny, znamená to, že jde o dálkového studenta. Kolik studentů v datovém setu již nestuduje a kolik jsou dálkoví studenti?</li>
      <li>Vyčistěte data od studentů, kteří nestudují nebo studují jen dálkově. Nadále budeme pracovat pouze s prezenčními studenty.</li>
      <li>Zjistěte, kolik prezenčních studentů je v každém z oborů.</li>
      <li>Zjistěte průměrný prospěch studentů v každém oboru.</li>
      <li>Načtěte datový set s křestními jmény. Proveďte join s tabulkou studentů tak, abychom věděli pohlaví jednotlivých studentů.</li>
      <li>Zjistěte, zda na naší fakultě studují IT spíše ženy nebo spíše muži.</li>
    </ol>
  </%self:exrc>
</%self:exercises>