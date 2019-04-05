<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>JavaScript je jazyk, který se především používá k rozpohybování webových stránek. My v tomto kurzu webové stránky vytvářet nebudeme, protože to je obsáhlé téma, které si zaslouží vlastní kurz. Můžeme ovšem propojenosti webu a JavaScriptu využít k tomu, abychom naším programům dodali grafické rozhraní.</p>

  <h2>Jazyk HTML</h2>
  <p>K tomu, abychom vytvořili grafické rozhraní pro náš program použijeme jazyk HTML (HyperText Markup Language). V tomto jazyce se bežně píší webové stránky. Není to však jazyk programovací, nábrž takzvaně <em>značkovací</em>. Není proto ani zdaleka tak složitý jako například jazyky Python nebo JavaScript. Nepopisuje se v něm, jak se má stránka chovat, nýbrž jak má vypadat, tedy kde mají být umístěny texty, obrázky, co má v které částí stránky být napsáno a tak dále. Webové stránky často vypadají velmi komplikovaně a sofistikovaně, ale nakonec jsou to pouhopouhé textové soubory psané právě v HTML. Jazyk HTML má relativně jednoduchou strukturu a ani pro úplného začátečníka není těžké se v něm zorientovat.</p>

  <p>Naprosto základní stránku v HTML si vytvoříme takto:</p>

  <ol>
    <li>Někde na svém počítači si založte složku s názvem <code>mypage</code> a otevřete ji ve Visual Studiu.</li>
    <li>Uvnitř složky vytvoře textový soubor <code>index.html</code>. Ten bude obsahovat kód naší stránky v jazyce HTML.</li>
    <li>
      <p>Do souboru vložte tento kód:</p>
<pre>
&lt;html&gt;
  &lt;body&gt;
    &lt;div id=&quot;mytitle&quot;&gt;My Very First Webpage&lt;/div&gt;
  &lt;/body&gt;
&lt;/html&gt;
</pre>
    </li>
    <li>Otevřete si v průzkumníku souborů složku s tímto souborem a otevřete si váš soubor <code>index.html</code> v prohlížeči Chrome.</li>
  </ol>

  <p>Právě jste vytvořili nejjednodušší webovou stránku, jaká vůbec může existovat.</p>

  <h2>Značky a atributy</h2>
  <p>Stránka napsaná v jazyce HTML se skládá z takzvanýcb <em>značek</em>. V našem kousku kódu výše jsme viděli čtyři různí značky: <code>html</code>, <code>head</code>, <code>body</code> a <code>div</code>. Každá ze značek podává prohlížeči nějakou informaci o obsahu stránky. </p>

  <dl>
    <dt>Značka <code>html</code></dt>
    <dd>Uvnitř této značky se vždy nachází celá webová stránka.</dd>
    
    <dt>Značka <code>body</code></dt>
    <dd>Všechno, co se má obrazit na stránce v prohlížeči, patří do značky <code>body</code>.</dd>

    <dt>Značka <code>div</code></dt>
    <dd>Tato značka slouží k rozdělení obsahu stránky do logických celků. Tuto značku budeme používat ze všech nejvíc.</dd>

    <dt>Značka <code>script</code></dt>
    <dd>Slouží k tomu, abychom do naší stránky mohli vložit JavaScriptový kód.</dd>
  </dl>

  <p>Každá značka může u sebe mít takzvané atributy, což jsou různé doplňující informace. K naší značce <code>div</code> jsme například přidali atribut <code>id</code>, který nám umožní s touto značkou později pracovat pomocí JavaScriptu. </p>

  <h2>HTML a JavaScript</h2>
  <p>Není žádný problém rozšířit naši stránku o další značky. Můžeme například hned za značku <code>div</code> přidat ještě jednu, tentokrát bez atributu <code>id</code>.</p>

<pre>
&lt;html&gt;
  &lt;body&gt;
    &lt;div id=&quot;mytitle&quot;&gt;My Very First Webpage&lt;/div&gt;
    &lt;div&gt;My new DIV&lt;/div&gt;
  &lt;/body&gt;
&lt;/html&gt;
</pre>

  <p>Naším cílem ovšem není psát stránku v HTML, ale je vytvářet ji a měnit pomocí JavaScriptu. </p>

  <p>Zobrazte naší stránku v prohlížeči Chrome a otevřete JavaScript konzoli. Zavoláním funkce <code>document.querySelector</code> můžeme získat jakoukoliv značku na naší stránce, pokud známe její <code>id</code>. Uložme si do proměnné značku s identifikátorem <code>"mytitle"</code></p>

  <pre>&gt; let element = document.querySelector('#mytitle')</pre>

  <p>Každá takto získaná značka (v JavaScriptu říkáme <em>element</em>) má mnoho vlastností, které můžeme měnit. </p>

  <dl>
    <dt><code>element.textContent</code></dt>
    <dd>
      <p>Nastaví text uvnitř elementu:</p>
      <pre>&gt; element.textContent = 'New text'</pre>
    </dd>
  </dl>

  <p>Nyní můžeme náš JavaScript zapojit přímo do stránky, aby se spustit automaticky vždy, když se stránka načte. Stačí náš kód vložit mezi značky <code>script</code> jak jsme zvyklí.</p>

<pre>
&lt;html&gt;
  &lt;body&gt;
    &lt;div id=&quot;mytitle&quot;&gt;My Very First Webpage&lt;/div&gt;
    &lt;div&gt;My new DIV&lt;/div&gt;
  &lt;/body&gt;

  &lt;script&gt;
    const element = document.querySelector('#mytitle');
    element.textContent = 'New text';
  &lt;/script&gt;
&lt;/html&gt;
</pre>

  <h3>Styly</h3>
  <p>Obsah elementu jsme měnili pomocí vlastnosti <code>textContent</code>. Vzhled elementu můžeme měnit pomocí takzvaných stylů.</p>

  <dl>
    <dt><code>element.style.color</code></dt>
    <dd>
      <p>Barva textu:</p>
      <pre>&gt; element.style.color = 'orange'</pre>
    </dd>

    <dt><code>element.style.border</code></dt>
    <dd>
      <p>Rámeček kolem elementu:</p>
      <pre>&gt; element.style.border = '2px solid blue'</pre>
    </dd>

    <dt><code>element.style.width</code>, <code>element.style.height</code></dt>
    <dd>
      <p>Výška a šířka elementu:</p>
<pre>&gt; element.style.width = '250px'
&gt; element.style.height = '100px'</pre>
    </dd>
  </dl>

  <h3>Pozice elementu</h3>
  <p>Kromě výšky a šířky si také můžeme hrát s pozicí elementu, což jsou styly <code>left</code> a <code>top</code>. Aby nám ale nastavení pozice fungovalo, musíme změnit pozicování elementu na takzvaně <em>absolutní</em>.</p>

<pre>&gt; element.style.position = 'absolute'
&gt; element.style.top = '100px'
&gt; element.style.left = '200px'</pre>

  <h3>Obrázek na pozadí</h3>
  <p>Pomocí stylů můžeme elementu také nastavit obrázek na pozadí. Za tímto učelem si stáhněte následující <a href="/img/intro-to-js/mammoth.png" download>obrázek mamuta</a> a ulože jej do složky, ve které máme naši HTML stránku. Nyní můžeme psát</p>

<pre>element.style.backgroundImage = 'url(mammoth.png)'</pre>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Prágl">  
    <p>Vytvořte webovou stránku, která obsahuje následující tři odstavce textu. Každý odstavec vložte do samostatného divu.</p>

    <div 
      style="font-family: 'Ubuntu Mono'; border-left: 2px solid white; padding-left: 2rem;">    
      <p>Praha</p>

      <p>Praha (anglicky Pragmaticality, v Moravistánu Prágl nebo Cajzlograd, možná též varianta Zeislstadt, v Ostravštině potom Prdel, nebo Pragl pyčo) je město zhruba v prostředku té části České republiky, která už není Moravistánem. Mimo jiné je to i sídlo vlády, což jen trochu zmírňuje její ctižádost. Prahou protéká řeka Vltava. Hlavní složku místního ovzduší tvoří smog.</p>

      <p>Praha je známá také tím, že se v ní vyskytuje nejvíc veřejných záchodků v celém Česku. Kromě pěti pražských veřejných záchodků jsou ještě dva v Olomouci a jeden v Bučovicích. Brňané močí do kašny na Zelném rynku, jejich snahy o zařazení barokní kašny Parnas do registru veřejných záchodků Česka ale Cajzli v Práglu soustavně hatí a vodu považují za pitnou.</p>
    </div>

    <p>Prvnímu divu nastavte atribut <code>id</code> na <code>nadpis</code>, druhému na <code>uvod</code> a třetímu na <code>obsah</code></p>

    <p>Vytvořte na stránce sekci pro kód, ve které pomocí JavaScriptu proveďte následující úkoly.</p>

    <ol>
      <li>
        <p>Uložte si do proměnné <var>nadpis</var> element s id <code>nadpis</code>. Nastavte tomuto elementu</p>
      
        <ul>
          <li>velikost písma <code>fontSize</code> na <code>40px</code>.</li>
          <li>tloušťku písma <code>fontWeight</code> na <code>bold</code>.</li>
          <li>barvu písma <code>color</code> na <code>cornflowerblue</code>.</li>
          <li>dolní rámeček <code>borderBottom</code> na <code>2px solid cornflowerblue</code>.</li>
          <li>dolní vnější okraj <code>marginBottom</code> na <code>30px</code>.</li>
        </ul>
      </li>

      <li>
        <p>Uložte si do proměnné <var>uvod</var> element s id <code>uvod</code>. Nastavte tomuto elementu</p>
      
        <ul>
          <li>pozadí <code>background</code> na <code>lightgray</code>.</li>
          <li>vnitřní okraj <code>padding</code> na <code>20px</code>.</li>
          <li>styl fontu <code>fontStyle</code> na <code>italic</code>.</li>
        </ul>
      </li>

      <li>
        <p>Stáhněte si do počítače tento <a href="/img/rebeljs/prague.jpg" download>obrázek Prahy</a>. Vložte jej do složku <code>img</code> uvnitř vašeho projektu.</p>

        <p>Uložte si do proměnné <var>obsah</var> element s id <code>obsah</code>. Nastavte tomuto elementu</p>
      
        <ul>
          <li>obrázek pozadí <code>backgroundImage</code> na <code>url(img/prague.jpg)</code>.</li>
          <li>vnitřní okraj <code>padding</code> na <code>20px</code>.</li>
          <li>horní vnější okraj <code>marginTop</code> na <code>20px</code>.</li>        
          <li>velikost obrázku <code>backgroundSize</code> na <code>cover</code>. Tím zajistíme, že obrázek vyplní celou šířku elementu.</li>
        </ul>
      </li>

      <li>
        <p>Uložte si do proměnné <var>obsah</var> element s id <code>obsah</code>. Nastavte tomuto elementu</p>
      
        <ul>
          <li>pozadí <code>background</code> na <code>lightgray</code>.</li>
          <li>vnitřní okraj <code>padding</code> na <code>20px</code>.</li>
          <li>horní vnější okraj <code>marginTop</code> na <code>20px</code>.</li>        
          <li>dolní rámeček <code>borderBottom</code> na <code>2px solid cornflowerblue</code>.</li>
          <li>dolní vnější okraj <code>marginBottom</code> na <code>30px</code>.</li>
        </ul>
      </li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Mamut">
    <p>Vytvořte si novou složku s novým projektem a otevřete si ji ve VS Code. Vyrobte v ní soubor <code>index.html</code> podle šablony, kterou již znáte.</p>

    <p>Stáhněte si <a href="/img/rebeljs/mammoth.png" download>obrázek mamuta</a> a nahrajte jej do složky <code>img</code> ve vašem projektu. </p>

    <p>Unvitř těla stránky vytvořte div s id <code>mamut</code>. V JavaScriptu si uložte tento div do proměnné <var>mamut</var>.</p>
    
    <ol>
      <li>Nastavte mamutovi obrázek pozadí <code>backgroundImage</code> na <code>url(img/mammoth.png)</code>.</li>
      <li>Nastavte mamutovi šířku <code>width</code> na <code>256px</code>.</li>
      <li>Nastavte mamutovi výšku <code>height</code> na <code>256px</code>.</li>
      <li>Nastavte mamutovi pozicování <code>position</code> na <code>absolute</code>. To nám umožní umístit si mamuta na přesné souřadnice.</li>
      <li>Posuňte mamuta kousek doprava tím, že mu nastavíte styl <code>left</code> na <code>100px</code>.</li>
      <li>Posuňte mamuta kousek dolů tím, že mu nastavíte styl <code>top</code> na <code>200px</code>.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Poslušný mamut">
    <p>Pomocí funkce <code>prompt</code> se uživatele zeptejte nejdříve na x-ovou a poté na y-novou souřadnici mamuta. Umístěte mamuta na takto získané  souřadnice.</p>
  </%self:exrc>

  <%self:exrc title="Stádo mamutů">
    <ol>
      <li>Upravte předchozí cvičení a vytvořte na stránce čtyři mamuty, každého na jiné pozici na obrazovce. </li>

      <li>Použijte funkci <code>Math.random</code> a zařiďte, aby se všichni čtyři mamuti nacházeli na náhodných pozicích na stránce. Pokud chcete zařídit, aby vám mamuti nevylezli mimo stránku, zjistěte si rozměry okna prohlížeče. Šířku a výšku okna najdete v proměnných <code>document.body.clientWidth</code> a <code>document.body.clientHeight</code></li>
    </ol>
  </%self:exrc>
</%self:exercises>