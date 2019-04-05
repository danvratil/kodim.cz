<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>V této lekci si představíme jazyk JavaScript. Protože tento kurz je určen lidem, kteří už nějaké minimální základy programování mají, nebudeme zde již probírat taková témata jako hodnota, funkce nebo podmínka. Budeme tiše přepokládat, že už tyto pojmy znáte z nějakého jiného jazyka. Pokud cítíte, že ještě plavete v základních pojmech, doporučuji projít si <a href="/kurzy/python-party/opacko">opakovací kapitolu</a> z kurzu <a href="/kurzy/python-party">Python Coding Party</a>, která je určená právě těm, kteří potřebují osvěžit úplné základy programování.</p>

  <h2>Chrome konzole a programy</h2>
  <p>Podobně jako v Pythonu i v JavaScriptu můžeme psát příkazy buď do konzole nebo psát ucelené programy. JavaScriptová konzole je ukryta uvnitř prohlížeče Chrome. Stačí otevřít takzvané <em>Developer Tools</em>. V první části tohoto textu budeme pracovat pouze s touto konzolí.</p>

  <h2>Hodnoty, operátory, proměnné</h2>
  
  <p>Vzhledem k tomu, že tento web se věnuje programování hlavně v Pythonu a JavaScriptu budu předpokládat, že základům programování rozumíte právě v jazyce Python. Pokud jste  nabyli své znalosti v nějakém jiném jazyce, určitě pro vás nebude problém si tuto lekci vnitřně přeložit do svého jazyka.</p>
  
  <p>Jazyk JavaScript je Pythonu ve skutečnosti velmi podobný, což nám na začátku ušetří mnoho vysvětlování. Z Pythonu si například pamatujeme tři základní typy hodnot: <em>celá čísla</em> (<code>int</code>), <em>desetinná čísla</em> (<code>float</code>) a <em>řetězce</em> (<code>str</code>). Javascript slučuje první dva, takže má pouze jeden typ, pod který se schovají celá i desetinná čísla, jménem <code>Number</code>. Řetězce jsou v JavaScriptu na chlup stejné jako v Pythonu, můžete je tedy psát v jednoduchých nebo dvojitých uvozovkách. JavaScript řetězcům říká <code>String</code>.</p>

  <p>Proměnné jsou v JavaScriptu taky téměř stejné jako v Pythonu s tím rozdílem, že vytváření proměnných musíme vždy uvodit slovíčkem <code>let</code>.</p>

  <div class="row">
    <div class="col-md-6">
      <p><strong>Python</strong></p>
<pre>mesic = 'leden'
den = 30
mesic = 'únor'
den = 1
</pre>
    </div>
    <div class="col-md-6">
      <p><strong>JavaScript</strong></p>
<pre>let mesic = 'leden'
let den = 16
mesic = 'únor'
den = 1</pre>
    </div>
  </div>

  <p>Klíčové slovo <code>let</code> používáme pouze když zakládáme novou proměnnou. Když chceme změnit hodnotu v již existující proměnné, <code>let</code> už nepíšeme.</p>

  <h2>Volání funkcí</h2>
  <p>Funkce se v JavaScriptu volají úplně stejně jako v Pythonu. Funkce, se kterými můžeme pracovat v JavaScriptu, se od těch v Pythonu občas liší pouze názvem, občas máme proti Pythonu nějaké šikovné funkce navíc, občas nám budou některé Pythonovské funkce chybět.</p>

  <p>Z Pythonu například známe funkci <code>round</code>, která zaokrouhluje vstup na celé číslo. V JavaScriptu se funkce, která dělá přesně totéž jmenuje <code>Math.round</code>. Z Pythonu také znáte funkci, která generuje náhodná čísla jménem <code>round</code>. JavaScript má místo ní funkci  <code>Math.random()</code>, která generuje náhodné desetinné číslo mezi 0 a 1. </p>

  <div class="row">
    <div class="col-md-6">
      <p><strong>Python</strong></p>
<pre>wage = int(input('Tvoje mzda: '))
salary = 8 * 21 * wage
print('Vyplata ' + str(salary))</pre>
    </div>
    <div class="col-md-6">
      <p><strong>JavaScript</strong></p>
<pre>wage = parseInt(prompt('Tvoje mzda: '))
salary = 8 * 21 * wage
console.log('Vyplata ' + salary)</pre>
    </div>
  </div>

  <p>Všimněte si jedné pozoruhodné věci. Na posledním řádku v JavaScriptu jsme nemuseli převádět hodnotu v proměnné <code>salary</code> na řetězec, abychom ji mohli spojit s řetězcem. Na rozdíl od Python, JavaScript tuto konverzi udělá automaticky. To nám na jednu stranu trochu zjednodušuje život, na druhou stranu musíme mít stále na paměti, že JavaScript něco potajmu dělá na pozadí za nás.</p>

  <h2>Programy, vstup a výstup</h2>
  <p>V této sekci se již přesuneme od psaní příkazů do konzole k psaní plnohodnotných programů. Program v JavaScriptu je v našem případě vždy součástí nějaké webové stránky. Vyrobit prázdnou stránku obsahující pouze JavaSricpt je naštěstí velmi jednoduché. Stačí ve Visaul Studiu Code vytvořit soubor s příponou <code>.html</code> a do něj vložit následující kód</p>

<pre>
&lt;script&gt;
  console.log('hello world');
&lt;/script&gt;
</pre>

  <p>JavaScriptový program bude vždy uzavřen do takzvaných značek <code>script</code>. Funkce <code>console.log</code> dělá podobnou věc jako funkce <code>print</code> v Pythonu - vypíše na konzoli zadanou hodnotu.</p>

  <p>Pokud bychom od uživatele chtěli získat vstup, využijeme funkci <code>prompt</code>, která v prohlížeči zobrazí okno s políčkem pro vstup. </p>

<pre>
&lt;script&gt;
  const wage = prompt('Zadejte svou hodinovou mzdu: ');
&lt;/script&gt;
</pre>

  <p>Platí zde stejný princip jako v Pythonu při volání funkce <code>input</code>: vstup od uživatele obdržíme vždy jako řetězec. Chceme-li s řetězce vytáhnout číslo, musíme používat konverzní funkce. V Pythonu známe funkce <code>int</code> a <code>float</code>. JavaScriptové ekvivalenty se jmenují <code>parseInt</code> a <code>parseFloat</code>. </p>

  <p>Chceme-li uživateli něco sdělit, můžeme použít funkci <code>alert</code>. Ta zobrazí dialogové okno s naší zprávou. S tímto arzenálem už můžeme napsat celý program na výpočt výplaty.</p>

<pre>&lt;script&gt;
  const wage = parseInt(prompt('Zadejte svou hodinovou mzdu: '));
  const salary = wage * 7 * 21;
  alert('Vysledná výplata činí: ' + salary + ' kč');
&lt;/script&gt;</pre>

  <h2>Podmínky a bloky</h2>

  <p>S podmínkami to máme opět snadné. V JavaScriptu fungují téměř stejně jako v Pythonu. Co je ovšem v JavaScriptu výrazně jinak je práce s bloky. </p>

  <p>Pokud jsme chtěli v Pythonu napsat podmínku, používali jsme odsazení k tomu, abychom řekli který příkaz patří do kterého blogu. <p>V JavaScriptu ke stejnému účelu používáme složené závorky.</p></p>

<div class="row">
    <div class="col-md-6">
      <p><strong>Python</strong></p>
<pre>if user == 'admin':
  access = True
else:
  access = False</pre>
    </div>
    <div class="col-md-6">
      <p><strong>JavaScript</strong></p>
<pre>if (user === 'admin') {
  access = true
} 
else {
  access = false
}</pre>
    </div>
  </div>

  <p>Odsazení je tedy v JavaScriptu čistě vizuální pomůcka. Kdybychom byli masochisté, mohli bychom kód výše napsat celý na jeden řádek a JavaScript by mu bez problému porozuměl.</p>

  <pre>if (user === 'admin') { access=true } else { access = false }</pre>

  <p>Všimněte si také, že v JavaScriptu se píše výraz uvnitř podmínky do kulatách závorek a že se místo dvojitého rovnáse používá dokonce trojité. To má v JavaScriptu svůj důvod, ale zatím se můžeme spokojit s tvrzením, že čím víc rovnáse, tím víc Addidas.</p>

  <p>Podmínky s více větvemi fungují stejně jako v Pythonu, jen se místo slova <code>elif</code> používá spojení <code>else if</code>. </p>

<pre>const points = parseInt(prompt('Body z písemky'))
  if (points < 50) {
    alert('Známka 5');
  } else if (points < 60) {
    alert('Známka 4');
  } else if (points < 75) {
    alert('Známka 3');
  } else if (points < 85) {
    alert('Známka 2');
  } else {
    alert('Známka 1');
  }</pre>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  <%self:exrc title="Přepočet měny">
    <p>Napište program, který si pomocí volání funkce <code>prompt</code> vyžádá od uživatele částku v eurech a převede ji na celé koruny. Aktuální kurz eura podle ČNB je 25.6 kč za jedno euro. Výslednou částku zobrazte voláním funkce <code>alert</code></p>
  </%self:exrc>

  <%self:exrc title="Trojúhelník">
    <p>Ze školky si jistě pamatujete, že součet úhlů uvnitř všech trojúhelníků je vždy 180°. Napište program, který požádá uživatele o tři celá čísla a dá uživateli zprávu o tom, zda může existovat trojúhelník s těmito vnitřními úhly.</p>
  </%self:exrc>    

  <%self:exrc title="Množstevní slevy">
    <p>Firma nabízející trička s potiskem poskytuje množstevní slevy podle počtu objednaný kusů. Při objednávce pod 50 kusů stojí jedno tričko 300 kč. Pokud si objednáme alespoň 50 kusů, je cena 250 kč za kus. Při objednávce nad 200 kusů je cena 200 kč za tričko. Nad 500 kusů zaplatíme 150 kč za tričko a nad 1000 kusů zaplatíme 120 korun za tričko.</p>

    <p>Napište program, který od uživatele obdrží počet kusů, které si chce objednat, a program odpoví celkovou ceny objednávky. </p>
  </%self:exrc>    

</%self:exercises>