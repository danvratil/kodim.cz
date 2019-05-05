<%inherit file="/course-chapter.mako"/>

<%self:lesson>

  <p>Do této chvíle všechny naše programy vypadaly jako sekvence příkazů vykonávané jeden za druhým a měly pouze jeden možný průběh. Pro komplikovanější programy ale budeme potřebovat umožnit, aby se některé části programu vykonaly jen za určitých <em>podmínek</em>, tedy aby se naše programy dokázaly rozhodovat a měnit svoje chování na základě zadaného vstupu od uživatele.</p>

  <h2>Porovnávací operátory</h2>
  <p>V podmínkách jsme zatím používali operátory menší než <code>&lt;</code> a větší nebo rovno <code>&gt;=</code>. Zde je přehled všech ostatních porovnávacích operátorů</p>

  <ul>
    <li>rovno: <strong>===</strong></li>
    <li>nerovno: <strong>!==</strong></li>
    <li>větší: <strong>&gt;</strong></li>
    <li>větší nebo rovno: <strong>&gt;=</strong></li>
    <li>menší: <strong>&lt;</strong></li>
    <li>menší nebo rovno: <strong>&lt;=</strong></li>
  </ul>

  <p>Všimněte si, že rovnost se testuje pomocí tří rovná se. Je to proto, že jedno rovná se už používáme k něčemu jinému - k přiřazení hodnoty do proměnné, a dvě rovná se v JavaScriptu používají k něčemu jinému.</p>
</%self:lesson>

<%self:exercises>

  <h2>Cvičení</h2>

  <%self:exrc title="Jednoduché podmínky">
    <ol>
      <li>
        <p>Založte si stránku <code>prihlaseni.html</code>. V tomto nechte uživatele zadat svoje uživatelské jméno a poté heslo. Použije k tomu funkci <code>prompt</code>- Pokud se heslo shoduje s heslem <em>simsalabim</em> vypište na výstup</p>

        <pre>Smíš vstoupit</pre>
      </li>
      <li>
        <p>Upravte tento program tak, by vypsal </p>

        <pre>Vstup nepovolen</pre>
        
        <p>pokud uživatel zadá špatné heslo.</p>
      </li>
      <li>
        <p>Upravte dále program tak, že pokud uživatel zadá správné heslo, program se ho ještě zeptá na věk a pustí jej dál pouze pokud je starší 18ti let.</p>
      </li>
      <li>
        <p>Pokud chcete, můžete program rozšířit tak, aby místo funkce <code>prompt</code> používal textové políčko na webové stránce..</p>
      </li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Registrace">
    <p>Založte si stránku <code>registrace.html</code>. Stránka nechá uživatele, aby si zvolil uživatelské jméno a heslo. Heslo jej nechejte zadat dvakrát a ověřte, že jej uživatel zadal dvakrát stejně. V opačném případě vypište varování, že hesla nejsou stejná. Při prvním zadávání ověřte, že heslo je bezpečné, což v tomto případě znamená, že je delší než 8 znaků. </p>
  </%self:exrc>

  <%self:exrc title="Cena vstupenky">
    <p>Založte si stránku <code>vstupenky.html</code>, která bude předstírat, že si na ní můžeme zakoupit vstupenky do divadla.</p>
    <ol>
      <li>Nejdříve nechte uživatele zadat svůj věk, protože podle něj budeme počítat slevu ze vstupného.</li>
      <li>Jakmile máte v programu načtený věk uživatele, vytvořte si proměnnou <var>plnaCena</var>, do které uložte hodnotu 280.</li>
      <li>
        <p>Vytvořte podmínku, která do proměnné <var>cena</var> uloží cenu spočítanou podle věku uživatele dle následujících pravidel</p>

        <ul>
          <li>0 korun pro návštěvníky mladší 6 let,</li>
          <li>65% ze základní ceny pro návštěvníky 6 až 26 let (žák, student),</li>
          <li>100% ze základní ceny pro návštěvníky 27 až 64 let (dospělý),</li>
          <li>50% ze základní ceny pro ostatní (senior).</li>
        </ul>

        <p>Nezapomeňte na zaokrouhlování, ať nám cena vyjde v celých korunách.</p>
      </li>
      <li>Nakonec spočtenou cenu vypište s nějakou hezkou zprávou na výstup.</li>
    </ol>
  </%self:exrc>

  
  <%self:exrc title="Ruleta">
    <p>Na obrázku vidíte rozložení čísel na klasické Francouzské ruletě. Ruleta obsahuje čísla 0 - 36. Každé číslo s výjimkou nuly je buď sudé nebo liché a zároveň červené nebo černé. Pro čísla 1 až 10 a 19 až 28 platí, že lichá čísla jsou červená a sudá jsou černá. Pro zbytek platí obrácené pravidlo, tedy lichá jsou černá a sudá červená. Nula není ani lichá ani sudá, ani černá ani červená.</p>

    <div class="text-center">
      <img src="/img/intro-to-progr/roulette.png"/>
    </div>

    <p>Napište program, kterému uživatel zadá číslo a program odpoví jestli jde o číslo sudé nebo liché, černé nebo červené, nebo je to nula.</p>
  </%self:exrc>

  <%self:exrc title="Přestupný rok">
    <p>Napište program, který po zadání kalendářního roku vypíše, zda jde o rok přestupný, či nikoliv. Letopočet je přestupný, pokud je dělitelný čtyřmi. Roky, které jsou dělitelné 100 jsou ovšem přestupné pouze tehdy, jsou-li zároveň dělitelné 400.</p>
  </%self:exrc>
</%self:exercises>
