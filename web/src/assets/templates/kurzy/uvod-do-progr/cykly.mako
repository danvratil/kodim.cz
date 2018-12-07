<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Počítače a programování byly vymyšleny především proto, aby ušetřili lidem nudnou a repetitivní práci. Proto cheme umět počítači říct, že má nějakou činnost opakovat mnohokrát po sobě. K tomu nám v programování slouží takzvané cykly. </p>

  <h2>Cyklus FOR</h2>
  <p>Jeden z nejpoužívanějších cyklů v téměř všech programovacích jazycích ja takzvaný cyklus FOR. Tento cyklus umí projít jakýkoliv zadaný seznam prvek po prvku a pro každý prvek vykonat určitý blok kódu. Představme si například, že máme seznam známek z písemek nějakého studenta a chceme tyto známky vypsat na obrazovku, každou na nový řádek. K tomu nám stačí takovýto kousek kódu.</p>

<pre>znamky = [1, 3, 2, 1, 1, 2]
for z in znamky:
  print(z)</pre>

  <p>V tomto konkrétním případě tedy náš cyklus prochází seznam známek jednu po druhé. Známka, která je právě zpracovávána, je uložena v proměnné <var>z</var>. Jméno této proměnné jsme si zvolili tak, aby bylo čitelné, co je v proměnné uloženo, tedy <var>z</var> jako známka.</p>

  <p>Podobně jako v případě podmínek můžeme cyklu FOR předat celý blok příkazů najednou. Mějme například seznam jmen, kdy za každé jméno chceme přidat konec e-mailové adresy.</p>

<pre>jmena = ['petr', 'pavel', 'jitka', 'jana']
for jmeno in jmena:
  mail = jmeno + '@gmail.com'	
  print(mail)</pre>

  <p>Takto vytiskneme na obrazovku maily jednotlivých lidí, každý na jeden řádek. Následující animace ukazuje, jakým způsobem Python prochází tento progam.</p>

  <div class="figure">
    <img src="/img/intro-to-progr/for-cycle.gif" />
  </div>

  <p>Jak už bylo napsáno výše, cyklus může obsahovat libovolný blok příkazů, takže se můžeme opravdu rozparádit a vložit do bloku v cyklu FOR třeba podmínku.</p>

<pre>jmena = ['petr', 'pavel', 'jitka', 'jana']
for jmeno in jmena:
  if len(jmeno) <= 4:
    mail = jmeno + '@gmail.com'
  else:
    mail = jmeno + '@seznam.cz'
  print(mail)</pre>

  <p>Tímto jsme vlastně vysvětlili to hlavní a zásadni co o cyklu FOR zatím potřebujeme vědět. Možná se to na první pohled nezdá, ale přidáním cyklu do našeho programátorského arzenálu jsme otevřeli pandořinu skříňku plnou možností, co v našich programech můžeme dělat. Taky jsme ale otevřeli bránu do samotného pekla, neboť už díky cyklům dokážeme řešit mnohem složitější a komplikovanější problémy, na které ale bude často potřeba pořádně roztočit mozkové závity. </p>

  <p>Ukažme si například jak se pomocí cyklu spočítá součet všech čísel v seznamu.</p>

<pre>soucet = 0
for cislo in cisla:
  soucet = soucet + cislo</pre>

  <p>Ne, že bychom zrovna tento cyklus nutně potřebovali. Python obsahuje funkci <code>sum()</code>, která umí dělat přesně toto. Tento příklad ale spíše ukázat, že s cykly můžeme dělat spoustu zajímavých věci.</p>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  
  <%self:exrc title="Seznam hodnocení">
    <p>Mějme seznam hodnocení divadelní hry <em>Plyšáci na útěku</em>, který vypadá takto:</em></p>

    <pre>hodnoceni = [7, 9, 6, 7, 9, 8]</pre>
    <ol>
      <li>Vytvořte program, který projde tento seznam a vypíše každé hodnocení na nový řádek.</li>
      <li><p>Upravte program tak, aby vypisoval výstup v tomto formátu</p>
<pre>
7/10
9/10
6/10
7/10
9/10
8/10</pre>
      </li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Procházení seznamu">
    <ol>
      <li>
        <p>Založte si program <var>hesla.py</var> a na jeho začátek vložte následující kód obsahující seznam hesel pro přihlášení do nějakého systému</p>
<pre>
hesla = [
  'xyz101',
  'punťa',
  'razor-blade',
  '1234',
  '12011986',
  'martin111',
  'trhnisi',
  'hokuspokus',
  'jeník15',
  'kristus-te-spasi',
  'beruška',
  'strčprstskrzkrk'
]</pre>
      <li>Pomocí cyklu vypište všechny hesla na obrazovku, každé na jeden řádek.</li>
      <li>Upravte váš program tak, aby vypisoval jen bezpečná hesla, tedy taková, jež jsou delší než 8 znaků.</li>
      <li>Upravte váš program tak, aby vypisoval jen ta hesla, jež obsahují znak pomlčky '-'.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Složitější seznam">
    <p>Založte si program <var>cykly02.py</var> a použijte v něm následující seznam měsíců v roce, Všimněte si, že je to seznam seznamů.</p>
<pre>
mesice = [
  ['leden', 31],
  ['únor', 28],
  ['březen', 31],
  ['duben', 30],
  ['květen', 31],
  ['červen', 30],
  ['červenec', 31],
  ['srpen', 31],
  ['září', 30],
  ['říjen', 31],
  ['listopad', 30],
  ['prosinec', 31]
]</pre>

    <ol>
      <li>Pomocí cyklu projděte tento seznam a vypište na výstup názvy jednotlivých měsíců.</li>
      <li>Pomocí dalšího cyklu vypište na výstup počty dní v jednotlivých měsicích. </li>
    </ol>
  </%self:exrc>

  ${self.alert_done()}

  <h2>Bonusy</h2>

  <%self:exrc title="Hry">
    <p>Následující seznam obsahuje seznam všech divadelních her, které se hrají v divadle Pěst na oko. Každá hra má svůj název a trvání v minutách.</p>
<pre>hry = [
  ['Ňadro na ňadru na nádru', 180],
  ['Útok plyšových krokodýlů', 95],
  ['Cesta do říše zelí', 128],
  ['Romance na zdymadle', 144],
  ['Zátiší s mimozemšťanem', 135],
  ['Čtyři facky a dortík', 100],
  ['Motorová okurka', 165],
  ['Johnny Noir', 140],
  ['Pražská kavárna vrací úder', 130],
  ['Pět sester ve vratech', 111],
  ['Stařec a krajta', 187],
  ['Růžová nemoc', 210],
  ['Smrt v přímém přenosu', 265]
]</pre>

    <ol>
      <li>Pomocí cyklu projděte tento seznam a vypište na výstup názvy všech her.</li>
      <li>Vypište na výstup názvy všech her, které trvají více než 120 minut.</li>
      <li>Vypište na výstup názvy všech her spolu s jejich trváním v hodinách a minutách.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Průměr">
    <p>Napište cyklus, který projde zadaný seznam desetinných čísel a spočítá jejich průměr. Seznam čísel si vytvořte na začátku programu. </p>
  </%self:exrc>

  <%self:exrc title="Největší prvek">
    <p>Napište cyklus, který projde zadaný seznam celých čísel a najde v něm největší hodnotu.</p>
  </%self:exrc>
</%self:exercises>
