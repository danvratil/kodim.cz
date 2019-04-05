<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Nyní se společně vydáme na dobrodružnou JavaScriptovou cestu a společně krok po kroku vytvoříme hru ve stylu Pacman.</p>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  
  <%self:exrc title="Start">
    <p>Stáhněte si <a href="/download/intro-to-js/pacman-starter.zip">počáteční projekt</a>. Rozbalte si ZIP archiv někam na váš počítač a otevřete si jej ve VS Code. Projekt obsahuje základní HTML stránku s jednoduchým JavaScriptem a spoustou obrázků, které můžete v různých fázích vývoje hry použít. JavaScriptový kód v projektu provádí postupné navyšování proměnné <var>pacX</var>, která bude časem představovat x-ovou pozici pacmana.</p>

    <p>Otevřete si stránku v tomto projektu v prohlížečí a podívejte se co se vypisuje do konzole, když stisknete šipku doprava. Projděte si kód a ujistěte se, že mu rozumíte.</p>
  </%self:exrc>

  <%self:exrc title="První krok">
    <p>Naučte pacmana udělat jeden krok doprava. V projektu už máte připravenou proměnnou <var>pacX</var>, která se při každém stisku klávesy navyšuje a velikost jedné dlaždice. Stačí tedy při každém stistku klávesy pacmanovi nastavit vlastnost <code>style.left</code> na hodnotu této proměnné. Výsledek je tedy stránka, kdy se pacman po každém stisku šipky doprava posune o jeden krok doprava.</p>
  </%self:exrc>

  <%self:exrc title="Procházka">
    <p>Naučte pacmana chodit nejen doprava ale také doleva, nahoru a dolů při zmáčknutí příslušných šipek. K tomu stačí rozšířit podmínku uvnitř funkce <code>handleKeyDown</code> o další klávesy.</p>
  </%self:exrc>
</%self:exercises>