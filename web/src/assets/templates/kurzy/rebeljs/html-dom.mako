<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Základní struktura webové stránky s JavaScriptem</p>

<pre>
&lt;html&gt;
  &lt;body&gt;
    &lt;div&gt;Příklad textu&lt;/div&gt;
    &lt;div&gt;Nějaký další text&lt;/div&gt;
  &lt;/body&gt;
  &lt;script&gt;
    console.log('Ahoj světe');
  &lt;/script&gt;
&lt;/html&gt;
</pre>

  <p>Chceme-li k nějakému divu přistupovat pomocí JavaScriptu, musíme mu nastavit atribut <code>id</code>.</p>

  <pre>&lt;div id="text"&gt;Příklad textu&lt;/div&gt;</pre>

  <p>Tento element pak můžeme v JavaScriptu uložit do proměnné pmocí volání funkce <code>document.querySelector</code>.</p>

<pre>
const text = document.querySelector('#text');
</pre>

  <p>Takovému elementu pak můžeme měnit styly, například barvu textu.</p>

<pre>
text.style.color = 'blue';
</pre>
 
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