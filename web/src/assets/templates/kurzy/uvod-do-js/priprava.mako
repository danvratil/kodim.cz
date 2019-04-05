<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Abychom mohli začít programovat, je potřeba na počítač nainstalovat dva programy - prohlížeč Chrome a Visual Studio Code. Postupujte dle následujících instrukcí.</p>

  <h2>Prohlížeč Chrome</h2>
  <p>Jazyk JavaScript je primárně určen pro vývoj webu a proto jej nejsnadněji spustíme ve webovém prohlížeči. Prohlížečů je k dispozici několik. Na systému Windows pravděpodobně máte prohlížeč Edge, na Macu najdete Safari. Abychom se nemuseli trápit s rozdíly mezi různými prohlížeči, budeme na kurzu všichni používat prohlížeč Chrome. Pokud jej náhodou už používáte a máte jej na počítači nainstalovaný, stačí jej pouze aktualizovat na nejnovější verzi. </p>

  <ol>
    <li>Spusťte Chrome,</li>
    <li>vpravo nahoře klikněte na ikonu možností (tři tečky),</li>
    <li>klikněte na <strong>Aktualizovat Google Chrome</strong> (anglicky <strong>Update Google Chrome</strong>). Pokud toto tlačítko nevidíte, máte nejnovější verzi prohlížeče.</li>
  </ol>

  <p>Pokud prohlížeč nainstalovaný nemáte, přejděte na <a href="https://www.google.com/chrome/">oficiální stránky Chrome</a> a následujte instrukce pro stažení a instalaci.</p>   
  
  <h2>Visual Studio Code</h2>

  <p>Pokud jste prošli kurzem <a href="http://kodim.cz/kurzy/uvod-do-progr/">Úvod do programování</a>, Visual Studio Code máte pravděpodobně nainstalováno. Zkuste si jej cvičně spustit. V opačném případě následujte instrukce níže.</p>

  <ol>
    <li>Z <a href="https://aka.ms/win32-x64-user-stable">tohoto odkazu</a> si stáhněte Visual Studio Code.</li>
    <li>Stažený soubor spusťte. Rozeběhne se průvodce instalací, ve kterém stačí klikat na <strong>Next</strong> tak dlouho, dokud se nespustí instalace. Ve druhém kroku je pouze potřeba souhlasit s licencí.</li>
    <li>Jakmile instalace doběhne, zavřete okno tlačítkem <strong>Finish</strong>. Visual Studio Code by se mělo samo spustit ihned po instalaci.</li>
    <li>Pro jistotu restartujte počítač, aby se všechny provedené změny správně usadily.</li>
  </ol>

  <h2>Nastavení VS Code</h2>

  <p>Aby se nám ve VS Code dobře programovalo, uložíme si některá užitečná nastavení. Spusťte VS Code a z horního menu vyberte <em>View</em> → <em>Command Palette...</em>. Do textového políčka zkopírujte tento text </p>

  <pre>Open Settings (JSON)</pre>

  <p>a stiskněte enter.</p>

  <p>Otevře se okno s editorem. Do jeho pravé časti vložte tento text</p>

<pre>{
  "editor.tabSize": 2,
  "editor.detectIndentation": false,
  "editor.renderWhitespace": "boundary",
  "editor.insertSpaces": true,
  "editor.wordWrap": "on",
  "files.eol": "\n",
  "editor.minimap.enabled": false,
  "editor.fontSize": 16
}</pre>

  <p>a uložte stiskem Ctrl+S nebo z menu vyberte <em>File</em> → <em>Save</em>.</p>

  <h2>Hotovo</h2>
  <p>Hurá, máte hotovo a jste připravení na kurz.</p>

</%self:lesson>