<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Abychom dokázali naši webovou stránku udělat interaktivní, potřebujeme být v JavaScriptu schopní takzvaně reagovat na události. Událost je například stisknutí tlačítka, kliknutí myší, stisknutí klávesy apod. Pro reakce na události budeme používat funkce, proto jsme je tolik procvičovali.</p>

  <h2>Procedury</h2>
  <p>Zatím naše vlastní funkce vždy něco počítaly a vracely nějakou hodnotu. Zajímavé je, že funkce nutně nemusí nic vracet. Místo toho, aby funkce něco spočítala, můžeme chtít aby prostě jen provedla nějakou činnost. Například vypsala něco na obrazovku, změnila něco na webové stránce, přehrála animaci apod. Funkcím, které nic nevrací se někdy říká <code>procedury</code>. </p>

  <p>Vezměme naši jednoduchou stránku s jedním nadpisem. </p>

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

  <p>Vyrobme si funkci <code>changeTitle</code>, která vybere ze stránky náš element s nadpisem a nastaví jeho text na zadanou hodnotu.</p>

<pre>const changeTitle = (titleText) => {
  const element = document.querySelector('#mytitle');
  element.textContent = titleText;
}</pre>

  <p>Díky této funkci můžeme vždy nastavit nadpis stránky na jakýkoliv text, se kterým funkci zavoláme. Všimněte si, že funkce opravdu nic nevrací, jen něco udělá a skončí.</p>

  <h2>Posluchače událostí</h2>
  <p>Pokud provedeme nějakou akci na naší stránce, například stiskneme klávesu, klikneme myší, klikneme na tlačítko, zascrollujeme apod., JavaScript vytvoří takzvanou <em>událost</em> (anglicky <em>event</em>). Událost je speciální typ hodnoty podobně jako číslo, řetězec, pole nebo funkce, můžeme ji tedy uložit do proměnné nebo poslat nějaké funkci jako vstup. Událost popisuje co se přesně stalo, například jaká klávesa byla zrovna stisknuta, kde na obrazovce bylo kliknuto a spoustu dalších informací.</p>
  
  <p>Pokud chceme na událost nějak zareagovat, tedy spustit nějaký kus kódu v případě, že událost nastane, musíme tento kód zabalit do funkce, která dostane událost jako svůj vstup. Takovým funkcím se říká <em>posluchače událostí</em> (anglicky <em>event listeners</em>).</p>

  <p>Mějme například funkci, která ve chvíli kdy nastane nějaká události nastaví nadpis naší stránky na nějakou novou hodnotu hodnotu. </p>

<pre>const setTitle = (event) => {
  const element = document.querySelector('#mytitle');
  element.textContent = 'New title';
}</pre>

  <p>Nyní musíme JavaScriptu říct, že má tuto funkci zavolat například ve chvíli, kdy uživatel klikne na stránku. JavaScript celé stránce říká dokument, takže musíme říct dokumentu, aby nastavil našeho posluchače na událost jménem <code>onclick</code>.</p>

<pre>document.addEventListener('onclick', setTitle);</pre>

  <p>Celá naše stránka pak bude vypadat takto:</p>

<pre>
&lt;html&gt;
  &lt;body&gt;
    &lt;div id=&quot;mytitle&quot;&gt;My Very First Webpage&lt;/div&gt;
    &lt;div&gt;My new DIV&lt;/div&gt;
  &lt;/body&gt;

  &lt;script&gt;
    const setTitle = (event) => {
      const element = document.querySelector('#mytitle');
      element.textContent = 'New title';
    };

    document.addEventListener('click', setTitle);
  &lt;/script&gt;
&lt;/html&gt;
</pre>

  <p>Nemusíme však poslouchat události jen na celém dokumentu. Můžeme například poslouchat kliknutí jen na nějakém elementu. Takto můžeme na stránku přidat například tlačítko a textové políčko.</p>

<pre>
&lt;html&gt;
  &lt;body&gt;
    &lt;div id=&quot;mytitle&quot;&gt;My Very First Webpage&lt;/div&gt;
    &lt;input type=&quot;text&quot; id=&quot;name&quot; /&gt;
    &lt;button id=&quot;greet&quot;&gt;Greet&lt;/button&gt;
  &lt;/body&gt;

  &lt;script&gt;
    const greet = (event) => {
      const nameElm = document.querySelector('#name');
      const titleElm = document.querySelector('#mytitle');
      titleElm.textContent = 'Hello ' + nameElm.value;
    };

    const btnElm = document.querySelector('#greet');
    btnElm.addEventListener('click', greet);
  &lt;/script&gt;
&lt;/html&gt;
</pre>
  
  <h3>Reagování na stisk klávesy</h3>
  <p>Událost <code>click</code> samozřejmě není jediná událost, kterou můžete na webové stránce použít. Můžete vyzkoušet například následující událost <code>keydown</code>, která reaguje na stisk klávesy. Tuto událost je dobré připojit na samotný dokument. Číslo sitknuté klávesy najdeme ve vlastnosi <code>keyCode</code> přímo na události, kterou jsme obdrželi v našem posluchači. Například klávesa enter má kód 13.</p>

  <p>Můžeme tak například napsat program, který místo na kliknutí změní nadpis stránky na stisk klávesy enter.</p>

<pre>
const setTitle = (event) => {
  if (event.keyCode === 32) {
    const element = document.querySelector('#mytitle');
    element.textContent = 'New title';
  }
};

document.addEventListener('keydown', setTitle);
</pre>
    
  <p>Pokud chcete zjistit jaký kód patří jaké klávese, velmi dobrým pomocníkem je <a href="https://keycode.info/">tato stránka</a>.</p>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>

  <%self:exrc title="Pozdrav">
    <ol>
      <li>Vytvořte webovou stránku, která při kliknutí na dokument zobrazí jednoduchý pozdrav pomocí funkce <code>alert</code>.</li>
      <li>Vytvořte na stránce div s nějakým textem. Změňte stránku tak, aby pozdrav zobrazila nikoliv pomocí <code>alert</code> ale jako text přímo ve vašem divu.</li>
      <li>Změňte stránku tak, aby zobrazila pozdrav nikoliv na kliknutí, ale na stisknutí mezerníku.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Ovládání mamuta">
    <p>Vytvořte stránku, která bude obsahovat jeden div element s id <code>mammoth</code>. V JavaScriptu tomuto element nastavte</p>

    <ol>
      <li>Výšku a šířku na 256 pixelů.</li>
      <li>Obrázek pozadí na obrázek mamuta.</li>
      <li>Pozicování (<code>style.position</code>) na <code>absolute</code>.</li>
    </ol>

    <p>Nyní můžete s mamutem začít hýbat po obrazovce. Zkuste například na stisk šipky doprava posunout mamuta o 100px doprava (nastavte vlastnost <code>style.left</code>). Na stisknutí šipky dolů nastavte vlastnost <code>style.top</code> také na 100px.</p>

    <p>Pokud si pozici mamuta uložíte do proměnných, například <code>x</code> a <code>y</code>, můžete k těmto proměnným postupně </p>
  </%self:exrc>

  <%self:exrc title="Animace chůze">
    <p>Stáhněte si <a href="/img/rebeljs/sprite-walk.png" download>tento obrázek</a> s rozfázovanou chůzí. Vytvořte webovou stránku s jedním div elementem, kterému v JavaScriptu nastavte pozadí na tento obrázek a nastavte tomuto elementu velikost na 184 x 325 pixelů. </p>

    <p>Zaexperimentujte si s vlastností <code>style.backgroundPositionX</code>. Ta se nastavuje v pixelech a umožní vám posunovat obrázek na pozadí elementu. Zkuste pomocí této vlastnosti zobrazit různé fáze chůze.</p>

    <ol>
      <li>Zařiďte, aby se fáze chůze měnily, když uživatel stiskne mezerník.</li>
      <li>Změňte váš program tak, aby reagoval na stisknutí šipky doprava. Zkuste při mačkání šipky doprava měnit pozici vašeho elementu tak, aby to vypadalo, že se panáček prochází po obrazovce.</li>
    </ol>

    <p>Nyní můžete s mamutem začít hýbat po obrazovce. Zkuste například na stisk šipky doprava posunout mamuta o 100px doprava (nastavte vlastnost <code>style.left</code>). Na stisknutí šipky dolů nastavte vlastnost <code>style.top</code> také na 100px.</p>

    <p>Pokud si pozici mamuta uložíte do proměnných, například <code>x</code> a <code>y</code>, můžete k těmto proměnným postupně </p>
  </%self:exrc>
</%self:exercises>