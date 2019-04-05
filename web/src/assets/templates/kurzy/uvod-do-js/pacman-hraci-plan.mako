<%inherit file="/course-chapter.mako"/>

<%self:exercises>
  <h2>Cvičení</h2>
  
  <%self:exrc title="Hrací plán">
    <p>Uvnitř HTML v našem projektu najdete element s identifikátorem <code>stage</code>. Tento element představuje hrací plán, v rámci kterého se pacman může pohybovat.</p>

    <p>Uložte si ve vašem programu element hracího plánu do nějaké proměnné a nastavte mu šířku, výšku a obrázek na pozadí.</p> 

    <ol>
      <li>Obrázek na pozadí nastavte na <code>img/tile.png</code>.</li>
      <li>Výšku a šířku hracího plánu nastavte na nějaký násobek <code>TILE_SIZE</code>, abychom rozměry plánu měli v celých násobcích políček mřížky.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Hranice">
    <p>Náš pacman by nám neměl z našeho hracího plánu utíkat. Upravte funkci <code>handleKeyDown</code> tak, aby kontrolovala, že pacman neutíká z plánu ven. Pokud by měl pacman při stisku klávesy hrací plán opustit, tak se nevykoná změna jeho souřadnic.</p>
  </%self:exrc>
</%self:exercises>  