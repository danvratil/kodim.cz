<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Mnoho webových stránek na internetu obsahuje velmi zajímavá a užitečná data. Takových dat můžu být velký objem a mohou být rozházená po různých stránkách pod mnoha odkazy a není v našich silách je ručně ze stránek vykopírovat. Příkladem budiž například historická data o naměřených teplotách ze stránek <a href="http://portal.chmi.cz/historicka-data/pocasi/uzemni-teploty">Českého hydrometeorologického ústavu</a>. Tato data jsou dostupá pouze skrze tabulky vložené přímo do webových stránek. Pokud chceme takovéto množství dat ze stránek dostat do našho programu, musíme použít takzvaný <em>web scraping</em>.</p>

  <h2>HTML</h2>
  <p>Web scraping je technika pomocí které můžeme strojově číst obsah webových stránek na internetu. Webové stránky často vypadají velmi komplikovaně a sofistikovaně, ale nakonec jsou to pouhopouhé textové soubory psané ve speciálním jazyce zvaném HTML (HyperText Markup Language). Naštěstí pro nás není HTML jazyk programovací, nýbrž takzvaně <em>značkovací</em>. Není tedy zdaleka tak složitý jako například jazyk Python. Jazyk HTML má relativně jednoduchou strukturu a ani pro úplného začátečníka není těžké se v něm zorientovat. Pomocí HTML tvůrci webů definují samotný obsah stránek, tedy texty, obrázky, odkazy apod. Samotný vzhled stránky (barvičky, styl písma, rozmístění prvků na stránce apod.) se vytváří v jazyce zvaném CSS, který ale v tuto chvíli můžeme nechat být, neboť z hlediska zpracování dat nás vzhled stránek nezajímá.</p>

  <h3>HTML značky (tagy)</h3>
  <p>Přehled všech používaných HTML značek <a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element">najdete zde (anglicky)</a>.</p>

</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Porozumění HTML">
    <p>Cílem tohoto cvičení je pokusit se vyznat ve zdrojovém kódu jednoduché webové stránky a získat tak povědomí o tom jak funguje jazyk HTML. Postupujte dle následujících kroků.</p>
    
    <ol>
      <li>Stáhněte si následující ZIP soubor, který rozbalte někam na váš počítač. V rozbalené složce <code>dhmo</code> rozkliněte soubor <code>index.html</code>. V prohlížeči by se vám měla otevřít jednoduchá webová stránka pojednávající o škodlivosti jedné velmi zajímavé chemikálie. Stránka nevypadá příliš vábně, protože není napojena na žádné CSS styly a vídíme tedy jen čistý obsah.</li>
      
      <li>Složku <code>dhmo</code> si otevřete ve Visual Studiu a podívejte se na obsah souboru <code>index.html</code>. Uvidíte spoustu HTML značek. Některé z nich znáte, některé jste v životě neviděli. Nenechte se vylekat tím, že některým částem tohoto souboru vůbec nerozumíte. Zkuste v souboru najít nějaký kousek textu, který vidíte na vaší otevřené webové stránce. </li>
      
      <li>V úvodním odstavci stránky je několik překlepů. Opravte je přímo v souboru <code>index.html</code>, nezapomeňte jej uložit, a obnovte stránku ve vašem prohlížeči (zkratka Ctrl+R nebo CMD+R). Měli byste vidět vaše změny.</li>
      
      <li>V úvodním odstavci stránky je několik překlepů. Opravte je přímo v souboru <code>index.html</code>, nezapomeňte jej uložit, a obnovte stránku ve vašem prohlížeči (zkratka Ctrl+R nebo CMD+R). Měli byste vidět vaše změny.</li>

      <li>Najděte v souboru <code>index.html</code> část, která obsahuje výčet faktů o DHMO. Tyto seznamy jsou číslované, což naznačuje HTML značka <code>&lt;ol&gt;</code>. Změňte u obou seznamů tuto značku na <code>&lt;ul&gt;</code>, což znamená nečíslovaný seznam. Nezapomeňte změnit i uzavírací značku seznamu (ta s lomítkem). Otevírací a uzavírací značky musí vždy souhlasit!</li>

      <li>Najděte poblíž začátku souboru <code>index.html</code> značku <code>&lt;img&gt;</code>, která do stránky vkládá úvodní obrázek. Atribut <code>src</code> udává k cestu k souboru s obrázkem. Všimněte si, že blízko ke konci souboru těsně před seznamem odkazů je ještě jedna značka <code>&lt;img&gt;</code>, které ale atribut <code>src</code> chybí a proto na stránce žádný obrázek nevidíme. Nastavte atribut <code>src</code> na hodnotu <code>img/dhmo-ban.png</code> a podívejte se, jak se stránka změnila. </li>

      <li>Podobně jako s naším obrázkem, poslední odkaz v seznamu odkazů nemá atribut <code>href</code>, což způsobuje, že se odkaz na stránce nezobrazuje jako odkaz. Atribut <code>href</code> ríká, na kterou adresu má odkaz vést. Nastavte proto v posledním odkazu hodnotu atributu <code>href</code> na <code>http://www.snopes.com/science/dhmo.asp</code>.</li>
      
      <li>Téměř na začátku souboru <code>index.html</code> najdete značku <code>&lt;img&gt;</code>. Ta udává název stránky, který se zobrazuje v záložce prohlížeče. Změňte tento název prostě na "DHMO šíří hrůzu".
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
  
  <p>Abychom mohli v našem programu scrapovat, musíme najdřív webovou stránku otevřít. </p>

  <h2>Web scraping vs JavaScript</h2>
  <p>Web scraping je velmi mocná technika. Její úspěšnost však závisí na tom, jakým způsobem jsou webové stránky napsány. Pokud jsou napsány prasácky a nekonzistentně, tak si web scrapingem můžeme snadno způsobit velký bolehlav.</p>

  <p>Jeden z velých problému pro web scraping však představují stránky, které jsou generované v JavaScriptu</p>

</%self:lesson>