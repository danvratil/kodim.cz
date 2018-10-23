<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>V našich programech budeme často potřebovat pracovat s různě strukturovanými daty, které obsahují mnoho druhů hodnot. Představme si například, že zpracováváme seznam absolventů nějakého kurzu. Každý absolvent má svoje jméno, příjmení (což jsou řetězce), rok absolvování kurzu (celé číslo), výslednou docházku v procentech (desetinné číslo) a informaci o tom, zda prospěl s vyznamenáním (pravdivostní hodnota).</p>

  <p>Jelikož už známe seznamy, mohli bychom zkusit reprezenovat absolventa třeba takto:</p>

<pre>absolvent = ['Petr', 'Roman', 2017, 0.95, True]</pre>

  <p>Hned ale vidíme, že z takového seznamu není úplně zřejmé, co která hodnota znamená. Musíme si pamatovat, že na indexu 0 je křestní jméno, na indexu 3 docházka známka apod. Mnohem pohodlnější by bylo, kdybychom mohli jednotlivé hodnoty místo indexování přímo pojmenovat. A přesně k tomuto účelu máme v Pythonu takzvané <em>slovníky</em>.</p>
  
  <h2>Slovníky</h2>
  
  <p>Slovník umožňuje pojmenovat hodnoty v nějaké datové struktuře tak, abychom pomocí těchto jmen mohli k hodnotám poté přistupovat. Našeho absolventa bychom pomocí slovníku reprezentovali takto</p>

<pre>absolvent = {
  'jmeno': 'Petr',
  'prijmeni': 'Roman',
  'rok': 2017,
  'dochazka': 0.95,
  'vyznamenani': True
}</pre>

  <p>Pokud pak chceme získat například jméno či docházku našeho absolventa, píšeme</p>

<pre>&gt;&gt;&gt; absolvent['jmeno']
'Petr'
&gt;&gt;&gt; absolvent['dochazka']
0.95</pre>

  <p>První důležitá věc ohledně slovníků je, že slovníky jsou opět hodnoty jako každé jiné. Mohou proto být součástí seznamů. Můžeme tedy snadno vyrobit seznam absolventů našeho kurzu:</p>

<pre>absolventi = [
  {'jmeno': 'Petr', 'prijmeni': 'Roman', 'rok': 2017, 'dochazka': 0.95, 'vyznamenani': True},
  {'jmeno': 'Jana', 'prijmeni': 'Kočanská', 'rok': 2015, 'dochazka': 0.92, 'vyznamenani': True},
  {'jmeno': 'Eva', 'prijmeni': 'Horká', 'rok': 2014, 'dochazka': 0.85, 'vyznamenani': False},
  {'jmeno': 'Ivo', 'prijmeni': 'Roubeník', 'rok': 2017, 'dochazka': 0.75, 'vyznamenani': False}
]</pre>

  <p>Kdybychom pak chtěli získat například příjmení absolventa na indexu 2, psali bychom </p>

  <div class="verbatim">
<pre>&gt;&gt;&gt; absolventi[2]['prijmeni']
'Horká'</pre>
  </div>

  <p>Nebo bychom mohli projít všechny absolventy a spočítat jejich průměrnou docházku na kurz.</p>

<pre>&gt;&gt;&gt; from statistics import mean
&gt;&gt;&gt; mean([ab['doochazka'] for ab in absolventi])
1.425</pre>

  <h3>Složitější struktury</h3>
  <p>Stejně jako u proměnných a seznamů můžeme do slovníku uložit jakoukoliv hodnotu. Není tedy problém mít ve slovníku seznam nebo další slovník. Tím se otvírá prostor pro mnohem komplikovanější datové struktury. Takto bychom mohli reprezentovat například kurz Czechitas jménem Úvod do programování.</p>

<pre>kurz = {
  nazev: 'Úvod do programování',
  lektor: 'Martin Podloucký',
  konani: [
    {
      misto: 'T-Mobile', 
      koucove: [
        'Dan Vrátil', 
        'Filip Kopecký', 
        'Martina Nemčoková'
      ], 
      ucastnic: 30
    },
    {
      misto: 'MSD IT', 
      koucove: [
        'Dan Vrátil', 
        'Zuzana Tučková', 
        'Martina Nemčoková'
      ], 
      ucastnic: 25
    },
    {
      misto: 'Škoda DigiLab', 
      koucove: [
        'Dan Vrátil', 
        'Filip Kopecký', 
        'Kateřina Kalášková'
      ], 
      ucastnic: 41
    }
  ]
}</pre>
  <p>Všimněte si, jak slovník představující jeden kurz obsahuje po klíčem <code>konani</code> seznam dalších slovníků. Každý z nich reprezentuje jedno konání kurzu a dále obsahuje například seznam koučů atd. Kdybychom tedy například chtěli seznam všech koučů na druhém konání kurzu, napsali bychom </p>

<pre>kurz['konani'][1]['koucove']</pre>

</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  
  <%self:exrc title="Kurz">
    <p>Založte si program v Pythonu a zkopírujte si do něj datovou strukturu kurzu Úvod do programování z lekce výše.</p>

    <ol>
      <li>Vypište na výstup počet účastnic na posledním konání kurzu.</li>
      <li>Vypište na výstup jméno posledního kouče na prvním konání kurzu.</li>
      <li>Vypište na výstup celkový počet konání kurzu.</li>
      <li>Vypište na výstup všechna místa, na kterých se kurz konal. Použijte chroustání seznamů.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Knihovna">
    <p>Uvažte, jak byste pomocí slovníku reprezentovali údaje o knize v knihovně. Jaké klíče a hodnoty ve slovníku budou? Zcela jistě bude každá kniha obsahovat například název. Chtěli bychom také, aby kniha umožňovala mít vícero autorů a vícero vydání. Ve vašem programu vytvořte proměnnou, který bude obsahovat jednu knihu s vámi vymyšlenou strukturou. </p>
  </%self:exrc>

  ${self.alert_done()}

  <h2>Bonusy</h2>
	<%self:exrc title="Recepty">
	<p>Prohlédněte na následujicí reprezentaci receptu:</p>
<pre>{
  'nazev': 'Batáty se šalvějí a pancettou',
  'narocnost': 'stredni',
  'doba': 30,
  'ingredience': [
    ['batát', '1'],
    ['olivový olej', '2 lžíce'],
    ['pancetta', '4-6 plátků'],
    ['přepuštěné máslo', '2 lžíce'],
    ['mletý černý pepř', '1/2 lžičky'],
    ['sůl', '1/2 lžičky'],
    ['muškátový oříšek', 'špetka'],
    ['česnek', '2 stroužky'],
    ['šalvějové lístky', '20-25']
  ]
}</pre>
		<p>Uložte si tutu strukturu do proměnné <span class="scode">recept</span> na začátek nového programu. Vypište pomocí funkce <span class="scode">print()</span> jaké potřebujeme množství druhé ingredience v receptu. </p>
  </%self:exrc>
</%self:exercises>

<%self:lesson>
  <h2>Formát JSON</h2>
	<p>JSON je formát pomocí kterého můžeme zapsat strukturovaná data jako čistý text. S jedním takovým datovým formátem jste se již potkali, jmenuje se CSV. </p>

	<p>JSON formát původně pochází z jazyka, který se jmenuje JavaScript. Ten se hodně používá pro tvorbu webových stránek a je starší než Python. Proto se tento formát, podobně jako CSV, všeobecně ujal jako standard pro výměnu dat mezi programy. Výhoda pro nás je, že JSON je vypadá téměř stejně jako Python slovníky. Liší se pouze tím, že vždy používá dvojité uvozovku a hodnoty <code>True</code> a <code>False</code> se píší s malým písmenem, tedy <code>true</code> a <code>false</code>. Náš absolventu kurzu z úvody lekce by tedy ve formátu JSON vypadal takto:</p>
  
  <pre>{"jmeno": "Petr", "prijmeni": "Roman", "rok": 2017, "dochazka" 0.95, "vyznamenani": true},</pre>

  <p>V Pythonu je velice jednoduché převést JSON na obyčejný Python slovník. Stačí nám k tomu modul jménem <code>json</code></p>

  <h2>Externí moduly a balíčky</h2>
  <p>Python sám o sobě obsahuje mnoho užitečných modulů pro řešení různých typů úloh. Už jsme viděli modul <code>random</code> pro práci s náhodnými čísly, modul <code>statistics</code> pro základní statistické funkce nebo modul <code>sys</code> pro práci s operačním systémem. Všem modulům, které jsou součástí základní instalace Pythonu, se dohromady říká <em>standardní knihovna</em>. Přehled všech modulů, které standardní knihovna obsahuje můžete najít <a href="https://docs.python.org/3/library/">v Python dokumentaci</a>. </p>

  <p>Čas od času ale v Pythonu potřebujeme vykonat nějakou činnost, pro kterou není ve standardní knihovně dostupný žádný modul. V takovém případě budeme muset z internetu stáhnout a naistalovat takzvaný <em>balíček</em>. Balíčky obsahují moduly, které po instalaci balíčku můžeme importovat v našem programu.</p>
  
  <p>Jedna ze základních dovedností při analýze dat je schopnost připojit se k nějakému veřejnému zdroji dat a tato data si stáhnout do svého programu. K tomu potřebujete balíček jménem <code>requests</code>. Nainstalujeme jej příkazem </p>

  <div class="verbatim">
<pre>pip3 install requests</pre>
  </div>

  <p>Pozor, že ve Windows tento příkaz vypadá takto.</p>

  <div class="verbatim">
<pre>pip install requests</pre>
  </div>

  <p>Může se stát, že výše uvedený příkaz nebude fungovat protože nemáte nainstalovaný správce balíčků <code>pip</code>- V takovém případě bude potřeba znova spustit instalaci Pythonu a během ní zaškrtnout, že chcete nainstalovat také <code>pip</code>.</p>

  <h3>Stahování dat z internetu</h3>
  <p>Pokud narazíte na vstřícného poskytovatele dat, je možné si data stáhnout z takzvaného API (Applicattion Programming Interface) přímo z internetu. Zkratka API se používá jako označení nějakého přípojného bodu na internetu, odkud si můžete stáhnout data v nějakém strojově čitelném formátu. Nejčastěji je tímto formátem takzvaný JSON. </p>

</%self:lesson>