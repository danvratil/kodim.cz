<%inherit file="/course-chapter.mako"/>

<%self:lesson>

  <p>Při komplikovanějších výpočtech se nám často stane, že si potřebujeme nějaký mezivýpočet uložit pro pozdější použití. K tomu nám slouží takzvané <em>proměnné</em>.</p>

  <p>Proměnná je jakási pojmenovaná krabička nebo šuplík, do kterého si můžeme uložit nějakou hodnotu, abychom ji neztratili a mohli ji používat v dalších výpočtech.</p>

  <p>Můžeme například v rámci dietního programu spočítat kolik vanilkových věnečků denně jsme spořádali za posledních 5 dní. </p>

  <pre>&gt;&gt;&gt; celkem = 1 + 2 + 4 + 1 + 6
&gt;&gt;&gt; prumer = celkem / 5</pre>

  <h2>Jména proměnných</h2>
  <p>Už do úplných začátků s programováním je dobré učit se dobrým návykům, které budou později usnadňovat programátorský život nejen vám ale hlavně lidem kolem vás. Jedním z takových návyků je správné pojmenovávání proměnných. </p>

  <ul>
    <li>Název proměnné by neměl začínat velkým písmenem, např. <var class="wrong">Pocet</var>. Takové názvy jsou rezervované pro speciální typy proměnných, ke kterým se v tomto kurzu nedostaneme. </li>
    <li>Název proměnné by neměl obsahovat diakritiku, např. <var class="wrong">počet</var>. Programovací jazyky vznikaly v Anglickém prostředí, kde se diakritika napoužívá, takže si ní většina jazyků neporadí. </li>
    <li>Víceslovné proměnné nesmí obsahovat mezeru, např. <var class="wrong">pocet hodin</var>. To by si Python myslel, že to jsou dvě proměnné za sebou a nevěděl by co s tím. Pokud chcete proměnnou s více slovy, použíjte takzvanou velbloudí notaci <var >pocetHodin</var> nebo hadí notaci <var>pocet_hodin</var>.</li>
    <li>Vždy proměnnou pojmenujte tak, aby její název jasně napovídal, co se uvnitř ní nachází. Například proměnná <var>pocet_hodin</var> jasně říká, že v ní bude asi nějaký počet hodin. Můžeme podlehnout touze název proměnné zkrátit například na <var class="wrong">pcthd</var> aby se nám lépe psala. Až ovšem někdo další bude takový program číst, bude mlátit hlavout do stolu cože proboha znamená zkratka <code>pcthdn</code>.</li>
    <li>Naposledy je dobré si uvědomit, že programy i programátoři se téměř vždy pohybují v mezinárodním prostředí. Takže je vždycky lepší pojmenovávat proměnné anglicky. V tomto kurzu ještě tohle pravidlo trošku rozvolníme, ale i tak si můžete začít zvykat na proměnné s názvem <var>numberOfHours</var>.</li>
  </ul>

  <h2>Nástrahy</h2>
  <p>Dejte pozor na to, že do proměnné se jako do šuplíku ukládá pouze hodnota a nikoliv celý výpočet. Pokud tedy napíšeme například</p>

<pre>&gt;&gt;&gt; sazba = 350
&gt;&gt;&gt; vyplata = 8 * sazba</pre>

  <p>bude v proměnné <var>vyplata</var> uložena hodnota 2800. Jestliže potom změníme hodnotu v proměnné <var>sazba</var> na něco jiného, například</p>

<pre>&gt;&gt;&gt; sazba = 420</pre>

  <p>v proměnné <var>vyplata</var> bude nadále uložena hodnota 2800. Pokud chceme výsledek výpočtu aktualizovat, musíme jej spustit znova.</p>

  <pre>&gt;&gt;&gt; vyplata = 8 * sazba</pre>
</%self:lesson>

<%self:exercises>
  <h2>Cvičení</h2>
  
  <%self:exrc title="Hrátky s proměnnými">
    <p>Dbejte na to, aby proměnné měly vhodný název dobře naznačující, co je v které z nich uloženo.</p>
    <ol>
      <li>Uložte do proměnné <var>herci</var> celočíselnou hodnotu udávající počet herců, kteří hrají v divadle. Do proměnné <var>platy</var> spočítejte celkové náklady divadla na platy herců, víme-li, že průměrný plat herce je 22 392 kč. </li>
      <li>Do jiné proměnné s vhodným názvem uložte nějaké desetinné číslo, například velikost slevy na studentské vstupné. Do další proměnné uložte nějaký řetězec, například název nějakého představení.</li>
      <li>Zatímco jste dělali předchozí cvičení, do divadla přibyli dva noví herci. Aktualizujte tedy obsah proměnné <var>herci</var> a zařiďte, aby v proměnné <var>platy</var> byla správná hodnota nákladů. Zamyslete se nad tím co se stalo s hodnotou, která byla v proměnné <var>herci</var> uložena před tím.</li>
    </ol>
  </%self:exrc>

  <%self:exrc title="Celočíselné dělení a dělení se zbytkem">
    <p>Zaexperimentuje s operátory celočíselného dělení a dělení se zbytkem.</p>
    <ol>
      <li>Kolikrát se vejde číslo 72 do 1024? Kolik je zbytek po dělení čísla 1024 číslem 72? </li>
      <li>Divadlo má délky představení vždy uloženo v minutách. Například extrémně nudné a zničující představení "Smrt v přímém přenosu" trvá 265 minut. Uložte tuto hodnotu do proměnné <var>delka</var>.</li> 
      <li>Použijte proměnnou <var>delka</var> a spočítejte trvání představení vyjádřeno v hodinách a minutách. Do proměnné <var>hodin</var> uložte počet celých hodin a do proměné <var>minut</var> uložte zbylé minuty. </li>
    </ol>
  </%self:exrc>

  ${self.alert_done()}

  <h2>Bonusy</h2>

  <%self:exrc title="Sedačky v sále">
    <p>Hlavní sál divadla má k dispozici 350 sedaček. Lze je poskládat do řad po 32 sedadlech tak, aby všechny řady byly úplné? Pokud ne, kolik sedaček musíme přikoupit, aby to šlo? Kolik nám takto vznikne celkem řad?</p>
  </%self:exrc>
</%self:exercises>