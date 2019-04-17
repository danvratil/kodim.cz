<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Než se společně vrhneme vstříc dalším programátorským dobrodružstvím, vyplatí se zrekapitulovat si absolutní základy, které jste možná načerpali na živém kurzu <a href="/kurzy/uvod-do-progr">Úvod do programování</a> nebo je znáte odjinud. Tento text je pouze stručné opakování toho, co se na kurzu probíralo. Pokud si během čtení budete potřebovat osvěžit detaily, můžete se vrátit zpět do příslušné lekce <a href="/kurzy/uvod-do-progr">Úvodu</a>.</p>
  
  <p>Základem všech základů je vědět, co jsou to hodnoty (čísla, řetězce, seznamy, ...) a jak se s nimi pracuje pomocí operátorů. Měli byste rozumět tomu, co jsou a jak se používají proměnné, co jsou to funkce a jak se volají a také byste měli znát základní příkazy pro řízení běhu programu jako jsou podmínky nebo cykly. Pokud si v něčem z toho nejste jistí, tato kapitola je právě pro vás.</p>

  <h2>Hodnoty, operátory a proměnné</h2>
  <p>Základní stavební bloky veškerého programování jsou <em>hodnoty</em>, <em>operátory</em> a <em>proměnné</em>. S hodnotami provádíme výpočty pomocí různých operátorů a výsledky si pak ukládáme do proměnných pro pozdější použití.</p>
  
  <h3>Hodnoty</h3>
  <p>V Pythonu jsme jako základní hodnoty viděli <em>celá čísla</em>, <em>desetinná čísla</em>, <em>řetězce</em> a <em>pravdivostní hodnoty</em>. Kategoriím, do kterých se hodnoty řadí jsme říkali <em>datové typy</em>.</p>

  <table>
    <thead>
      <th>Datový typ</th>
      <th>Python název</th>
      <th>Příklad</th>
    </thead>
    <tbody>
      <tr>
        <td>celá čísla</td>
        <td>int</td>
        <td>12, 34, -6, ...</td>
      </tr>
      <tr>
        <td>desetinná čísla</td>
        <td>float</td>
        <td>16.0, 14.5, 0.23, ...</td>
      </tr>
      <tr>
        <td>řetězce</td>
        <td>str</td>
        <td><code>'jaro'</code>, <code>"duben"</code>, <code>"37"</code>,...</td>
      </tr>
      <tr>
        <td>pravdivostní hodnoty</td>
        <td>bool</td>
        <td><code>True</code>, <code>False</code></td>
      </tr>
    </tbody>
  </table>
  
  <h3>Operátory</h3>
  <p>Pomocí operátorů s hodnotami různě počítáme a pracujeme. Můžeme je sčítat, odčítat, násobit, dělit, porovnávat apod. Operátorů je více různých druhů. Máme například operátory <em>aritmetické</em>, které slouží k počítání. Pokud tyto operátory použijeme, výsledkem je vždy číslo.</p>

  <table>
    <thead>
      <th>Operátor</th>
      <th>Název</th>
      <th>Příklad</th>
      <th>Výsledek</th>
    </thead>
    <tbody>
      <tr>
        <td><strong><code>+</code></strong></td>
        <td>sčítání</td>
        <td><code>14 + 5</code></td>
        <td><code>19</code></td>
      </tr>
      <tr>
        <td><strong><code>-</code></strong></td>
        <td>odčítání</td>
        <td><code>14 - 5</code></td>
        <td><code>9</code></td>
      </tr>
      <tr>
        <td><strong><code>*</code></strong></td>
        <td>násobení</td>
        <td><code>14 * 5</code></td>
        <td><code>70</code></td>
      </tr>
      <tr>
        <td><strong><code>**</code></strong></td>
        <td>mocnění</td>
        <td><code>14 ** 5</code></td>
        <td><code>537824</code></td>
      </tr>
      <tr>
        <td><strong><code>/</code></strong></td>
        <td>dělení</td>
        <td><code>14 / 5</code></td>
        <td><code>2.8</code></td>
      </tr>
      <tr>
        <td><strong><code>//</code></strong></td>
        <td>celočíselné dělení</td>
        <td><code>14 // 5</code></td>
        <td><code>2</code></td>
      </tr>
      <tr>
        <td><strong><code>%</code></strong></td>
        <td>zbytek po dělení</td>
        <td><code>14 % 5</code></td>
        <td><code>4</code></td>
      </tr>
    </tbody>
  </table>

  <p>Dejme tomu, že chceme spočítat svoji měsíční výplatu, pracujeme-li sedm a půl hodiny denně 21 dní v měsíci za 350kč na hodinu. Můžeme pak v Pythonu psát</p>

<pre>&gt;&gt;&gt; 7.5 * 21 * 350
55105.0</pre>

  <p>Máme ovšem také operátory <em>porovnávací</em>, jejichž výsledkem nejsou čísla ale pravdivostní hodnoty.</p>

  <table>
    <thead>
      <th>Operátor</th>
      <th>Název</th>
      <th>Příklad</th>
      <th>Výsledek</th>
    </thead>
    <tbody>
      <tr>
        <td><strong><code>&gt;</code></strong></td>
        <td>větší než</td>
        <td><code>14 &gt; 5</code></td>
        <td><code>True</code></td>
      </tr>
      <tr>
        <td><strong><code>&gt;=</code></strong></td>
        <td>větší nebo rovno</td>
        <td><code>14 &gt;= 14</code></td>
        <td><code>True</code></td>
      </tr>
      <tr>
        <td><strong><code>&lt;</code></strong></td>
        <td>menší než</td>
        <td><code>14 < 5</code></td>
        <td><code>False</code></td>
      </tr>
      <tr>
        <td><strong><code>&lt;=</code></strong></td>
        <td>menší nebo rovno</td>
        <td><code>14 <= 5</code></td>
        <td><code>False</code></td>
      </tr>
      <tr>
        <td><strong><code>==</code></strong></td>
        <td>rovno</td>
        <td><code>'ahoj' == "ahoj"</code></td>
        <td><code>True</code></td>
      </tr>
      <tr>
        <td><strong><code>!=</code></strong></td>
        <td>nerovno</td>
        <td><code>'13' != 13</code></td>
        <td><code>True</code></td>
      </tr>
    </tbody>
  </table>

  <h3>Proměnné</h3>
  <p>Proměnné slouží k tomu, abychom si výsledek výpočtu uložili a mohli jej použít později buď v jiném výpočtu, nebo jej třeba sdělit uživateli našeho programu.</p>

  <p>U proměnných je důležité volit smysluplná jména, aby bylo nám i ostatním jasné, co se uvnitř proměnné nachází. Také je pravidlem pojmenovávat proměnné anglicky</p>

  <p>Spočítejme svou měsíční výplatu, známe-li počet odpracovaných <var>hodin</var> během dne, počet <var>dní</var> v měsíci a svou hodinovou <var>sazbu</var>.</p>

<pre>&gt;&gt;&gt; hours = 7.5
&gt;&gt;&gt; days = 21
&gt;&gt;&gt; pay = 350
&gt;&gt;&gt; salary = hours * days * pay
</pre>

  <p>Můžeme se pak zeptat, zda je naše výplata vyšší než například 50 000 kč.</p>

<pre>&gt;&gt;&gt; salary >= 50000
True</pre>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Obraz">
    <p>Představte si, že si chcete vyzdobit váš obývací pokoj nástěnným obrazem jako na této fotografii:</p>

    <div class="row">
      <div class="col-md-6 figure-md">
        <img src="/img/python-party/living-room-canvas.jpg" alt="Obývcí pokoj" class="img-600" />
      </div>
      <div class="col-md-6">
        <p>Stěna v pokoji má na šířku 245cm a obraz chceme v šířce 175cm. Fotografii stromu máme k dispozici v rozlišení 4250&times;2040 pixelů. Obraz je třeba zavěsit na tři skoby zapuštěné do zdi těsně pod horním okrajem rámu. Jedna skoba je horizontálně uprostřed obrazu a zbylé dvě jsou vždy 10 cm od levého a pravého kraje obrazu (viz obrázek). Použijte konzoli jazyka Python k provedení následujících výpočtů.</p>
      </div>
      </div>
    </div>
    
    <ol>
      <li>Do proměnné <var>wallWidth</var> uložte šířku zdi, do proměnné <var>frameWidth</var> šířku rámu obrazu. Spočítejte v jaké vzdálenosti od levého okraje stěny vychází pozice všech tří skob. Výsledky uložte do proměnných <var>clinch1</var>, <var>clinch2</var>, <var>clinch3</var>.</li>
      
      <li>Do proměnné <var>photoWidth</var> uložte šířku fotografie v pixelech, do proměnné <var>photoHeight</var> uložte výšku v pixelech. Do proměnné <var>frameHeight</var> spočítejte potřebnou výšku rámu obrazu v centimetrech tak, aby se zachoval poměr stran pořÍzené fotografie.</li>
    </ol>
  </%self:exrc>
</%self:exercises>

<%self:lesson>
  <h2>Volání funkcí a moduly</h2>
  <p>Funkce za nás odvedou spoustu náročné práce aniž bychom se s takovou prací museli pořád dokola obtěžovat sami. Takovéto užitečné činnosti jsou například zaokrouhlování, zjišťování délky řetězců, převádění řetězců na čísla a zpět, výstup na obrazovku nebo získávání vstupu od uživatele.</p>

  <table>
    <thead>
      <th>Funkce</th>
      <th>Popis</th>
      <th>Příklad</th>
      <th>Výsledek</th>
    </thead>
    <tbody>
      <tr>
        <td><strong><code>round()</code></strong></td>
        <td>Zaokrouhlování</td>
        <td><code>round(3.141)</code></td>
        <td><code>3</code></td>
      </tr>
      <tr>
        <td><strong><code>len()</code></strong></td>
        <td>délka</td>
        <td><code>len('martin')</code></td>
        <td><code>6</code></td>
      </tr>
      <tr>
        <td><strong><code>int()</code></strong></td>
        <td>převod na celé číslo</td>
        <td><code>int('14')</code></td>
        <td><code>14</code></td>
      </tr>
      <tr>
        <td><strong><code>float()</code></strong></td>
        <td>převod na desetinné číslo</td>
        <td><code>float('14.5')</code></td>
        <td><code>14.5</code></td>
      </tr>
      <tr>
        <td><strong><code>str()</code></strong></td>
        <td>převod na řetězec</td>
        <td><code>str(14)</code></td>
        <td><code>'14'</code></td>
      </tr>
      <tr>
        <td><strong><code>print()</code></strong></td>
        <td>výstup na obrazovku</td>
        <td><code>print('ahoj')</code></td>
        <td>na obrazovce vytištěno <code>ahoj</code></td>
      </tr>
      <tr>
        <td><strong><code>input()</code></strong></td>
        <td>vstup od uživatele</td>
        <td><code>input('Věk: ')</code></td>
        <td>vstup z terminálu, vždy jako řetězec</td>
      </tr>
    </tbody>
  </table>

  <h3>Vstup a výstup</h3>
  <p>Aby naše programy mohly provádět skutečně něco užitečného, potřebují získat vstup od uživatele a také uživateli sdělit výsledek práce programu - takzvaný výstup. Výstup na konzoli provádíme pomocí funkce <code>print</code>, vstupy získáváme pomocí funkce <code>input</code>. Takto například vypadá program, který po uživateli chce jeho rok narození a vypíše jej rovnou na konzoli. </p>

<pre>year = input('Zadejte rok narozeni: ')
print(year)
</pre>

  <p>Při práci se vstupem a výstupem se však poprvé setkáváme také s nutností takzvané <em>konverze hodnot</em>. Funkce <code>input</code> totiž vždy vrací zadaný vstup jako řetězec. Pokud bychom tedy zadali na konzoli například hodnotu 1992, obsah proměnné <var>year</var> bude vypadat takto: <code>'1992'</code>. Pokud chceme s rokem narození pracovat jako s číslem, je třeba jej na číslo převést pomocí funkce <code>int</code>. Dejme tomu,že bychom chtěli spočítat věk uživatele, za předpokladu, že je zrovna rok 2019.</p>

<pre>year = int(input('Zadejte rok narozeni: '))
age = 2019 - year
print(age)
</pre>

  <p>Nejspíš bychom také pro uživatele chtěli nějakou přívětivější zprávu než jen holé číslo. V takovém případě musíme číslo v proměnné <var>age</var> převést opět zpátky na řetězec, abychom jej mohli vložit do naší zprávy</p>

<pre>year = int(input('Zadejte rok narozeni: '))
age = 2019 - year
print('Vas vek je: ' + str(age))
</pre>

  <h3>Moduly</h3>
  <p>Protože s výše uvedenými funkcemi bychom si zdaleka nevystačili, mnoho dalších užitečných funkcí se ukrývá v modulech, které můžeme do našich programů takzvaně importovat. Jeden z významných modulů se jmenuje <code>math</code> a obsahuje různé matematické funkce. Importujeme jej příkazem</p>

  <pre>&gt;&gt;&gt; import math</pre>

  <p>Můžeme pak použít například funkci <code>ceil</code> či <code>floor</code>, které provádějí zaokrouhlování vždy dolů nebo vždy nahoru. </p>

<pre>&gt;&gt;&gt; math.ceil(3.1)
4
&gt;&gt;&gt; math.floor(3.9)
3</pre>

  <p>Velmi šikovný je také modul <code>random</code>, který obsahuje funkce pro generování náhodných čísel. Funkce <code>randint</code> umí například vygenerovat náhodné číslo podle zadaných mezí. Můžeme tak například simulovat hod kostkou.</p>

<pre>&gt;&gt;&gt; import random
&gt;&gt;&gt; random.randint(1, 6)
4
&gt;&gt;&gt; random.randint(1, 6)
1
&gt;&gt;&gt; random.randint(1, 6)
2
&gt;&gt;&gt; random.randint(1, 6)
6</pre>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Falšovač rodných čísel">
    <p>Napište program, který bude falšovat rodná čísla. Uživatel zadá svůj den, měsíc a rok narození, vždy jako dvě cifry. Program poté vygeneruje rodné číslo, které za lomítkem obsahuje čtyři zcela náhodné cifry. </p>

    <p>Příklad fungování programu:</p>

<pre>Vložte den narození: 04
Vložte měsíc narození: 11
Vložte rok narození: 82
Rodné číslo: 820411/7951</pre>

    <p><strong>Poznámka</strong>: Ve skutečnosti není generování rodných čísel takto jednoduché. Pravidla se liší pro muže a pro ženy. Rodná čísla navíc musí splňovat další kritéria, jako například dělitelnost 11. Náš program tedy ve zločinecké praxi ještě neobstojí.</p>
  </%self:exrc>
</%self:exercises>
  
<%self:lesson>

  <h2>Podmínky</h2>
  <p>Pomocí podmínek se programy rozhodují, jakou cestou se během svojí práce vydat. Můžeme mít program s velmi jednoduchou podmínkou, například:</p>

<pre>password = input('Vložte heslo: ')
if len(password) < 6:
  print('Heslo není bezpečné')</pre>

  <p>Můžeme však také přidat negativní větev</p>

<pre>password = input('Vložte heslo: ')
if len(password) < 6:
  print('Heslo není bezpečné')
else:
  print('Heslo v pořádku')</pre>

  <p>Často však potřebujeme podmínky, které mají vícero větví.</p>

<pre>password = input('Vložte heslo: ')
passLen = len(password)
if passLen < 6:
  print('Heslo není bezpečné')
elif passLen < 8:
  print('Slabé heslo')
elif passLen < 10:
  print('Průměrné heslo')
elif passLen < 12:
  print('Bezpečné heslo')
else:
  print('Paranoidní heslo')</pre>

  <p>Ve všech těchto příkladech si všimněte práce s odsazením. Jazyk Python je citlivý na odsazení a právě podle velikosti odsazení pozná, do jakého bloku patří které řádky kódu.</p>

</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Trojúhelník">
    <p>Z geometrie víme, že součet všech úhlů v trojúhelníku je vždy 180. Napište program, který si na vstupu vyžádá velikosti tří úhlů a zodpoví, zda může existovat trojúhelník s takto zadanými úhly.</p>
  </%self:exrc>
  
  <%self:exrc title="Dny v měsíci">
    <p>Napište program, který dostane na vstupu číslo měsíce v roce (1-12) a vypíše na výstup počet dní v tomto měsíci. Předpokládejme pro jednoduchost, že měsíc únor má vždy 28 dní.</p>
  </%self:exrc>

  <%self:exrc title="Největší ze tří">
    <p>Napište program, který požádá uživatele o tři celá čísla a vypíše na výstup největší z nich.</p>
  </%self:exrc>

  <%self:exrc title="Stupně vítězů">
    <p>Napište program, který bude simulovat průběh klasické olympijské disciplíny plavání 100 m na volný způsob. Plavci v této disciplíně běžně dosahují časů pod 50 s. Napište program, který si od uživatele vyžádá jména tří plavců. Pro každého plavce vygeneruje náhodné číslo mezi 45 a 60, které bude představovat jím dosažený čas. Vypište na výstup, který plavec získá zlatou, stříbrnou a bronzovou medaili. Spusťte program vícekrát po sobě a ověřte, že skutečně vykazuje náhodné chování.</p>
  </%self:exrc>
</%self:exercises>

<%self:lesson>

  <h2>Sekvence</h2>
  <p>Sekvence nám umožňují do jedné proměnné uložit více hodnot najednou. Hodnoty uvnitř sekvencí sídlí na takzvaných <em>indexech</em>, které se vždy počítají od nuly. Jedna z nejjednodušší sekvencí je řetězec.</p>

<pre>&gt;&gt;&gt; name = 'hubert'
&gt;&gt;&gt; name[0]
'h'
&gt;&gt;&gt; name[4]
'r'</pre>

  <p>Ty vůbec nejpoužívanější sekvence jsou ovšem seznamy. Do nich lze uložit jakékoliv množství hodnot jakéhokoliv typu. Dokonce můžeme mít seznamy seznamů.</p>

<pre>&gt;&gt;&gt; grades = [2, 3, 4, 1, 1]
&gt;&gt;&gt; temperatures = [13.4, 13.5, 12.8, 11.9]
&gt;&gt;&gt; users = ['mark', 'carl', 'eve', 'ellen']
&gt;&gt;&gt; payment = ['John Doe', 12000, true]
&gt;&gt;&gt; points = [[140, 120], [60, 92], [34, 68]]</pre>

  <p>Přístupy k indexům sekvencí se dají skládat za sebe. Můžeme tak získat například čtvrté písmenko druhého jména v seznamu <code>users</code></p>

<pre>&gt;&gt;&gt; users[1][3]
'l'</pre>

  <p>nebo první číslo třetího seznamu v proměnné <code>points</code></p>

<pre>&gt;&gt;&gt; points[2][0]
'l'</pre>

</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  <%self:exrc title="Částka slovně">
    <p>Napište program, který na vstupu obdrží třícifernou částku v korunách a vypíše na výstup slovy její velikost. Například pro vstup 356 program vypíše</p>

    <pre>tři sta padesát šest</pre>
  </%self:exrc>
</%self:exercises>

<%self:lesson>

  <h2>Cyklus FOR</h2>
  <p>Cyklus FOR slouží k opakovanému provádění nějakého kousku kódu pro každý prvek nějaké sekvence. Mějme například seznam šesti nejpoužívanějších TLD domén. Chceme-li tyto domény vypsat všechny na obrazovku, napíšeme cyklus takto:</p>

<pre>domains = ['.com', '.de', '.cn', '.net', '.uk', '.org'],
for dom in domains:
  print(dom)</pre>

  <p>Blok kódu uvnitř cyklu se vykoná pro každý prvek seznamu <code>domains</code> s tím, že při každém opakování cyklu se do proměnné <code>dom</code> uloží prvek, který je zrovna na řadě.</p>

  <p>Mohli bychom ovšem chtít pouze dvoupísmenné domény a vyzkoušet, jak s nimi bude působit jméno našich stránek. K tomu budeme potřebovat do cyklu vložit více příkazů:</p>

<pre>domains = ['.com', '.de', '.cn', '.net', '.uk', '.org'],
for dom in domains:
  if len(dom) <= 3:
    print('kodim' + dom)</pre>

  <p>V cyklech můžeme také využívat proměnné vytvořené vně tělo cyklu. Takto můžeme dělat různé výpočty nad seznamy, například spočítat průměr zadaných čísel.</p>

<pre>numbers = [5, 1, 3, 3, 4, 1, 1, 2, 5, 4, 1],
sum = 0
for num in numbers:
  sum += num
average = sum / len(numbers)
print('Prumer: ' + str(average))</pre>

  <p>Ukažme si ještě jeden cyklus, který najde nejvyšší ze zadaných čísel.</p>

<pre>numbers = [6, 7, 1, 4, 9, 2, 5, 3, 8, 4, 6, 1],
max = numbers[0]
for num in numbers[1:]:
  if num > max:
    max = num
print('Maximum: ' + str(max))</pre>

</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Přechylování příjmení">  
    <p>Vytvořte program, který na začátku bude obsahovat následující seznam příjmení</p>

    <pre>surnames = ['Novák', 'Dvořák', 'Kolář', 'Eliáš', 'Čermák', 'Kalous']</pre>

    <p>Napište cyklus, který vypíše tato jména v jejich ženské podobě tedy Nováková, Dvořáková atd.</p>
  </%self:exrc>    

  <%self:exrc title="Vyznamenání">  
    <p>Vytvořte program, který na začátku bude obsahovat následující seznam studentů a jejich průměrných známek ze studia</p>

<pre>grades = [
  ['Josef Novák', 1.65],
  ['Martin Dvořák', 1.44],
  ['Kateřina Kolářová', 1.15],
  ['Kryštof Eliáš', 1.11], 
  ['Ludmila Čermáková', 1.24], 
  ['Miroslav Kalous', 1.98],
  ['Jaromír Ježek', 1.28],
  ['Kristýna Slezáková', 1.35],
  ['Igor Rosický', 1.05],
  ['Lenka Zdražilová', 1.39]
]</pre>

    <p>Student prospěl s vyznamenáním, jestliže jeho průměrná známka nepřekročila 1.2. Student prospěl s pochvalou, jestliže jeho průměrná známka nepřekročila 1.4. Napište cyklus, který vypíše jména všech studentů, kteří prospěli s pochvalou či vyznamenáním. Ke každému jménu vypište <em>pochvala</em> či <em>vyznamenání</em> podle druhu ocenění, které si student zaslouží</p>
  </%self:exrc>  

  <%self:exrc title="Teploy 2017">  
    <p>Vytvořte program, který na začátku bude obsahovat následující seznam průměrných teplot v ČR pro jednotlivé měsíce za rok 2017.</p>
  
    <pre>temps = [-5.6, 1.1, 5.9, 6.9, 13.8, 18.2, 18.5, 18.8, 11.8, 9.5, 3.7, 0.8]</pre>
  
    <p>Napište program, který pomocí cyklu spočítá v kolika měsících klesla průměrná teplota pod 4 stupně Celsia. Vypište toto číslo na výstup.</p>
  </%self:exrc>  
</%self:exercises>