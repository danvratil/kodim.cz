<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>V předchozí kapitole jsme si představili tři důležité typy hodnot: celá čísla, desetinná čísla a seznamy. Dnes přidáme další důležitý typ hodnot, abychom v Pythonu mohli pracovat nejen s čísly, ale i s texty. </p>

  <h2>Řetězce</h2>
  <p>Pokud chceme v Pythonu zadat nějak kousek textu, použijeme takzvaný <em>řetězec</em>. Řetězce se v Pythonu uzavírají do jednoduchých nebo dvojitých uvozovek. Například:</p>
  
  <pre>&gt;&gt;&gt; 'martin'</pre>
  <pre>&gt;&gt;&gt; '12. března 2018'</pre>
  <pre>&gt;&gt;&gt; "prací prášek"</pre>
  <pre>&gt;&gt;&gt; "Don't panic"</pre>
  
  <p>Řetězce se chovají v něčem podobně jako čísla a v něčem podobně jako seznamy. Můžeme je například sčítat</p>

  <pre>&gt;&gt;&gt; jmeno = 'martin' + ' ' + 'podloucký'</pre>
  
  <p>Můžeme však také přistupvat k jednotlivým písmenům nebo pracovat s podřetězci.</p>

<pre>&gt;&gt;&gt; jmeno[3]
't'
&gt;&gt;&gt; jmeno[:6]
'martin'
&gt;&gt;&gt; jmeno[7:]
'podloucký'</pre>

  <p>Podobně jako u seznamů můžeme na řetězcích volat také funkci <code>len()</code></p>
  
<pre>&gt;&gt;&gt; len(jmeno)
16</pre>
  
  <p>Jelikož řetězec je opět hodnota jako každá jiná, není problém vyrobit seznam řetězců</p>
  
  <pre>&gt;&gt;&gt; jmena = ['martin', 'jana', 'petr', 'simona']</pre>
  
  <h2>Převody hodnot</h2>
  <p>Do této chvíle jsme viděli čtyři typy hodnot: celá čísla, desetinná čísla, řetězce a seznamy. Je velmi důležité se naučit vždy si dobře uvědomovat hodnotu jakého typu máme v proměnné zrovna uloženou. </p>
  
  <p>Uvažte proměnnou definovanou takto</p>

  <pre>&gt;&gt;&gt; vek = '18'</pre>
  
  <p>Všimněte si, že číslo 18 je uzavřeno v uvozovkách. To znamená, že jej Python chápe jako kus textu, tedy sekvenci symbolů <code>1</code> a <code>8</code>. Pythonu nezáleží na tom, jaké symboly používáte uvnitř řetězců, písmenka jsou pro něj totéž jako číslice. Řetězec <code>'18'</code> je pro něj tedy skoro totéž jako <code>'ahoj'</code> nebo <code>'Petr'</code>, prostě nějaký kousek textu.</p>
  
  <p>Pokud se tedy pokusíte například o takovýto výpočet</p>
  
  <div class="verbatim">
    <pre>&gt;&gt;&gt; vek + 5</pre>
  </div>
  
  <p>obdržíte od Pythonu chybu:</p>
  
<pre>Traceback (most recent call last):
File "&lt;stdin&gt;", line 1, in <module>
TypeError: Can't convert 'int' object to str implicitly</pre>

  <p>Touto zprávou se nám snaží Python říct, že neví, jak má sečíst řetězec a číslo. Python umí sečíst dvě čísla nebo dva řetězce, ale sčítat řetězec a číslo je jako byste po něm chtěli spočítat <code>'ahoj' + 1</code>. Takový výpočet nedává smysl. </p>
  
  <h3>Převod z řetězce na číslo a zpět</h3>
  <p>S výše uvedeným problémem si můžeme poradit pomocí několika nových funkcí. První se jmenuje <code>int()</code>. Pokud této funkci dáte řetězec, jenž obsahuje celé číslo, vrátí vám tato funkce hodnotu typu celé číslo.</p>

<pre>&gt;&gt;&gt; int('18')
18</pre>

  <p>Podobně můžete použít funkci <code>float()</code> na řetězce obsahující desetinná čísla.</p>
  
<pre>&gt;&gt;&gt; float('3.14')
3.14</pre>
  
  <p>Často také budeme potřebovat převést nějakou hodnotu na řetězec. K tomu nám slouží funkce <code>str()</code>. Mějme například takového proměnné:</p>

<pre>&gt;&gt;&gt; hodin = 12
&gt;&gt;&gt; minut = 35</pre>

  <p>Cheme-li vyrobit hezky vypadající čas ve formátu 12:35, použijeme funkci <code>str()</code> takto:</p>

<pre>&gt;&gt;&gt; str(hodin) + ':' + str(minut)
'12:35'</pre>
  
  <h2>Metody</h2>
  <p>V minulé lekci jsme viděli takzvané funkce, které za nás vykonávají často opakované činnosti jako například zaokrouhlování, zjišťování délky seznamu apod. Některé funkce se však hodí na práci pouze s jedním typem hodnoty. Například bychom mohli mít funkci <code>upper()</code>, která by převedla všechna písmena v řetězci na velká písmena. Kdyby taková funkce existovala, mohli bychom ji volat třeba takto</p>

<pre>&gt;&gt;&gt; upper('martin')
'MARTIN'</pre>
    
  <p>Je pochopitelné, že taková funkce funguje pouze pro řetězce. Pro ostatní hodnoty nedává smysl. Těžko si představit, co by taková funkce měla vrátit například v takovémto případě:</p>

  <pre>&gt;&gt;&gt; upper(3.14)</pre>
  
  <p>Funkce, které pracují pouze na jednom typu hodnoty, se programátoři Pythonu rozhodli svázat přímo s touto hodnotu. Můžeme tedy říct, že funkce <code>upper()</code> patří řetězcům. Pokud tedy máme nějaký řetězec, funkci, která patří pouze k typu řetězec, zavoláme pomocí takzvané <em>tečkové notace</em>.</p>

<pre>&gt;&gt;&gt; 'martin'.upper()
'MARTIN'</pre>

  <p>Funkcím, které patří jen konkrétním typům hodnot, říkáme <em>metody</em>. Všimněte si, že metoda <code>upper()</code> pro řetězce v Pythonu skutečně existuje, takže výše uvedený kód bude opravdu fungovat. Podobně existuje například metoda <code>lower()</code>. Vyzkoušejte si ji.</p>
  
  <h3>Užitečné metody na řetězcích</h3>

  <dl>
    <dt><code>strip()</code></dt>
    <dd>Odstraní všechny bílé znaky na začátku a konci řetězce
<pre>&gt;&gt;&gt; '  martin   '.strip()
'martin'</pre>
    </dd>

    <dt><code>split(sep)</code></dt>
    <dd>Rozseká řetězec na kousky podle zadaného oddělovače <var>sep</var>. Např.
<pre>&gt;&gt;&gt; 'po ut st čt pá'.split(' ')
['po', 'ut', 'st', 'čt', 'pá']</pre>

      nebo

<pre>&gt;&gt;&gt; '3.12,4.1,9.6,-127,0'.split(',')
['3.12', '4.1', '9.6', '-127', '0']
&gt;&gt;&gt; '3.12,4.1,9.6,-127,0'.split('.')
['3', '12,4', '1,9', '6,-127,0']
</pre>
    </dd>

    <dt><code>join(list)</code></dt>
    <dd>Spojí řetězce v seznamu <var>list</var> do jednoho velkého řetězce podle zadaného separátoru.
<pre>&gt;&gt;&gt; '+'.join(['1', '2', '3', '4'])
'1+2+3+4'
&gt;&gt;&gt; '/'.join(['dokumenty', 'dapraha', 'python', 'priklady'])
'dokumenty/dapraha/python/priklady'
</pre>
      </div>
    </dd>
  </dl>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  
  <%self:exrc title="Převod písmen">
    <p>Uložte si do proměnné <var>jmeno</var> svoje jméno. Pomocí volání vhodných metod jej převeďte nejdříve na všechna pímena malá a poté na všechna písmena velká.</p>
    
    <%def name="solution()">
      Řešení zatím není k dispozici
    </%def>
  </%self:exrc>

  <%self:exrc title="Čísla jako text">
    <p>Mějme seznam desetinných čísel zadaných jako text</p>

    <pre>hodnoty = ['12', '1', '7', '-11']</pre>
  
    <p>Potřebujeme k třetímu číslu v seznamu přičíst 4, aby vysledek vypadal takto:
        
    <pre>hodnoty = ['12', '1', '11', '-11']</pre>
      
    <p>Před tím, než se podíváte na následující kroky, sami si rozmyslete postup, jak toto provést. Až když si nejste jistí, pokračujte podle následujících kroků.</p>
      
    <ol>
      <li>Uložte si hodnotu na třetí pozici v seznam do nějaké proměnné.</li>
      <li>Převeďte tuto hodnotu na číslo a přičtěte k němu 4. Výsledek uložte do nějaké jiné proměnné.</li>
      <li>Převeďte hodnotu v proměnné <var>vysledek</var> zpět na řetězec a uložte ji na třetí pozici v seznamu <var>hodnoty.</var></li>
    </ol>
  
    <%def name="solution()">
      Řešení zatím není k dispozici
    </%def>
  </%self:exrc>

  <%self:exrc title="Čísla v textu">
    <p>
      Máme obdobné zadání jako v předchozím cvičení, avšak tentokrát máme čísla zadána nikoliv v seznamu ale v řetězci oddělená mezerou:
    </p>
      
    <pre>hodnoty = '12.1 1.68 7.45 -11.51'</pre>
    
    <p>K poslednímu číslu v seznamu chceme přičíst 0.25 tak, aby výsledek vypadal takto</p>
    
    <pre>hodnoty = '12.1 1.68 7.45 -11.26'</pre>
    
    <p>Určitě se vám budou hodit metody <code>split()</code> a <code>join()</code>.</p>
  
    <%def name="solution()">
      Řešení zatím není k dispozici
    </%def>
  </%self:exrc>

  ${self.alert_done()}

  <h2>Bonusy</h2>

  <%self:exrc title="Chytřejší cvičení 2">
    <p>
      Zkuste vymyslet, jak udělat zápis příkazů z cvičení 2 co nejúspornější. Dá se dojít až k tomu, že celé řešení bude na jeden řádek v Python konzoli.
    </p>
  
    <%def name="solution()">
      <pre>&gt;&gt;&gt; hodnoty[2] = str(int(hodnoty[2]) + 4)</pre>
    </%def>
  </%self:exrc>
</%self:exercises>

<%self:lesson>
  <h2>Chroustání seznamů</h2>
  <p>Často se může stát, že potřebujeme nějakým způsobem zpracovat všechny hodnoty v nějakém seznamu a vyrobit tak seznam nový.</p>
  
  <p>Představme si, že zpracováváme známky z písemek, které hodnotili programátoři. Ti místo známek 1 až 5 používali známky 0 až 4.</p>
  
  <div class="verbatim">
    <pre>pisemky = [0, 2, 0, 1, 1, 3]</pre>
  </div>

  <p>Z takového zápisu nás bolí hlava, takže chceme známky převést do běžného formátu, tedy ke každé z nich přičíst jedničku. To provedeme pomocí takzvaného <em>generátoru:</em></p>
  
  <div class="verbatim">
<pre>&gt;&gt;&gt; [znamka+1 for znamka in pisemky]
[1, 3, 1, 2, 2, 4]</pre>
  </div>

  <p>Seznam můžeme zchroustat jakýmkoliv výrazem. Když si například půjdeme v záchvatu zodpovědnosti zaběhat, abychom vyvážili špatné svědomí z jezení věnečků, můžeme si například takto zaznamenat uběhnuté kilometry v prvních pěti dnech.</p>
  
  <div class="verbatim">
    <pre>&gt;&gt;&gt; kilometry = [2.4, 2.6, 0, 3.5, 1.8]</pre>
  </div>

  <p>Pokud se pak rozhodneme, že bychom chtěli jen celé kilometry bez desetinných čísel, napíšeme</p>
  
  <div class="verbatim">
    <pre>&gt;&gt;&gt; [round(beh) for beh in kilometry]</pre>
  </div>

  <h2>Seznamy seznamů</h2>
  
  <p>Ještě zajímavější situace nastane, budeme-li chtít zchroustat seznam seznamů. Minulý týden jsme vyráběli seznam známek ze čtyř písemek pro šest účastníků kurzu. Mohl by vypadat například takto:</p>
  
  <div class="verbatim">
<pre>pisemky = [
  [1, 3, 2, 1],
  [3, 1, 1, 2],
  [4, 2, 2, 2],
  [1, 1, 1, 1],
  [1, 2, 2, 1],
  [1, 4, 1, 3]
]</pre>
  
  <p>Pokud chceme<%def name="solution()">
      Řešení zatím není k dispozici
    </%def>získat dejme tomu všechny známky z první písemky, chceme vlastně všechny první hodnoty ze všech seznamů uvnitř seznamu <var>pisemky</var>. To můžete udělat takto:</p>
  
  <div class="verbatim">
<pre>&gt;&gt;&gt; prvni = [znamky[0] for znamky in pisemky]
&gt;&gt;&gt; prvni
[1, 3, 4, 1, 1, 1]</pre>
  </div>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  
  <%self:exrc title="Seznamy čísel">
    <p>Mějme zadaný následující seznam </p>
    
    <div class="verbatim">
      <pre>cisla = [1.12, 4.51, 2.64, 13.1, 0.1]</pre>
    </div>

    <p>Vytvořte seznam, který obsahuje</p>
    
    <ol>
      <li>
        každé z čísel ze seznamu <var>cisla</var> vynásobené dvěma,
      </li>
      <li>
        každé z čísel ze seznamu <var>cisla</var> s opačným znaménkem,
      </li>
      <li>
        každé z čísel ze seznamu <var>cisla</var> umocněné na druhou,
      </li>
      <li>
        každé z čísel ze seznamu <var>cisla</var> jako řetězec.
      </li>
    </ol>

    <%def name="solution()">
      Řešení zatím není k dispozici
    </%def>
  </%self:exrc>

  <%self:exrc title="Seznamy řetězců">
    <p>Mějme zadaný následující seznam </p>
      
    <div class="verbatim">
      <pre>jmena = ['Roman', 'Jan', 'Miroslav', 'Petr', 'Gabriel']</pre>
    </div>

    <p>Vytvořte seznam, který obsahuje</p>
    <ol>
      <li>
        počty písmen ve všech jménech, 
      </li>
      <li>
        všechna jména napsaná velkými písmeny,
      </li>
      <li>
        všechna jména plus písmeno <code>'a'</code> na konci (stanou se z nich tedy ženská jména),
      </li>
      <li>
        všechna jména převedená na malá písmena s koncovkou <code>'@email.cz'</code>.
      </li>
    </ol>

    <%def name="solution()">
      Řešení zatím není k dispozici
    </%def>
  </%self:exrc>

  <a name="seznam-teplot" />
  <%self:exrc title="Seznam teplot">
    <p>Mějme zadaný následující seznam naměřených teplot. Seznam obsahuje teploty naměřené pro každý den v týdnu ve čtyřech časech - ráno, v poledne, večer a v noci.</p>

<pre>teploty = [
  [2.1, 5.2, 6.1, -0.1],
  [2.2, 4.8, 5.6, -1.0],
  [3.3, 6.5, 5.9, 1.2],
  [2.9, 5.6, 6.0, 0.0],
  [2.0, 4.6, 5.5, -1.2],
  [1.0, 3.2, 2.1, -2.0],
  [0.4, 2.7, 1.3, -2.8]
]</pre>

    <ol>
      <li>
        Vytvořte seznam průměrných teplot pro každý den.
      </li>
      <li>
        Vytvořte seznam ranních teplot.
      </li>
      <li>
        Vytvořte seznam nočních teplot.
      </li>
      <li>
        Vytvořte seznam dvouprvkových seznamů obsahujících pouze denní a noční teplotu.
      </li>
      <li>
        Spočítejte celkovou průměrnou teplotu za celý týden.
      </li>
    </ol>

    <%def name="solution()">
      Řešení zatím není k dispozici
    </%def>
  </%self:exrc>

  <%self:exrc title="Čtení kódu">
    <p>Popište vlastními slovy co následující výrazy udělají se zadaným seznamem <var>seznam</var>. Až když máte ve svojí hlavjénce jasno, tak je zkuste napsat do Python konzole a ověřte, zda jste měli pravdu. </p>

    <p><pre>seznam = [1, 4, 9, 16, 25, 36, 49, 64]</pre></p>

    <ol>
      <li><pre>[x**0.5 for x in seznam]</pre></li>
      <li><pre>[x % 2 for x in seznam]</pre></li>
      <li><pre>[[x // 2, x % 2] for x in seznam]</pre></li>
    </ol>

    <pre>seznam = ['12.03.2014', '10.01.2015', '06.06.1986']</pre>

    <ol>
      <li><pre>[int(datum[3:5]) for datum in seznam]</pre></li>
      <li><pre>[int(datum[:2])-1 for datum in seznam]</pre></li>
      <li>
<pre>[
  [int(datum[:2]), int(datum[3:5]), int(datum[6:])] 
  for datum in seznam
]</pre></li>
      <li>
        <pre>[datum.split('.') for datum in seznam]</pre>
      </li>
      <li>
        <pre>['/'.join(datum.split('.')) for datum in seznam]</pre>
      </li>
    </ol>

    <%def name="solution()">
      Řešení zatím není k dispozici
    </%def>
  </%self:exrc>
</%self:exercises>

<%self:lesson>
  <h2>Čtení na doma</h2>
  <p>Prozatím jsme na svých poutích po krajině Pythonu potkali následující hodnoty:</p>
  
  <ul>
    <li>Celá čísla: 1, 57, -61, 0, ...</li>
    <li>Desetinná čísla: 1.13, 3.01548, -0.0001, 0.0, ...</li>
    <li>Řetězce: 'Martin', "ahoj", '51', "20.7.2014", ...</li>
    <li>Seznamy: [1, 2, 3], ['po', 'ut', 'st'], ...</li>
  </ul>
  
  <p>Abychom mohli začít dělat opravdu zajímavé věci, budeme potřebovat ještě další typ hodnoty...</p>
  
  <h3>Pravdivostní hodnoty</h3>
  <p>Datový typ <em>pravdivostní hodnota</em> slouží k tomu, abychom mohli v našem programu vyjádřit, zda je něco pravda či nepravda. Proto nám pro tento typ stačí pouze dvě hodnoty: <code>True</code> (pravda) a <code>False</code> (nepravda). Pravdivostní hodnoty jsou opět hodnoty jako každé jiné. Můžeme je tady ukládat do proměnných</p>
  
  <pre>vysledek = False</pre>
  
  <p>nebo je používat v seznamech. Zkusme například vyjádřit, který den v týdnu je pracovní.</p>
  
  <pre>[True, True, True, True, True, False, False]</pre>
  
  <p>Mnoho užitečných operátorů v Pythonu vrací právě pravdivostní hodnoty. Například operátor <code>in</code>, vrátí <code>True</code>, pokud se daný prvek nachází uvnitř seznamu nebo řetězce.</p>
  
<pre>&gt;&gt;&gt; 3 in [1, 2, 3]
True
&gt;&gt;&gt; 4 in [1, 2, 3]
False
&gt;&gt;&gt; 'r' in 'Martin'
True
&gt;&gt;&gt; 'x' in 'Martin'
False</pre>

  <p>Existuje také obrácený operátor <code>not in</code>, který vrací <code>True</code>, pokud daný seznam nebo retězec prvek <em>neobsahuje.</em></p>
  
<pre>&gt;&gt;&gt; 3 not in [1, 2, 3]
False
&gt;&gt;&gt; 4 not in [1, 2, 3]
True</pre>
  
  <p>Velmi užitečné jsou také následující porovnávací operátory</p>
  
  <ul>
    <li><code>&gt;</code> větší než</li>
    <li><code>&gt;=</code> větší nebo rovno</li>
    <li><code>&lt;</code> menší než</li>
    <li><code>&lt;=</code> menší nebo rovno</li>
    <li><code>==</code> rovno</li>
    <li><code>!=</code> nerovno</li>
  </ul>
  
  <p>Můžeme se tedy ptát například takto</p>
<pre>&gt;&gt;&gt; 4 &gt; 3
True
&gt;&gt;&gt; 4 &lt; 3
False</pre>

  <p>Takovéto otázky jsou dost zbytečné, protože odpověď již známe předem. Pokud ovšem použijeme proměnné a funkce, můžeme se ptát na zajímavější věci.</p>

  <pre>&gt;&gt;&gt; vek &gt;= 18</pre>

  <p>Výsledek bude <code>True</code> pokud proměnná <var>věk</var> obsahuje hodnotu větší nebo rovnu 18.</p>
  
  <pre>&gt;&gt;&gt; jmeno == 'Martin'</pre>
  
  <p>Výsledek <code>True</code>, pokud proměnná <var>jmeno</var> obsahuje hodnotu <code>'Martin'</code>.</p>
  
  <pre>&gt;&gt;&gt; len(seznam) != 4</pre>
  
  <p>Výsledek <code>True</code>, pokud je délka seznamu různá od 4.</p>
</%self:lesson>

<%self:exercises>
  <h2>Domácí úkoly ‒ povinné</h2>
  
  <%self:exrc title="Ověřování věku" type="home" type="home" diffi="0">
    <p>Následující seznam obsahuje věky uživatelů naší malé sociální sítě.</p>
  
    <pre>veky = [35, 12, 44, 11, 18, 21, 28, 18]</pre>
  
    <ol>
      <li>Vytvořte pomocí chroustání seznamů seznam celých čísel, které udávají, kolik jednotlivým uživatelům zbývá do 18ti let. Záporná čísla budou znamenat, že uživatel už věk překročil.</li>
      <li>Vytvořte pomocí chroustání seznamů seznam pravdivostních hodnot, které udávají, který uživatel je starší 18ti let.</li>
      <li>Vytvořte pomocí chroustání seznamů seznam pravdivostních hodnot, které udávají, který uživatel má přesně 18 let.</li>
    </ol>
    <%def name="solution()">
      Řešení zatím není k dispozici
    </%def>
  </%self:exrc>
  
  <%self:exrc title="Promítání" type="home" diffi="1">
    <p>V letním kině Šmajchl mají program na každý den uložený jako dva seznamy. První seznam obsahuje názvy filmů a druhý jejich délky v minutách, např. takto: </p>
  
<pre>nazvy = [
  'Někdo to rád horké, extended edition', 
  'Adéla ještě nevečeřela',
  'Kulový blesk'
]
delky = [136, 105, 82]</pre>

    <p>Použijte chroustání seznamů a vyrobte seznam <var>trvani</var>, který bude obsahovat délky filmů nikoliv jako čísla v minutách, ale jako řetězce v hodinách a v minutách. Výsledek tedy bude vypadat takto</p>
  
    <pre>trvani = ['2:16', '1:45', '1:22']</pre>
    
    <%def name="solution()">
      Řešení zatím není k dispozici
    </%def>
  </%self:exrc>

  <%self:exrc title="Počty obyvatel" type="home" diffi="1">
    <p>Mějme počty obyvatel v jednotlivých krajích ČR podle následující tabulky.</p>
  
    <table>
      <thead>
        <th>Kraj</th><th>Počet obyvatel</th>
      </thead>
      <tbody>
        <tr><td>Hlavní město Praha</td><td>1 280 508</td></tr>
        <tr><td>Jihočeský kraj</td><td>638 782</td></tr>
        <tr><td>Jihomoravský kraj</td><td>1 178 812</td></tr>
        <tr><td>Karlovarský kraj</td><td>296 749</td></tr>
        <tr><td>Kraj Vysočina</td><td>508 952</td></tr>
        <tr><td>Královéhradecký kraj</td><td>550 804</td></tr>
        <tr><td>Liberecký kraj</td><td>440 636</td></tr>
        <tr><td>Moravskoslezský kraj</td><td>1 209 879</td></tr>
        <tr><td>Olomoucký kraj</td><td>633 925</td></tr>
        <tr><td>Pardubický kraj</td><td>517 087</td></tr>
        <tr><td>Plzeňský kraj</td><td>578 629</td></tr>
        <tr><td>Středočeský kraj</td><td>1 338 982</td></tr>
        <tr><td>Ústecký kraj</td><td>821 377</td></tr>
        <tr><td>Zlínský kraj</td><td>583 698</td></tr>
      </tbody>
    </table>
  
    <p>Tuto tabulku máme reprezentovanou jako seznam:</p>
<pre>kraje = [
  ['Hlavní město Praha', '1 280 508'],
  ['Jihočeský kraj', '638 782'],
  ['Jihomoravský kraj', '1 178 812'],
  ['Karlovarský kraj', '296 749'],
  ['Kraj Vysočina', '508 952'],
  ['Královéhradecký kraj', '550 804'],
  ['Liberecký kraj', '440 636'],
  ['Moravskoslezský kraj', '1 209 879'],
  ['Olomoucký kraj', '633 925'],
  ['Pardubický kraj', '517 087'],
  ['Plzeňský kraj', '578 629'],
  ['Středočeský kraj', '1 338 982'],
  ['Ústecký kraj', '821 377'],
  ['Zlínský kraj', '583 698']
]</pre>
  
    <ol>
      <li>Vytvořte seznam, který obsahuje pouze názvy všech krajů, tedy první sloupeček této tabulky.</li>
      <li>Vytvořte seznam, který obsahuje počty obyvatel jako čísla.</li>
      <li>Do vhodně pojmenované proměnné uložte seznam, který reprezentuje výše uvedenou tabulku jako dva seznamy: seznam jmen a seznam počtů obyvatel jako čísla.</li>
    </ol>
    <%def name="solution()">
      Řešení zatím není k dispozici
    </%def>
  </%self:exrc>
  
  <%self:exrc title="Volby" type="home" diffi="2">
    <p>Máme pět kandidátů na post prezidenta ČR. Následující tabulka obsahuje hlasy, které jednotliví kandidáti získali v prvním kole prezidentských voleb.</p>
  
    <table>
      <thead>
        <th>Kraj</th>
        <th>Igor Rezek</th>
        <th>Augustýn Doležal</th>
        <th>Vladan Bednář</th>
        <th>Ondřej Brotz</th>
        <th>Radim Kašpar</th>
      </thead>
      <tbody>
        <tr>
          <td>Hlavní město Praha</td>
          <td>78774</td>
          <td>43179</td>
          <td>225111</td>
          <td>144799</td>
          <td>242854</td>
        </tr>
        <tr>
          <td>Jihočeský kraj</td>
          <td>91062</td>
          <td>22451</td>
          <td>17475</td>
          <td>53391</td>
          <td>46450</td>
        </tr>
        <tr>
          <td>Jihomoravský kraj</td>
          <td>179186</td>
          <td>216499</td>
          <td>4493</td>
          <td>156305</td>
          <td>61222</td>
        </tr>
        <tr>
          <td>Karlovarský kraj</td>
          <td>9619</td>
          <td>53476</td>
          <td>926</td>
          <td>64737</td>
          <td>34566</td>
        </tr>
        <tr>
          <td>Kraj Vysočina</td>
          <td>66904</td>
          <td>85730</td>
          <td>27271</td>
          <td>12964</td>
          <td>38041</td>
        </tr>
        <tr>
          <td>Královéhradecký kraj</td>
          <td>118755</td>
          <td>1929</td>
          <td>30426</td>
          <td>25178</td>
          <td>31952</td>
        </tr>
        <tr>
          <td>Liberecký kraj</td>
          <td>64467</td>
          <td>40993</td>
          <td>81181</td>
          <td>39392</td>
          <td>4335</td>
        </tr>
        <tr>
          <td>Moravskoslezský kraj</td>
          <td>11221</td>
          <td>97970</td>
          <td>26179</td>
          <td>98539</td>
          <td>112578</td>
        </tr>
        <tr>
          <td>Olomoucký kraj</td>
          <td>171064</td>
          <td>7638</td>
          <td>8752</td>
          <td>96666</td>
          <td>39738</td>
        </tr>
        <tr>
          <td>Pardubický kraj</td>
          <td>74235</td>
          <td>101680</td>
          <td>18920</td>
          <td>45904</td>
          <td>1922</td>
        </tr>
        <tr>
          <td>Plzeňský kraj</td>
          <td>39309</td>
          <td>1505</td>
          <td>10531</td>
          <td>30458</td>
          <td>40228</td>
        </tr>
        <tr>
          <td>Středočeský kraj</td>
          <td>131584</td>
          <td>1812</td>
          <td>241122</td>
          <td>22267</td>
          <td>99326</td>
        </tr>
        <tr>
          <td>Ústecký kraj</td>
          <td>194133</td>
          <td>39985</td>
          <td>200997</td>
          <td>28229</td>
          <td>20780</td>
        </tr>
        <tr>
          <td>Zlínský kraj</td>
          <td>66188</td>
          <td>51607</td>
          <td>15977</td>
          <td>177272</td>
          <td>17664</td>
        </tr>
      </tbody>
    </table>
  
    <p>Data máme k dispozici v následujícím formátu</p>
<pre>hlasy = [ 
  [78774, 43179, 225111, 144799, 242854],
  [91062, 22451, 17475, 53391, 46450],
  [179186, 216499, 4493, 156305, 61222],
  [9619, 53476, 926, 64737, 34566],
  [66904, 85730, 27271, 12964, 38041],
  [118755, 1929, 30426, 25178, 31952],
  [64467, 40993, 81181, 39392, 4335],
  [11221, 97970, 26179, 98539, 112578],
  [171064, 7638, 8752, 96666, 39738],
  [74235, 101680, 18920, 45904, 1922],
  [39309, 1505, 10531, 30458, 40228],
  [131584, 1812, 241122, 22267, 99326],
  [194133, 39985, 200997, 28229, 20780],
  [66188, 51607, 15977, 177272, 17664]
]</pre>
  
    <p>Zodpovězte následující otázky</p>
  
    <ol>
      <li>Kolik získal každý kandidát hlasů v celé ČR?</li>
      <li>Který kandidát vyhrál první kolo voleb?</li>
      <li>Ve kterých krajích byla nejvyšší a nejnižší volební účast</li>
      <li>Vytvořte tabulku, která ukazuje který kandidát vyhrál v kterém kraji.</li>
      <li>
        <p>Vytvořte tabulku podobnou té z tohoto cvičení, která místo čísel bude obsahovat jaké procento celkového počtu hlasů získal každý kandidát v daném kraji.</p>

        <p><strong>Nápověda:</strong> postupuje tak, že použijete na každý řádek tabulky zvlášť chroustání seznamů. Tabulku můžete sestavit tak, že tento postup ručně zopakujete 13 krát, jednou pro každý kraj. Pokud toužíte po elegantnějším řešení, vyčkejte na nepovinné úložky.</p>
      </li>
      <li>Vytvořte seznam pravdivostních hodnot, který bude říkat ve kterých krajích překročila volební účast 50&nbsp;%.</li>	
    </ol>
  </%self:exrc>

  <h2>Domácí úkoly ‒ nepovinné</h2>
  
  <%self:exrc title="Elegantní volby" type="home" diffi="3">
    <p>Pokud vás trápí, že řešení varianty e) v úloze o volbách není příliš elegantní, zkuste sestavit Python výraz na jeden řádek, který celý bod e) vyřeší najednou. Bude potřeba do sebe zanořit dvě chroustání seznamů, jedno přes hodnoty v řádcích a druhé přes jednotlivé kraje.</p>
  </%self:exrc>
  

</%self:exercises>