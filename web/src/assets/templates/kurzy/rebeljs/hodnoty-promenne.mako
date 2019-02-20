<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <h2>Hrací plán</h2>
  <p>Hracímu plánu naší hry budeme anglicky říkat <em>stage</em>. Bude se skládat z takzvaných dlaždic (<em>tile</em>). </p>

  <p>Obrazovka počítače se zkládá z malých svítících bodů, takzvaných pixelů.   </p>

  <img src="/img/rebeljs/stage.svg" class="w-100 img-fluid" alt="Hrací plán">
</%self:lesson>

<%self:exercises>
  <h2>Hodnoty a počítání</h2>

  <%self:exrc title="Velikost hrací plochy">  
    <p>Hrací plocha hry Pacman se bude skládat z dlaždic o velikosti 85&times;85 pixelů. Přepokládejme, že hrací plocha má rozměry 11&times;6 dlaždic. Použijte JavaScript konzoli k tomu, abyste spočítali, jaká bude šířka a výška hrací plochy v pixelech.</p>
  </%self:exrc>

  <%self:exrc title="Hrátky s řetězci">  
    <ol>
      <li>Vytvořte řetězec, který bude obsahovat vaše křestní jméno.</li>
      <li>Vytvořte řetězec, který bude obsahovat vaše celé jméno tak, že sečtete řetězec s vaším křestním jménem a řetězec s vaším příjmením.</li>
      <li>Vytvořte emailovou adresu, která vznikne součtem vašeho křestního jména, tečky, příjmení, zavináče a domény <code>gmail.com</code></li>
    </ol>
    <p></p>
  </%self:exrc>

  <h3>Bonusy</h3>
  
  <%self:exrc title="Hrnečky">
    <ol>
      <li>
        <p><a href="https://cs.wikipedia.org/wiki/Chr%C3%A1n%C4%9Bn%C3%A1_d%C3%ADlna" target="_blank">Chráněná dílna</a> má za jeden měsíc (30 dní) vyrobit 400 malovaných hrnečků. Za prvních šest dní se jim podařilo vyrobit 14 hrnečků denně. Kolik hrnečků jím ještě zbývá vyrobit?</p>
      </li>
      <li>
        <p>Pokud bude dílna pokračovat tímto tempem celý měsíc, má naději na to zakázku stihnout?</p>
      </li>
    </ol>
  </%self:exrc>    

  <%self:exrc title="Svítiplyn versus vzduch">
    <ol>
      <li>
        <p>Jeden m<sup>3</sup> vzduchu váží 1.3 kg, stejný objem <a href="https://cs.wikipedia.org/wiki/Sv%C3%ADtiplyn" target="_blank">svítiplynu</a> váží 0.8 kg. Kolikrát je svítiplyn lehčí než vzduch?</p>
      </li>
    </ol>
  </%self:exrc>    

  <%self:exrc title="Linoleum">
    <ol>
      <li>
        <p>Za linoleum do obdélníkové chodby délky 15 m jsme zaplatili 2 592 Kč. Příští měsíc byla v obchodě vypsána akce, kdy každý metr linolea nad 10 m je o 25% levnější. Kolik korun jsme mohli ušetřit, kdybychom provedli nákup o měsíc později?</p>
      </li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Úroky">
    <p>Fíha banka a.s. nabízí na svých stránkách spořící účet s úrokem 2.4%. Když si na takový účet uložíte 1&nbsp;000&nbsp;000 kč, kolik peněz nastřádáte za 10 let?</p>
  </%self:exrc>

  <%self:exrc title="Koberec">
    <p>Do pokoje tvaru čtverce o rozloze 30m<sup>2</sup> potřebujeme koupit nový koberec. Jakou délku má mít strana koberce? Vejde se nám srolovaný do dodávky s nákladovým prostorem dlouhým 5m?</p>
  </%self:exrc>

  <h2>Proměnné</h2>
  
  <%self:exrc title="Pozice pacmana">
    <p>Představme si jednoho pacmana na nějaké pozici na našem hracím plánu. Uložte do proměnné <var>xpos</var> x-ovou souřadnici této pozice vyjádřenou v jednotkách mřížky. Do proměnné <var>ypos</var> uložte pozici na ose y. Do proměnných <var>xpx</var> a <var>ypx</var> uložte souřadnice přepočítané na pixely.</p>
  </%self:exrc>

  <%self:exrc title="Štítek pacmana">
    <p>Každý pacman bude mít pod svým obrázekm štítek se svým jménem a počtem nasbíraných jablek. Uložte do proměnné <var>name</var> jméno pacmana a do proměnné <var>apples</var> počet jablek, které nasbíral. Vytvořte proměnnou <var>label</var>, ve které dáte dohromady jméno pacmana a počet jeho jablek jako jeden řetězec. Ten bude vypadat například takto: </p>

    <pre>Mirek: 13</pre>
  </%self:exrc>

</%self:exercises>