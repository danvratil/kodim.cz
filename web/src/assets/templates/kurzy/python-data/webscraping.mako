<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Mnoho webových stránek na internetu obsahuje velmi zajímavá a užitečná data. Takových dat můžu být velký objem a mohou být rozházená po různých stránkách pod mnoha odkazy a není v našich silách je ručně ze stránek vykopírovat. Příkladem budiž například historická data o naměřených teplotách ze stránek <a href="http://portal.chmi.cz/historicka-data/pocasi/uzemni-teploty">Českého hydrometeorologického ústavu</a>. Tato data jsou dostupá pouze skrze tabulky vložené přímo do webových stránek. Pokud chceme takovéto množství dat ze stránek dostat do našho programu, musíme použít takzvaný <em>web scraping</em>.</p>

  <h2>HTML</h2>
  <p>Web scraping je technika pomocí které můžeme strojově číst obsah webových stránek na internetu. Webové stránky často vypadají velmi komplikovaně a sofistikovaně, ale nakonec jsou to pouhopouhé textové soubory psané ve speciálním jazyce zvaném HTML (HyperText Markup Language). Naštěstí pro nás není HTML jazyk programovací, nýbrž takzvaně <em>značkovací</em>. Není tedy zdaleka tak složitý jako například jazyk Python. Jazyk HTML má relativně jednoduchou strukturu a ani pro úplného začátečníka není těžké se v něm zorientovat. Pomocí HTML tvůrci webů definují samotný obsah stránek, tedy texty, obrázky, odkazy apod. Samotný vzhled stránky (barvičky, styl písma, rozmístění prvků na stránce apod.) se vytváří v jazyce zvaném CSS, který ale v tuto chvíli můžeme nechat být, neboť z hlediska zpracování dat nás vzhled stránek nezajímá.</p>

  <h3>HTML značky (tagy)</h3>
  <p>V následující ukázce vidíte kód webové stránky zárveň s tím jak by takovou stránku zobrazil prohlížeč. </p>

  <div class="row">
    <div class="col-md-6">
<pre class="small">
&lt;html&gt;
&lt;head&gt;
  &lt;meta charset=&quot;UTF-8&quot;&gt;
  &lt;title&gt;Uk&aacute;zka&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
  &lt;h1&gt;Nadpis prvn&iacute; &uacute;rovně&lt;/h1&gt;
  &lt;p&gt;
    Text nějak&eacute;ho odstavce, který obsahuje 
    &lt;em&gt;zvýrazněný text&lt;/em&gt; a také &lt;strong&gt;
    důležitý text.&lt;/strong&gt;
  &lt;/p&gt;

  &lt;h2&gt;Nadpis druhé úrovně&lt;/h2&gt;
  &lt;div class=&quot;sekce1&quot;&gt;
    &lt;p&gt;
      Druhý odstavec je v takzvaném divu, což je 
      značka, která nemá sama o sobě žádný význam.
      Také zde máme
      &lt;a href=&quothttp://www.czechitas.cz&quot&gt; odkaz na 
      stránky Czechitas&lt;/a&gt;.
    &lt;/p&gt;

    &lt;ol type=&quot;a&quot;&gt;
      &lt;li&gt;Prvn&iacute; položka seznamu&lt;/li&gt;
      &lt;li&gt;Druh&aacute; položka seznamu&lt;/li&gt;
      &lt;li&gt;Třet&iacute; položka seznamu&lt;/li&gt;
    &lt;/ol&gt;
  &lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
    </div>
    <div class="col-md-6">
      <img src="/img/python-data/ukazka-html.png" alt="Ukázka HTML" class="img-fluid">
    </div>
  </div>

  <p>Vytvořte si na svém počítači složku <code>ukazka-html</code> a otevřete ji ve Visual Studiu. Vytvořte v této složce soubor <code>ukazka.html</code> a zkopírujte do něj výše uvedený kód a uložte. Poté tento soubor najděte v průzkumníku a dvojiklikem by se vám měl otevřít ve vašem oblíbeném prohlížeči. Můžete tak zkontrolovat, že porhlížeč vaši stránku skutečně zobrazí tak, jak je uvedeno na obrázku výše.</p>

  <p>V naší první webové stránce jsme viděli takzvané <em>HTML značky</em>. Značky se píší do špičatých závorek a většina značek má otevírací a zavíračí část. Například značka <code>em</code> pro zvýraznění textu vypadá takto</p>
  
  <div class="text-center">
    <img src="/img/python-data/html-znacka.png" alt="HTML značka">
  </div>  

  <p>Značky mohou mít takzvané atributy, které dále specifikují, co značka bude přesně zobrazovat. Například značka <code>ol</code> představuje seznam položek a má atribut zvaný <code>type</code>, který určuje, jestli se číslování položek děje pomocí písmen nebo čísel.</p>

  <div class="text-center">
    <img src="/img/python-data/html-atribut.png" alt="HTML atribut">
  </div>  

  <p>Zajímavá je značka <code>div</code>, který se nijak nezobrazuje a slouží pouze k členění textu. Všimněte si, že v naší ukázkové stránkce je naní atribut <code>class</code>. Ten se používá k stylování stránky a často podle něj můžeme při webscrapingu odlišit důležité části stránky.</p>

  <p>Všech HTML značek je kolem stovky a mnoho z nich má spoustu možných atributů. Rozumět všem těmto značkám je prací webových vývojářů. Nám bude stačit získat nějaké malé povědomí alespoň o pár základních. </p>

  <p>Pokud by vás zajímalo, co vše je v HTML možné, přehled všech používaných značek <a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element">najdete zde (anglicky)</a>.</p>

</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Porozumění HTML">
    <p>Cílem tohoto cvičení je pokusit se vyznat ve zdrojovém kódu jednoduché webové stránky a získat tak povědomí o tom jak funguje jazyk HTML. Postupujte dle následujících kroků.</p>
    
    <ol>
      <li>Stáhněte si následující <a href="/download/python-data/dhmo.zip">ZIP soubor</a>, který rozbalte někam na váš počítač. V rozbalené složce <code>dhmo</code> rozkliněte soubor <code>index.html</code>. V prohlížeči by se vám měla otevřít jednoduchá webová stránka pojednávající o škodlivosti jedné velmi zajímavé chemikálie. Stránka nevypadá příliš vábně, protože není napojena na žádné CSS styly a vídíme tedy jen čistý obsah.</li>
      
      <li>Složku <code>dhmo</code> si otevřete ve Visual Studiu a podívejte se na obsah souboru <code>index.html</code>. Uvidíte spoustu HTML značek. Některé z nich znáte, některé jste v životě neviděli. Nenechte se vylekat tím, že některým částem tohoto souboru vůbec nerozumíte. Zkuste v souboru najít nějaký kousek textu, který vidíte na vaší otevřené webové stránce. </li>
      
      <li>V úvodním odstavci stránky je několik překlepů. Opravte je přímo v souboru <code>index.html</code>, nezapomeňte jej uložit, a obnovte stránku ve vašem prohlížeči (zkratka Ctrl+R nebo CMD+R). Měli byste vidět vaše změny.</li>
      
      <li>Najděte v souboru <code>index.html</code> část, která obsahuje výčet faktů o DHMO. Tyto seznamy jsou číslované, což naznačuje HTML značka <code>&lt;ol&gt;</code>. Změňte u obou seznamů tuto značku na <code>&lt;ul&gt;</code>, což znamená nečíslovaný seznam. Nezapomeňte změnit i uzavírací značku seznamu (ta s lomítkem). Otevírací a uzavírací značky musí vždy souhlasit!</li>

      <li>Najděte poblíž začátku souboru <code>index.html</code> značku <code>&lt;img&gt;</code>, která do stránky vkládá úvodní obrázek. Atribut <code>src</code> udává k cestu k souboru s obrázkem. Všimněte si, že blízko ke konci souboru těsně před seznamem odkazů je ještě jedna značka <code>&lt;img&gt;</code>, které ale atribut <code>src</code> chybí a proto na stránce žádný obrázek nevidíme. Nastavte atribut <code>src</code> na hodnotu <code>img/dhmo-ban.png</code> a podívejte se, jak se stránka změnila. </li>

      <li>Podobně jako s naším obrázkem, poslední odkaz v seznamu odkazů nemá atribut <code>href</code>, což způsobuje, že se odkaz na stránce nezobrazuje jako odkaz. Atribut <code>href</code> ríká, na kterou adresu má odkaz vést. Nastavte proto v posledním odkazu hodnotu atributu <code>href</code> na <code>http://www.snopes.com/science/dhmo.asp</code>.</li>
      
      <li>Téměř na začátku souboru <code>index.html</code> najdete značku <code>&lt;title&gt;</code>. Ta udává název stránky, který se zobrazuje v záložce prohlížeče. Změňte tento název prostě na "DHMO šíří hrůzu".
      </li>

      <li>
        <p>Pokud chcete vidět, jak by tato stránka vypadala nastylovaná, vložte na nový řádek před značkou <code>&lt;title&gt;</code> tento kód</li></p>
      
        <pre>&lt;link rel="stylesheet" href="style.css" /&gt;</pre>
      
        <p>Uložte soubor, obnovte stránku v prohlížeči a kochejte se.</p>
      </li>
    </ol>
  </%self:exrc>
</%self:exercises>

<%self:lesson>
  <h2>Web scraping v Pythonu</h2>
  <p>Abychom mohli s obsahem webových stránek pracovat přímo v Pythonu, potřebujeme nainstalovat modul, který umí číst HTML značky a pomocí těchto značek v HTML souborech vyhledávat. Takových modulů pro jazyk Pythoh existuje vícero. My použijeme balíček zvaný <code>requests-html</code>, který je určený přímo pro web scraping. Nainstalovat jej můžeme příkazem </p>

  <pre>pip3 install requests-html</pre>

  <p>Opět pozor, že na Windows je tento příkaz bez čísla 3.</p>

  <pre>pip install requests-html</pre>
  
  <p>Abychom mohli v našem programu scrapovat, musíme najdřív webovou stránku otevřít. Vzhledem k tomu, že obsah textového souboru už do proměnné načíst umíme, stačí tedy jen použít náš nový modul, aby si tento obsah přečetl a umožnil v něm vyhledávat.</p>

  <p>Ve Visual Studiu ve složce s naší ukázkovou stránkou si vytvořte program <code>scrape.py</code> s tímto obsahem</p>

<pre>from requests_html import HTML
soubor = open('sample.html', encoding="utf-8")
obsah = soubor.read()
soubor.close()
html = HTML(html=obsah)</pre>

  <p>Proměnná <var>html</var>, nyní obsahuje naši HTML stránku ve formátu, který můžeme použít k vyhledávání.</p>

  <p>HTML značky můžeme vyhledávat podle jména. Takto například najdeme všechny odstavce a vypíšeme jejich text každý na nový řádek.</p>

<pre>for odstavec in html.find('p'):
  print(odstavec.text)
</pre>

  <p>Velmi časté je také vyhledávání podle třídy (atribut <code>class</code>). Třídy se vyhledávají tak, že jejich název začneme tečkou.</p>

<pre>html.find('.sekce1')</pre>

  <p>Snadno také můžeme přistupovat k atributům nalezených značek. Takto můžeme například najít adresy všech odkazů na naší stránce. </p>

<pre>for odkaz in html.find('a'):
  print(odkaz.attrs['href'])</pre>

  <h3>Složitější pravidla vyhledávání</h3>
  <p>Vyhledávací řetězce v metodě <code>find()</code> mohou být složitější, než jak jsme viděli doposud.</p>

  <p>Můžeme vyhledávat podle více značek najednou. Například najít všechny nadpisy první i druhé úrovně.</p>

  <pre>html.find('h1, h2')</pre>

  <p>Můžeme vyhledávat podle atributů. Například najít všechny seznamy, kde atribut <code>type</code> je roven <code>a</code>.</p>

  <pre>html.find('ol[type="a"]')</pre>

  <p>Můžeme vyhledávat podle zanoření. Například najít všechny odstavce, které jsou uvnitř značky s třídou <code>sekce1</code>.</p>

  <pre>html.find('.sekce1 p')</pre>

  <p>Nebo najít všechny položky ve všech seznamech, jejichž atribut <code>type</code> je roven <code>a</code>.</p>

  <pre>html.find('ol[type="a"] li')</pre>

  <h2>Scraping přes internet</h2>
  <p>Zatím jsme scrapovali pouze stránku, kterou jsme měli uloženou na disku. Pomocí modulu <code>requests-html</code> můžeme však také snadno otevřít stránku přímo na internetu. Na adrese <a href="http://scrape.kodim.cz/sample/index">http://scrape.kodim.cz/sample/index</a> najdete naši malou ukázkovou stránku z úvodu. Na adrese <a href="http://scrape.kodim.cz/dhmo/index">http://scrape.kodim.cz/dhmo/index</a> najdete také finální verzi stránky šířící poplach ohledně DHMO. </p>

  <p>Načteme v Pythonu první z odkazů a stejně jako prve vypíšeme texty všech odstavců.</p>

<pre>from requests_html import HTMLSession
session = HTMLSession()
stranka = session.get('http://scrape.kodim.cz/sample/index')
for odstavec in stranka.html.find('p'):
  print(odstavec.text)</pre>

  <p>Dále můžeme postupovat úplně stejně jako když jsme zpracovávali stránky z disku.</p>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Scraping DHMO">  
    <p>Napište program, který bude pracovat se stránkou o DHMO na adrese <a href="http://scrape.kodim.cz/dhmo/index">http://scrape.kodim.cz/dhmo/index</a>. </p>

    <ol>
      <li>Nechť program vypíše na výstup nadpisy všech sekcí (značka <code>h2</code>).</li>
      <li>Nechť program yypíše na výstup cesty všech odkazů na stránce (značka <code>a</code>, atribut <code>href</code>). </li>
      <li>Nechť program vypíše na výstup cesty ke všem obrázkům na stránce (značka <code>img</code>, atribut <code>src</code>.</li>
    </ol>
  </%self:exrc>  

  <%self:exrc title="Scraping Kodim.cz">  
    <p>Jistě vás nepřekvapí, že stránky, které právě čtete se dají také snadno scrapovat.</p>

    <ol>
      <li>Napište program, který vezme zpracuje lekce z <a href="http://kodim.cz/kurzy/python-data/">titulní stránky</a> Digitální akademie a uloží je do souboru ve formátu CSV. Ten bude v prvním sloupci obsahovat název lekce a v druhém webovou adresu lekce. </li>
      <li>Napište program, který vypíše na výstup všechny domácí úložky z lekce 2 (povinné i nepovinné) spolu s jejich obtížností.</li>
    </ol>
  </%self:exrc>  

</%self:exercises>

<%self:lesson>
  <h2>Web scraping vs JavaScript</h2>
  <p>Web scraping je velmi mocná technika. Její úspěšnost však závisí na tom, jakým způsobem jsou webové stránky napsány. Pokud jsou napsány prasácky a nekonzistentně, tak si web scrapingem můžeme snadno způsobit velký bolehlav.</p>

  <p>Jeden z velých problému pro web scraping však představují stránky, které jsou generované v JavaScriptu</p>

</%self:lesson>