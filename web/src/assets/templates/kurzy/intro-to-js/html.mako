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
  &lt;head&gt;&lt;/head&gt;
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
  <p>Stránka napsaná v jazyce HTML se skládá z takzvanýcb <em>značek</em>. V našem kousku kódu výše jsme viděli čyři různí značky: <code>html</code>, <code>head</code>, <code>body</code> a <code>div</code>. Každá ze značek podává prohlížeči nějakou informaci o obsahu stránky. </p>

  <dl>
    <dt>Značka <code>html</code></dt>
    <dd>Uvnitř této značky se vždy nachází celá webová stránka.</dd>

    <dt>Značka <code>head</code></dt>
    <dd>Takzvaná hlavička. Obsahuje různé informace pro prohlížeč, které se přímo na stránce nezobrazují. V našem případě je prázdná, poslouží nám až později.</dd>
    
    <dt>Značka <code>body</code></dt>
    <dd>Všechno, co se má obrazit na stránce v prohlížeči, patří do značky <code>body</code>.</dd>

    <dt>Značka <code>div</code></dt>
    <dd>Tato značka slouží k rozdělení obsahu stránky do logických celků. Tuto značku budeme používat ze všech nejvíc.</dd>
  </dl>

  <p>Každá značka může u sebe mít tazvané atributy, což jsou různé doplňující informace. K naší značce <code>div</code> jsme například přidali atribut <code>id</code>, který nám umožní s touto značkou později pracovat pomocí JavaScriptu. </p>

  <h2>HTML a JavaScript</h2>
  <p>Není žádný problém rozšířit naši stránku o další značky. Můžeme například hned za značku <code>div</code> přidat ještě jednu, tentokrát bez atributu <code>id</code>.</p>

<pre>
&lt;html&gt;
  &lt;head&gt;&lt;/head&gt;
  &lt;body&gt;
    &lt;div id=&quot;mytitle&quot;&gt;My Very First Webpage&lt;/div&gt;
    &lt;div&gt;My new DIV&lt;/div&gt;
  &lt;/body&gt;
&lt;/html&gt;
</pre>

  <p>Naším cílem ovšem není psát stránku v HTML, ale je vytvářet ji a měnit pomocí JavaScriptu. </p>

  <p>Zobrazte naší stránku v prohlížeči Chrome a otevřete JavaScript konzoli. Zavoláním funkce <code>document.getElementById</code> můžeme získat jakoukoliv značku na naší stránce, pokud známe její <code>id</code>. Uložme si do proměnné značku s identifikátorem <code>"mytitle"</code></p>

  <pre>&gt; let element = document.getElementById('mytitle')</pre>

  <p>Každá takto získaná značka (v JavaScritpu říkáme <em>element</em>) má mnoho vlastností, které můžeme měnit. </p>

  <dl>
    <dt><code>element.textContent</code></dt>
    <dd>
      <p>Nastaví text uvnitř elementu:</p>
      <pre>&gt; element.textContent = 'New text'</pre>
    </dd>
  </dl>

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
  <p>Pomocí stylů můžeme elementu také nastavit obrázek na pozadí. Za tímto učelem si stáhněte náledující <a href="/img/intro-to-js/mammoth.png" download>obrázek mamuta</a> a ulože jej do složky, ve které máme naši HTML stránku. Nyní můžeme psát</p>

<pre>element.style.backroundImage = 'url(mammoth.png)'</pre>

  <h3>Vytváření elementů</h3>
  <p>Pomocí JavaScripu můžeme elementy nejen měnit, ale také vyvářet.</p>

<pre>&gt; let newElm = document.createElement('div')
&gt; newElm.textContent = 'New JS Element'
&gt; newElm.fontWeight = 'bold'</pre></pre>

  <p>Pokud chceme takový element zapojit do naší stránky, musíme jej připojit jako obsah nějakéheho nadřazeného elementu. Zapojme jej tedy dovnitř elementu <code>mytitle</code></p>

<pre>&gt; let mytitle = document.getElementById('mytitle')
&gt; mytitle.appendChild(newElm)</pre>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
</%self:exercises>