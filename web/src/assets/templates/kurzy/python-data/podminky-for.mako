<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Zatím všechny naše programy vypadaly jako sekvence příkazů vykonávané jeden za druhým. Pro komplikovanější programy ale budeme potřebovat umožnit, aby se některé části programu vykonaly jen za určitých <em>podmínek</em>, nebo se vykonávaly opakovaně v <em>cyklu</em>.</p>

  <h2>Podmínky pro řízení běhu</h2>
  <p>V minulých kapitolách už jsme viděli podmínky při chroustání seznamů. Ty v podstatě řídily, které hodnoty se dostanou do našeho výsledného seznamu. Mnohem mocnější nástrojem jsem ovšem podmínky, které dokáží ovlivnit běh samotného programu. </p>

  <p>Představte si, že chceme napsat program, který určí, zda je hrací kostka férová či falešná. Program načte experimentální data se souboru do proměnné <var>hody.</var>. Ovšem k tomu, aby náš program fungoval, potřebujeme hodů dostatek. Ze tří hodů kostkou těžko určíme, jestli je nebo není fér. Dejme tomu, že pro spolehlivý výsledek požadujeme alespoň tisíc hodů kostkou. Pokud je hodů málo, můžeme uživateli oznámit, že výsledek není spolehlivý.</p>

<pre>import statistics

soubor = open('hody.txt')
hody = [int(hod) for hod in soubor]
soubor.close()

if len(hody) &lt; 1000:
  print('Nespolehlivý výsledek kvůli nedostatku dat.')

print(statistics.mean(hody))</pre>

  <p>Pokud bychom při nedostatku dat vůbec nechtěli vypisovat výsledek, můžeme do podmínky přidat další příkaz, který program ihned ukončí</p>

<pre>if len(hody) &lt; 1000:
  print('Nespolehlivý výsledek kvůli nedostatku dat.')
  exit()</pre>

  <h2>Bloky</h2>
  <p>Všimněte si, že všechny příkazy, které jsou součástí naší podmínky, jsou odsazené kousek doprava. Tímto poprvé narážíme na takzvané bloky kódu. Blok je způsob jak seskupit posloupnost příkazů do jednoho celku. Takový celek pak může být součástí podmínky nebo, jak později uvidíme, například cyklu. Blok vždy začíná dvojtečkou na konci předchozího řádku. Tím říkáme k jaké konstrukci (v našem případě <code>if</code>) náš blok příkazů patří.</p>

  <p>Odsazování bloků se provádí buď pomocí několika mezer. Podobně jako v případě jmen proměnných, zde opět přichází do hry různé programovací styly. Někteří programátoři mají rádi pro odsazení dvě mezery, jiní čtyři, někteří dokonce používají jeden tabulátor. Opět je to na jakémsi vašem estetickém cítění. </p>

  <p>Pokud si zvolíte konkrétní styl, je velice důležité jej dodržovat. Pokud v rámci jednoho bloku budete míchat různé počty mezer pro odsazení, Python vašemu kódu nebude rozumět a bude si na vás stěžovat (rozuměj: vyhazovat chyby). </p>

  <h3>Podmínky se dvěma větvemi</h3>

  <p>Podmínky mohou být mnohem zajímavější a komplexnější, než jak jsme viděli před chvíli. Například mohou mít jak pozitivní tak negativní větev. Negativní větev se spouští, pokud výraz v podmínce vrátí <code>False</code>. Můžeme pak například psát:</p>

  <div class="verbatim">
<pre>if len(hody) &lt; 1000:
  print('Nespolehlivý výsledek kvůli nedostatku dat.')
  exit()
else:
  print('Výsledek je dostatečně spolehlivý.')</pre>
  </div>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Dělení">
    <p>Napište program <code>deleni.py</code>, který na příkazové řádce obdrží dvě celá čísla a vypíše jejich podíl zaokrouhlený na tři desetinná čísla. Pokud je druhé číslo 0, program vypíše hlášku, že nulou dělit nelze.</p>
  </%self:exrc>
  
  <%self:exrc title="Kontrola souboru">
    <p>Napište program <code>zpracovani.py</code>, který na příkazové řádce obdrží název souboru. Pokud soubor končí příponou <code>.csv</code>, program vypíše název tohoto souboru na obrazovku. Pokud má soubor jinou příponu, programu zahlásí, že daný soubor neumí zpracovat.</p>

    <p>V tomto příkladu se vám může hodit metoda řetězců s názvem <code>endswith</code> (<a href="https://docs.python.org/3/library/stdtypes.html#str.endswith">viz dokumentace</a>).</p>
  </%self:exrc>

  ${self.alert_done()}

  <h2>Bonusy</h2>
  <%self:exrc title="Maximum ze dvou čísel">
    <p>Napište program <code>max2.py</code>, který dostane na vstupu dvě celá čísla a vrátí větší z nich. Vyhněte se použití funkce <code>max()</code>.</p>
  </%self:exrc>

  <%self:exrc title="Maximum ze tří čísel">
    <p>Opět bez použití funkce <code>max()</code> napište program <code>max3.py</code>, který dostane na vstupu tři celá čísla a vrátí největší z nich.</p>
  </%self:exrc>
</%self:exercises>

<%self:lesson>
  <h2>Cyklus FOR</h2>
  <p>Nyní už jsme připravení na pořádnou jízdu. V předchozí částí jsme si ukázali, jak nějakou část kódu vynechat, pokud není splněna nějaká podmínka. Nyní si ukážeme, jak nějakou část kódu opakovat vícekrát po sobě. </p>

  <p>Cyklus FOR jste vlastně už ve zjednodušené formě viděli při chroustání seznamů. Vezměme si například takovýto program:</p>

<pre>jmena = ['petr', 'pavel', 'jitka', 'jana']
delky = [len(jmeno) for jmeno in jmena]</pre>
  
  <p>Se svými zkušenostmi jste jistě schopni popsat, co přesně takový program dělá. Jednoduše chroustání projde jednotlivé prvky seznamu <var>jmena</var> a vyrobí nový seznam, který pro každé jméno obsahuje jeho délku. </p>

  <p>Co kdybychom ale chtěli projít nějaký seznam prvek po prvku, ale nechtěli bychom vyrábět žádný nový seznam? Mohli bychom třeba chtít jen vypsat délky jmen pod sebe na obrazovku. V takovém případě použijeme místo chroustání seznamů skutečný FOR cyklus:</p>

<pre>jmena = ['petr', 'pavel', 'jitka', 'jana']
for jmeno in jmena:
  print(len(jmeno))</pre>

  <p>Všimněte si, že cyklus FOR je v základu dost podobný chroustání seznamů. I tady říkáme, že se má něco provést pro každý prvek seznamu. Jen teď máme podstatně větší volnost v tom, co s jednotlivými prvky provedeme. Podobně jako v případě podmínek můžeme cyklu FOR předat celý blok příkazů najednou: </p>

<pre>jmena = ['petr', 'pavel', 'jitka', 'jana']
for jmeno in jmena:
  mail = jmeno + '@gmail.com'	
  print(mail)</pre>

  <p>Dokonce se můžeme opravdu odvázat a vložit do bloku v cyklu FOR i podmínku.</p>

<pre>jmena = ['petr', 'pavel', 'jitka', '', 'jana']
for jmeno in jmena:
  if len(jmeno) < 1:
    mail = 'neplatný email'
  else:
    mail = jmeno + '@gmail.cz'
  print(mail)</pre>

  <p>Tímto jsme vlastně vysvětlili to hlavní a zásadní, co o cyklu FOR zatím potřebujeme vědět. Možná se to na první pohled nezdá, ale přidáním cyklu do našeho programátorského arzenálu jsme otevřeli pandořinu skříňku plnou možností, co v našich programech můžeme dělat. Také jsme ovšem otevřeli bránu do samotných pekel, neboť už si díky cyklům můžeme troufnout na mnohem komplikovanější problémy. Na ty bude často potřeba pořádně roztočit mozkové závity. </p>

  <p>Ukažme si například, jak se pomocí cyklu spočítá součet všech čísel v seznamu.</p>
  
<pre>soucet = 0
for cislo in cisla:
  soucet = soucet + cislo</pre>
        
  <p>Ne, že bychom zrovna takovýto kus kódu nutně potřebovali, když můžeme použít funkci <code>sum()</code>. Tento příklad ale ukazuje, že s cykly můžeme dělat spoustu zajímavých věcí.</p>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  
  <%self:exrc title="Hrátky s cykly">
    <p>Napište program, který dostane na příkazové řádce seznam celých čísel a </p>

    <ol>
      <li>vypíše všechna tato čísla pod sebe, každé na nový řádek,</li>
      <li>vypíše každé číslo spolu s jeho opačnou hodnotu (obrácené znaménko),</li>
      <li>vypíše pouze čísla větší než 0,</li>
      <li>čísla větší než 0 vypíše tak jak jsou, čísla menší než nula vypíše s obráceným znaménkem.</li>
    </ol>
  </%self:exrc>
  
  <%self:exrc title="Poznávačky">
    <p>Popište vlídným ale přesným slovem co dělají následující cykly:</p>

    <ol>
      <li>
<pre>for x in cisla:
  if x % 2 == 0:
    print(x)</pre>
      </li>
      <li>
<pre>for jmeno in jmena:
  if jmeno[0] == 'p':
    print('pako')
  else:
    print(jmeno)</pre>
      </li>
    </ol>
  </%self:exrc>
</%self:exercises>

<%self:lesson>
  <h2>Čtení na doma</h2>
  <p>Ještě než se přesuneme k hlavnímu tématu, ukážeme si, jak dělat hezčí import funkcí z modulů. Do této chvíle, pokud jsme chtěli použít například funkci <code>mean</code> z modulu <code>statistics</code>, psali jsme něco jako.</p>

<pre>import statistics
prumer = statistics.mean(data)</pre>

  <p>Pokud funkce z tohoto modulu používáme v našem programu často, budeme název <code>statistics</code> psát tolikrát, až se upíšeme k smrti. Abychom byli při psaní kódu efektivnější, přejmenujeme si během importu název modulu na něco kratšího, například takto</p>

<pre>import statistics as stat
prumer = stat.mean(data)</pre>

  <p>Může se nám také stát, že z nějakého modulu potřebujeme jen některé funkce, například funkce <code>randint()</code> a <code>uniform()</code> z modulu <code>random</code>. V takovém případě můžeme funkce importovat takto</p>

  <div class="verbatim">
<pre>from random import randint, uniform</pre>
  </div>

  <p>Takto importované funkce pak můžeme používat <strong>bez tečkové notace</strong></p>

<pre>from random import randint, uniform
hod_kostkou = randint(1, 6)
hod_desetinnou_kostkou = uniform(1, 6)
</pre>
  
  <h3>Podmínky s více větvemi</h3>
  <p>Ve lekci jsme si zatím představili pouze podmínky s jednou nebo dvěma větvemi. Když chci něco provést jen v případě, že jsem z písemky dostal více než 90 bodů, napíšu podmínku s jednou větví.</p>

<pre>if bodu > 90:
  print('Dobrá práce')</pre>

  <p>Pokud chci něco provést v případě, že podmínka nebyla splněna, použiju podmínku s dvěma větvemi.</p>

<pre>if bodu > 90:
  print('Dobrá práce')
else:
  print('Špatná práce')</pre>

  <p>Co kdybych ale například chtěl rozdělit známky podle počtů bodů? Tedy za více než 90 by bylo A, za 80 až 90 B a tak dále. V takovém případě bych mohl použít podmínku s více větvemi.</p>

<pre>if bodu >= 90:
  print('A')
elif bodu >= 80:
  print('B')
elif bodu >= 70:
  print('C')
elif bodu >= 60:
  print('D')
elif bodu >= 50:
  print('E')
else:
  print('F')</pre>

  <p>Zde je dobré vědět, jakým způsobem Python takovou podmínku vyhodnocuje. Nejdřív se podívá, jestli je splněna první větev. Pokud ano, vykoná příslušný blok kódu a <strong>zbytek větví přeskočí</strong>. Pokud první větev není splněna, zkouší, jestli je splněna druhá. Pokud ano, vykoná příslušný blok a opět zbytek přeskočí. Takto pokračuje dokud nevyčerpá všechny větve nebo nenarazí na <code>else</code>. Důležité je tedy zapamatovat si, že pokud výraz v nějaké větvi uspěje, zbytek větví se přeskočí a Python se na ně ani nepodívá.</p>
</%self:lesson>

<div class="homework-start"></div>

<%self:exercises>
  <h2>Úložky na doma ‒ povinné</h2>

  <%self:exrc title="Heslo" type="home" diffi="0">
    <p>Napište program <code>login.py</code>, který na příkazovém řádku obdrží uživatelské jméno a heslo. Program bude mít v sobě uloženo správné heslo a pokud jej uživatel zadá, program vypíše něco ve smyslu "přístup povolen". Zadá-li uživatel špatné heslo, program odpoví "přístup odepřen".</p>
  </%self:exrc>

  <%self:exrc title="Převod na USD" type="home" diffi="1">
    <p>Napište program <code>usd.py</code>, který bude umět převádět měnu na americké dolary. Když program zavoláte takto</p>

    <pre>$ python3 usd.py czk 550</pre>

    <p>převede 550 českých korun na americké dolary. Pokud jej zavoláte takto</p>

    <pre>$ python3 usd.py eur 21</pre>

    <p>převede 21 euro na americké dolary.</p>

    <p>Jako přídavek můžete do svého programu přidat tolik měn, kolik se vám líbí.</p>
  </%self:exrc>

  <%self:exrc title="Banka" type="home" diffi="1">
    <p>Napište program, který z textového souboru přečte seznam zůstatků na spořících účtech a vypíše tyto zůstatky navýšené o 2.5% úrok. </p>
    <ol>
      <li>Vypište každý navýšený zůstatek na samostatný řádek.</li>
      <li>Vypište jen ty zůstatky, které nejsou záporné. </li>
      <li>Zkuste jednotlivé řádky očíslovat. Každý řádek tedy bude obsahovat číslo řádku a výsledný zůstatek.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Hádanky" type="home" diffi="1">
    <p>Projděte si následující program a zkuste předpovědět co nejpřesněji, jaký bude jeho výstup. Zkuste co nejvýstižněji (jednou dvěma větami) zformulovat, co program dělá.</p>
  
    <ol>
      <li>
<pre>
cisla = [3, 5, 8, 0, 4, 2, 0, 7, 6, 2, 0, 5]
sum = 0
for cislo in cisla:
  sum = sum + cislo
  if cislo == 0:
    print(sum)
    sum = 0
</pre>
      </li>
      <li>
<pre>
cisla = [3, 5, 8, 0, 4, 2, 0, 7, 6, 2, 0, 5]
index = 0
for cislo in cisla:
  if index % 2 == 0:
    print(cislo)
  index +=  1
</pre>
      </li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Vzestupný seznam" type="home" diffi="2">
    <p>Napište program, který o zadaném seznamu celých čísel rozhodne, zda jsou čísla v tomto seznamu vzestupně seřazena. </p>
  </%self:exrc>

  <h2>Úložky na doma ‒ nepovinné</h2>
  <%self:exrc title="Písemky" type="home" diffi="1">
    <p>Napište program, který obdrží seznam známek z písemek a na výstup vypíše souhrn toho, kolik bylo dohromady jedniček, kolik dvojek, kolik trojek a tak dále.</p>
  </%self:exrc>

  <%self:exrc title="Maximum" type="home" diffi="2">
    <p>Zkuste napsat program, který na vstupu obdrží seznam čísel a najde mezi nimi nejvyšší číslo. Pozor, bez použití funkce <code>max()</code>.</p>
  </%self:exrc>
  
  <%self:exrc title="Druhé maximum" type="home" diffi="3">
    <p>Zkuste napsat program, který na vstupu obdrží seznam čísel a najde mezi nimi druhé nejvyšší číslo. Opět bez použití funkce <code>max()</code>.</p>
  </%self:exrc>

  <%self:exrc title="K-té maximum" type="home" diffi="4">
    <p>Napište program, který dostane na příkazové řádce posloupnost čísel. První číslo udává, kolikáté největší číslo chceme ve zbytku zadaných čísel najít. Můžeme tak chtít třeba páté největší číslo z 6, 1, 3, 8, 4, 7, 2</p>

<pre>$ python3 kmax.py 5 6 1 3 8 4 7 2
3</pre>

    <p>Pokud je nějaké číslo v seznamu dvakrát, bere se jako dvě různá maxima. Pozor, tohle už je hodně těžké. Pokud si na to troufáte, můžete ve svém řešení použít cokoliv co už doteď znáte, klidně si zagooglete. Možností, jak to udělat, je více. Nebojte se být kreativní.</p>
  </%self:exrc>

  <%self:exrc title="Ruleta" type="home" diffi="2">
    <p>Na obrázku vidíte rozložení čísel na klasické Francouzské ruletě. Ruleta obsahuje čísla 0 - 36. Každé číslo s výjimkou nuly je buď sudé nebo liché a zároveň červené nebo černé. Pro čísla 1 až 10 a 19 až 28 platí, že lichá čísla jsou červená a sudá jsou černá. Pro zbytek platí obrácené pravidlo, tedy lichá jsou černá a sudá červená. Nula není ani lichá ani sudá, ani černá ani červená.</p>

    <div class="text-center">
      <img src="/img/intro-to-progr/roulette.png"/>
    </div>

    <p>Napište program, kterému uživatel zadá číslo a program odpoví jestli jde o číslo sudé nebo liché, černé nebo červené, nebo je to nula.</p>
  </%self:exrc>

  <%self:exrc title="Přestupný rok" type="home" diffi="3">
    <p>Napište program, který po zadání kalendářního roku vypíše, zda jde o rok přestupný, či nikoliv. Letopočet je přestupný, pokud je dělitelný čtyřmi. Roky, které jsou dělitelné 100 jsou ovšem přestupné pouze tehdy, jsou-li zároveň dělitelné 400.</p>
  </%self:exrc>
</%self:exercises>
