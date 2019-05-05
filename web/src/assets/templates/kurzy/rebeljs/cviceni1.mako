<%inherit file="/course-chapter.mako"/>

<%self:exercises>
  <h2>Cvičení</h2>

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

  <%self:exrc title="Ruleta">
    <p>Stáhněte si <a href="/img/intro-to-progr/roulette.png" download>obrázek rulety</a>. Zkuste napsat program, který dokáže ruletou otáčet. 

    <p>Pokud chcete otočit nějaký HTML element, stačí použít vlastnost <code>style.transform</code>. Pokud chceme náš element otočit například o 20 stupňů, stačí napsat </p>

<pre>element.style.transform = 'rotate(20deg)';</pre>

  <p>Můžete ruletou zkusit otáčet pomocí šipek doprava a doleva. Nebo můžete nastavit časovač pomocí funkce <code>setInterval</code> a otočit ruletu o malý kousek třeba desetkrát za vteřinu a vytvořit tak iluzi, že se ruleta točí sama.</p>
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