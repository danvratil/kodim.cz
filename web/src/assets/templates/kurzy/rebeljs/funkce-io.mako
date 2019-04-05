<%inherit file="/course-chapter.mako"/>

<%self:exercises>
  <h2>Volání funkcí</h2>

  <%self:exrc title="Cena lístku">  
    <p>Do proměnné <var>eura</var> si uložte cenu lístku do divadla, která činí 13 euro. Současný kurz eura činí 25.6 koruny za euro. Spočítejte, kolik stoji lístek do divadla v korunách. Výsledek zaokrouhlete na celé koruny pomocí funkce <code>Math.round</code>. Vyzkoušejte, jaký obdržíte výsledek, pokud místo <code>Math.round</code> použijete <code>Math.floor</code></p>
  </%self:exrc>

  <%self:exrc title="Hod korunou">
    <p>Použijte funkce <code>Math.random</code> a <code>Math.round</code> k simulování házení korunou. Výsledek 0 bude znamenat, že padla panna, výsledek 1 že padl orel.</p>
  </%self:exrc>
  
  <%self:exrc title="Náhodná čísla">
    <p>Zkuste pomocí funkcí <code>Math.random</code> a <code>Math.floor</code> generovat náhodná celá čísla z rozmezí 0 až 5. </p>
  </%self:exrc>

  <%self:exrc title="Hody kostkou">
    <p>Od předchozího cvičení už je pouze krůček ke generování čísel 1 až 6, tedy k simulaci házení kostkou. </p>
  </%self:exrc>

  <h2>První programy</h2>
  
  <%self:exrc title="Jednoduchý výstup">
    <p>Náš vůbec první program nebude dělat nic víc, než vypisovat text na obrazovku.</p>
    <ol>
      <li>
        <p>Založte si program <code>vstup-vystup.html</code>. V tomto programu pomocí funkce <code>alert</code> vypište na obrazovku</p>
        
        <pre>Kino Drátem do oka otvírá již dnes</pre>

        <p>Program spusťte v prohlížeči a vyzkoušejte, že dělá co má.</p>
      </li>
      <li>
        <p>Upravte tento program tak, že do proměnné <var>nazev</var> uložíte název nějakého filmu a do proměnné <var>cas</var> uložte čas promítání filmu v kině. Nyní pomocí funkce <code>alert</code> nechte program vypsat na obrazovku na jeden řádek název filmu a čas konání, např.</p>
        
        <pre>Transformers - 19:30</pre>
      </li>
      <li>
        <p>Upravte dále program tak, že do proměnné <var>hodina</var> uložíte hodinu konání filmu (jako celé číslo) a do proměnné <var>minuta</var> minutu konání, také jako celé číslo. Zařiďte, aby výstup programu vypadal opět takto:</p>
        
        <pre>Transformers - 19:30</pre>
        
        <p>Pozor na to, že hodina a minuta je hodnota typu číslo, takže JavaScript je při výpisu automaticky převádí na řetězec.</p>
      </li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Jednoduchý vstup">
    <p>Teď už budeme chtít, aby náš program dokázal získat vstup od uživatele.</p>
    <ol>
      <li>Napište program <code>jmeno.py</code>, který získá jméno a příjmení od uživatele voláním funkce <code>prompt</code>. Vypište je na obrazovku podobně jako v předchozím cvičení.</li>
      <li>Nechte uživatele zadat také věk. Pozor na to, že funkce <code>prompt</code> vždy vrací řetězec, ale my chceme v proměnné <var>vek</var> mít číslo. Použijte tedy funkci <code>parseInt()</code>, abyste převedli uživatelem zadaný řetězec na číslo. Opět vypište na obrazovku jméno příjmení a věk tak jako v předchozí verzi.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Převod eur na koruny">
    <p>Napište program, který od uživatele získá částku v eurech a vypíše danou částku převedenou na celé koruny.</p>
  </%self:exrc>
</%self:exercises>