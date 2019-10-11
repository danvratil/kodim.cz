<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Ještě než se pustíme do poslední lekce Pandasu, čeká nás představení jednoho velmi důležitého konceptu z jazyka Python, který posune naše programování zcela na novou úroveň. Naučíme se totiž psát vlastní funkce.</p>

  <h2>Vlastní funkce</h2>
  <p>Během našeho výletu Pythonem jste již potkali mnoho funkcí. Pomocí funkce <code>round</code> jsme zaokrouhlovali, pomocí funkce <code>random</code> jsme generovali náhodná čísla, pomocí funkce <code>open</code> jsme otvírali soubory a tak dále, a tak dále. Každá funkce je vlastně takový malý prográmek, který řeší nějakou často opakovanou činnost. Jakmile začneme psát delší programy, často narazíme na potřebu vyrobit si vlastní funkci, abychom měli zkratku pro nějakou vlastní činnost, kterou v našem programu často opakujeme.</p>

  <p>Můžeme si například představit program, který se zabývá výměrou pozemků a často se nám stává, že chceme spočítat plochu pozemku tvaru trojúhelníka jako na tomto obrázku.</p>

  <div class="text-center">
    <img src="/img/intro-to-js/triangle-area.png" alt="Pozemek" class="figure__img-600" />
  </div>

  <p>Na vzoreček pro výpočet plochy trojúhelníka si vzpomeneme ze základní školy. </p>

  <pre>area = width * height / 2</pre>

  <p>Pokud ale tento výpočet chceme v našem programu často opakovat, nemá smysl ho pořád dokola kopírovat. Lepší je si napsat funkci, která dostane šířku a výšku trojúhelníka jako vstup a vrátí nám spočítanou plochu. Takovou funkci bychom mohli pojmenovat například <code>triangleArea</code> a v Pythonu bychom ji vytvořili takto.</p>

<pre>def triangleArea(w, h):
  return w * h / 2</pre>

  <p>Takovou funkci pak můžeme zavolat jako každou jinou se zcela konkrétními vstupními hodnotami, které pro náš příkladový pozemek činí 6 a 3.</p>

<pre>&gt;&gt;&gt; area = triangleArea(6, 3)
&gt;&gt;&gt; area
9.0</pre>

  <p>Pojďme si blíže vysvětlit, jak jsme funkci vlastně vyrobili. Funkce se v Pythonu vytváří použitím kličového slova <code>def</code>. Za ním následuje název funkce, který si můžeme zvolit dle libosti. Za názvem funkce v závorkách uvedeme takzvané <em>vstupní parametry</em>. Parametry jsou speciální proměnné, do kterých nám sám Python uloží vstupy funkce ve chvíli, kdy ji zavoláme. Za dvojtečkou následuje blok kódu, který říká, co daná funkce dělá. Chceme-li z funkce vrátit výsledek, musíme použít klíčové slovo <code>return</code>.</p>
  
  <p>V našem případě má funkce dva vstupní parametry jménem <var>w</var> a <var>h</var>. Ve chvíli, kdy jsme funkci zavolali, do těchto parametrů Python uložil hodnoty 6 a 3. Poté se provedl kód funkce, který spočítal výsledek, a ten se nám po navrácení z funkce uložil do proměnné <code>area</code>.</p>

  <h3>Složitější funkce</h3>
  <p>Naše funkce pro výpočet obsahu byla velmi jednoduchá. Kód funkce může být samozřejmě mnohem obsáhlejší. Napišme například funkci, která jako vstup obdrží seznam a vrátí součet všech kladných čísel z tohoto seznamu.</p> 

<pre>def sumPositive(nums):
  result = 0
  for n in nums:
    if n > 0:
      result += n
  return result</pre>

</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  <%self:exrc title="Obsah elipsy">
    <p>Tentokrát chceme spočítat plochu pozemku ve tvaru elipsy jako na obrázku. </p>

    <div class="text-center">
      <img src="/img/intro-to-js/elipse.png" alt="Elipsa" class="figure__img-600" />
    </div>

    <p>Z matematiky víme, že známe-li šířku a výšku elipsy, její obsah je polovina šířky krát polovina výšky krát číslo pí. Napište funkci <code>elipseArea</code>, která spočítá plochu pozemku dle zadané šířky a výšky. Číslo pí najdete v modulu <code>math</code> jako <code>math.pi</code>.</p>
  </%self:exrc>

  <%self:exrc title="Větší ze dvou čísel">
    <p>Napište funkci jménem <code>max2</code>, který vrátí větší ze dvou zadaných čísel.</p>
  </%self:exrc>

  <%self:exrc title="Geometrický průměr">
    <p>Napište funkci jménem <code>gmean</code>, která spočítá takzvaný geometrický průměr ze zadaného seznamu čísel. Geometrický průměr <em>n</em> čísel se spočítá tak, že se všechny hodnoty navzájem vynásobí a z výsledného součinu se spočítá <em>n</em>-tá odmocnina.</p>
  </%self:exrc>

  <h2>Bonusy</h2>  

  <%self:exrc title="Větší ze tří čísel">
    <p>Napište funkci jménem <code>max3</code>, který vrátí největší ze tří zadaných čísel.</p>
  </%self:exrc>

</%self:exercises>

<%self:lesson>
  <h2>Transformace dat v Pandasu</h2>
  <p>Vytváření vlastních funkcí jsme si nevysvětlovali jen tak nazdařbůh. Naše nové schopnosti ihned využijeme při práci s daty. Často se nám totiž stane, že data nejsou v tak úplně dokonalém formátu, jak by se nám hodilo a musíme si je trošku pomasírovat, nebo-li odborně řečeno transformovat.</p>

  <p>Uvažme jakéhosi Kristiána, jenž se snaží o zhubnutí do svého obleku, který má ještě z tanečních na střední škole. Náš Kristián se rozhodl po 14 dní zdravěji jíst a chodit pravidelně běhat. Své úsilí si poctivě zaznamenával do následující tabulky. </p>
    
  <table>
    <thead>
      <th>den</th>
      <th>váha</th>
      <th>běh</th>
    </thead>
    <tbody>
      <tr>
        <td>pá 13.</td>
        <td>75,6 kg</td>
        <td>3 km</td>
      </tr>
      <tr>
        <td>so 14.</td>
        <td>75,3 kh</td>
        <td>pauza</td>
      </tr>
      <tr>
        <td>ne 15.</td>
        <td>75,9kg</td>
        <td>pauza</td>
      </tr>
      <tr>
        <td>po 16.</td>
        <td>76,1 kg</td>
        <td>2 km</td>
      </tr>
      <tr>
        <td>út 17.</td>
        <td>75,4 kg</td>
        <td>paza</td>
      </tr>
      <tr>
        <td>st 18.</td>
        <td>75 kg</td>
        <td>pauza</td>
      </tr>
      <tr>
        <td>čt 19.</td>
        <td>74,9 kg</td>
        <td>3</td>
      </tr>
      <tr>
        <td>pá 20.</td>
        <td>74,8 k</td>
        <td>pauza</td>
      </tr>
      <tr>
        <td>so 21.</td>
        <td>74,3kg</td>
        <td>3 km</td>
      </tr>
      <tr>
        <td>ne 22.</td>
        <td>75,2 kg</td>
        <td>4 km</td>
      </tr>
      <tr>
        <td>po 23.</td>
        <td>74,5 kg</td>
        <td></td>
      </tr>
      <tr>
        <td>út 24.</td>
        <td>74,2 kg</td>
        <td>pauza</td>
      </tr>
      <tr>
        <td>st 25.</td>
        <td>74,1 kg</td>
        <td>3 km</td>
      </tr>
      <tr>
        <td>čt 26.</td>
        <td>73,8 kg</td>
        <td>3km</td>
      </tr>
    </tbody>
  </table>

  <p>Tabulku si můžete stáhnout jako soubor <a href="/download/python-data/vaha.txt" download>vaha.txt</a>. Bohužel  Kristián není ten úplně nejvíc nejdůslednější člověk na planetě, takže hodnoty v druhém a třetím sloupečku nejsou vždy úplně konzistentní, hemží se to zde překlepy i občasnou chybějící hodnotou. Váha je řetězec, který nejen obsahuje i jednotky, ale navíc jsou desetinná čísla zapsána pomocí čárky. Navíc jsou hodnoty v tomto souboru jsou odděleny tabulátory, což svědčí o tom, že je Kristián asi vykopíroval přímo z Excelu nebo Google docs.</p>
  
  <p>V dnešní lekci už nebudeme pracovat v příkazové řádce, ale napíšeme si regulérní program. Nejprve načteme naše data do DataFrame. Pozor na to, že oddělovače jsou tabulátory.</p>

<pre>import pandas
vaha = pandas.read_csv('vaha.txt', encoding='utf-8', sep='\t')</pre>

  <p>Můžeme si všimnout, že ani v prvních sloupečku, kde naštěstí žádné překlepy nemáme, nejsou data úplně v šikovném formátu. Datumy máme jako jméno a číslo dne. To je první věc, kterou se pokusíme napravit.  </p>
  
  <p>Ty nejužitečnější operace pro transformaci dat najdeme na sériích. Vezměme si první sloupeček naší tabulky jako sérii. Pomocí vlastnosti <code>.str</code> můžeme pracovat se sérií řetězců úplně stejně, jako pracujeme s jedním řetězcem. Můžeme se tak například zbavit zbytečných názvů dní.</p>

<pre>cisloDne = vaha['den'].str[3:]
print(cisloDne)

0     13.
1     15.
2     16.
3     17.
4     18.
5     19.
6     20.
7     21.
8     22.
9     23.
10    24.
11    25.
12    26.
13    27.
Name: den, dtype: object</pre> 

  <p>Můžeme taky smazat otravnou tečku na konci tak, že ji prostě nahradíme prázdným řetězcem.</p>

<pre>cisloDne = vaha['den'].str[3:].str.replace('.', '')
print(cisloDne)

0     13
1     15
2     16
3     17
4     18
5     19
6     20
7     21
8     22
9     23
10    24
11    25
12    26
13    27
Name: den, dtype: object</pre>

  <p>Všimněte si ale, že hodnoty v sérii <code>cisloDne</code> jsou pořád řetězce. Chceme-li je převést na čísla, musíme použít Pandas funkci <code>to_numeric</code>.</p>

<pre>cisloDne = vaha['den'].str[3:].str.replace('.', '')
cisloDne = pandas.to_numeric(cisloDne)
print(cisloDne)

0     13
1     15
2     16
3     17
4     18
5     19
6     20
7     21
8     22
9     23
10    24
11    25
12    26
13    27
Name: den, dtype: int64</pre>

  <p>Takto máme sloupeček hezky vyčištěný. Zapojme ho jako nový sloupeček do naší tabulky. Zároveň ještě nahradíme sloupeček se dny pouze jejich názvy. Tím bude tabulka mnohem přehlednější.</p>

<pre>den = vaha['den'].str[:3]
vaha['číslo dne'] = cisloDne
vaha['den'] = den
print(vaha)

    den     váha    běh  číslo dne
0   pá   75,6 kg   3 km         13
1   so   75,3 kh  pauza         15
2   ne    75,9kg  pauza         16
3   po   76,1 kg   2 km         17
4   út   75,4 kg   paza         18
5   st     75 kg  pauza         19
6   čt   74,9 kg      3         20
7   pá    74,8 k  pauza         21
8   so    74,3kg   3 km         22
9   ne   75,2 kg   4 km         23
10  po   74,5 kg    NaN         24
11  út   74,2 kg  pauza         25
12  st   74,1 kg   3 km         26
13  čt   73,8 kg    3km         27</pre>

  <h3>Složitější transformace</h3>
  <p>První sloupeček byl ještě relativně snadný. S druhým to bude o dost těžší. Data nejsou moc konzistentní a dostat je do rozumné podoby znamená řešit různé speciální případy pomocí různých podmínek.</p>

<pre>
</%self:lesson>