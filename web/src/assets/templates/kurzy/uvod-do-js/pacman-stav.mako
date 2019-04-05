<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>V programování se často setkáme s pojmem <em>stav</em>. Mnoho věcí kolem nás má nějaký stav. Například světlo ve vašem pokoji je ve stavu <code>vypnuto</code> nebo <code>zapnuto</code>. Takový stav by šel v JavaScriptu vyjádřit pomocí hodnot <code>true</code> a <code>false</code>. Pokud máte doma sofistikovanější osvětlení, u kterého můžete plynule měnit intenzitu, mohl by stav být reprezentován například desetinným číslem od 0 do 1. Hodnota 0.75 by pak znamenala, že světlo je rozsvíceno na tři čtvrtiny z maxima.</p>

  <p>Stav nemusí být jen takto jednoduchá hodnota. Například vaše pračka může být v daleko složitějším stavu, který zahrnuje na jakou teplotu je nastavená, kolik minut už uběhlo z pracího programu, kolik je v ní prádla, zda po praní bude následovat ždímání, na kolik otáček se bude ždímat atd. Na to, abychom dokázali stav pračky nějak popsat a uložit potřebujeme mnoho proměnných.</p>

  <h2>Stav pacmana</h2>
  <p>Podobně se to má s naším pacmanem. Jeho stav zatím zahrnuje pouze to, kde se zrovna na hrací ploše nachází. Stav pacmana tedy zatím máme uložen ve dvou proměnných <code>pacX</code> a <code>pacY</code>. Později nám přibudou další. Jistě jste si při prohlížení obrázků všimli, že pacman může mýt buď holka nebo kluk, může mít ruznou barvu pleti, může se dívat různým směrem, může mít buď zavřenou nebo otevřenou pusu.</p>

  <p>Dříve, než se pustíme do rozšiřování stavu našeho pacmana si ale musíme uvědomit, že vždy, když se stav pacmana nějak změní, tedy když se nějak změní hodnoty v proměnných <code>pacX</code> a <code>pacY</code>, potřebujeme tyto změnu nějak reflektovat na naší webové stránce. Jinak by se sice stav změnil, ale naše webová stránka by se nijak nezměnila  a obrázek pacmana by pořád trčel tam, kde byl. </p>

  <p>Proto je nejlepší vyrobit si funkci, která se přesně o toto bude starat. Vezme stav našeho pacmana a změní webovou stránku tak, aby tento stav správně zobrazovala. Pojmenujme tuto funkci například <code>updatePacman</code>. V našem případě zatím děláme pouze to, že nastavujeme pozici pacmana podle hodnot v proměnných <var>pacX</var> a <var>pacY</var>. Kód funkce může tedy vypadat například takto:</p>

<pre>
  const updatePacman = (x, y) => {
    const pacmanElm = document.querySelector('#pacman');
    pacmanElm.style.left = x;
    pacmanElm.style.top = y;
  };
</pre>  

  <p>Pokaždé, když naši funkci zavoláme takto </p>

<pre>
  updatePacman(pacX, pacY);
</pre>  

  <p>naše stránka zobrazí pacmana na správné pozici. Ideální je volat tuto funkci vždy na konci funkce, která se stará o reakci na stisk klávesy. Při stisku klávesy vždy změním stav pacmana podle toho, jakou klávesu uživatel sisknul, a poté provedeme volání funkce <code>udpatePacman</code>, která stav propíše do webové stránky. </p>

</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  
  <%self:exrc title="Pusa">
    <p>Jak už jsme vyložili výše, zatím stav našeho pacmana sestává pouze ze dvou proměnných. Přidejte další proměnou jménem <var>mouthOpen</var>, která bude obsahovat buď <code>true</code> nebo <code>false</code> podle toho, jestli má pacman otevřenou nebo zavřenou pusu.</p>

    <p>Prozkoumejte styly jménem <code>backgroundPositionX</code> a <code>backgroundPositionY</code>. Pomocí nich můžete hýbat s obrázkem na pozadí pacmana a střídat tak různé jeho výrazy a otočení.</p>  

    <p>Upravte funkci <code>updatePacman</code> tak, aby podle hodnoty proměnné <var>mouthOpen</var> nastavila správnou pozici obrázku pacmana podle toho, jestli má zavřenou nebo otevřenou pusu. Zařiďte, aby pacman při každém pohybu střídal otevřenou a zavřenou pusu. </p>  
  </%self:exrc>
</%self:exercises>  