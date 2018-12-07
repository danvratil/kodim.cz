<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Do této chvíle jsme uměli do nějaké proměnné uložit pouze jednu hodnotu, například číslo nebo řetězec. Počítače ale často potřebují pracovat v mnohem větším objemem dat, než je několik čísel nebo řetězců. </p>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  
  <%self:exrc title="Řetězce jako sekvence">
    <ol>
      <li>Uložte si v Python konzoli do proměnné <var>jmeno</var> svoje celé jméno a nechte vypsat jeho třetí, pátý a sedmý znak. Vyzkoušejte, co se stane, když budete chtít znak na pozici, která překračuje délku řetězce. </li>
      <li>Upravte program <code>registrace.py</code> tak, že bude kromě uživatelského jména chtít také e-mailovou adresu. Ověřte, že adresa je v platném formátu, tedy že obsahuje zavináč, tečku a má alespoň pět znaků.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Seznamy">
    <p>Celé toto cvičení dělejte v příkazové řádce Pythonu.</p>
    <ol>
      <li>Vytvořte nějaký seznam celých čísel, například počty diváků na několika po sobě jdoucích představeních.</li>
      <li>Vytvořte nějaký seznam desetinných čísel, například zaplněnost divadla v několika po sobě jdoucích představeních.</li>
      <li>Vytvořte nějaký seznam řetězců, například seznam názvů několika divadelních představení, která divadlo hraje. Uložte tento seznam do proměnné <var>hry</var>. Uložte do nějaké proměnné druhou položku tohoto seznamu.</li>
      <li>Vytvořte seznam seznamů, který bude obsahot naměřené teploty pro každý ze sedmi dní v jednom týdnu. Každý den měříme teplotu ráno, v poledne a večer. Uložte tento seznam do proměnné <var>teploty</var> a zeptejte se jaká teplota byla naměřena v úterý ráno a v pátek v poledne.</li>
      <li>Do proměnné <var>hodnoceni</var> uložte seznam hodnocení, které obdržela divadelní hra Plyšáci na útěku v různách recenzncích časopisech. Hodnocení je vždy mezi 1 až 10. Přidejte na konec tohoto seznamu nové hodnocení z časopisu Divadelní oběžník. </li>
    </ol>
  </%self:exrc>

  ${self.alert_done()}

  <h2>Bonusy</h2>
  
  <%self:exrc title="Ověřování hesla">
    <p>Ověřování hesla se někdy dělá tak, že se vás systém ptá pouze na některé jeho znaky. Napište program, který má uloženo heslo, které musí uživatel zadat. Pak se jej postupně zeptejte například na druhý, pátý a sedmý znak hesla. Propusťte uživatele pouze tehdy, zadá-li všechny tyto znaky správně. </p>
  </%self:exrc>

</%self:exercises>
