<%inherit file="/course-chapter.mako"/>

<%self:lesson>
  <p>Než se pustíme do samotného programování, je potřeba na váš počítač nainstalovat dva nové programy, které budeme k programování potřebovat. Předtím si však ještě povíme něco o tom, jak se svým počítačem komunikovat.</p>

  <h2>Operační systém</h2>
  <p>Každý počítač potřebuje takzvaný operační systém, například Windows 10. Operační systém je v podstatě jeden velký program, který spravuje váš počítač, umožňuje vám jej ovládat, spouštět programy, pracovat se soubory na disku apod. Bez operačního systému by váš počítač byl jen černá obrazovka bez života, něco jako autobus bez řidiče. </p> 
  
  <p>Hned takto z kraje se nám ovšem věci začínají malinko komplikovat tím, že neexistuje pouze jeden operační systém, který by všichni svorně používali. Máme minimálně tři různé možnosti, Windows, Mac OS a Linux. Běžní lidé na ulici používají Windows, hipstři a hipsterky v kavárnách používají Mac OS a vousatí geekové v kostkovaných košilích používají různé varianty Linuxu.</p>

  <p>Nejrozšířenější je v dnešní době systém Windows od Microsoftu. Ten používá většina lidí v práci i na osobních počítačích. Mac OS je operační systém dodávaný s počítači od firmy Apple. Nejpopulárnější je v USA, u nás se však také hojně používá. Linux naopak vzešel z akademického prostředí a vyvíjejí jej lidé, kteří věří ve svobodné nakládání se softwarem. Většinou jej používají nadšenci, kteří si rádi hrají s počítači a chtějí mít věci pod kontrolou. Linux se však snaží přiblížit také běžným uživatelům a vznikají proto distribuce jako Ubuntu, Linux Mint apod., které jsou na ovládání velmi podobné Windows a Mac OS.</p>

  <h2>Instalace nástrojů</h2>
  <p>Abychom mohli začít programovat, je potřeba na počítač nainstalovat dva programy - samotný jazyk Python a Visual Studio Code. Postup se liší podle toho, jaký máte operační systém. Instrukce pro každý systém zvlášť naleznete níže.</p>

  <h3>Windows</h3>
  <p>Pokud máte počítač s Windows, následujte tyto kroky:</p>

  <ol>
    <li>Ujistěte se, že máte aktualizovaný systém. To zajistíte nejjednodušeji tak, že svůj počítač restartujete. Pokud jste již dlouho neaktualizovali, při restartu se může spustit aktualizace, která může trvat relativně dlouho, v extrémním případě třeba i hodinu. Nenechte se vyděsit, obrňte se trpělivostí a vyčkejte, dokud Windows opět nenaběhnou.</li>
    <li>Stáhněte si instalaci jazyka Python z <a href="https://www.python.org/ftp/python/3.7.1/python-3.7.1-amd64.exe">tohoto odkazu</a>. Stažený soubor spusťte. Rozeběhne se průvodce instalací. </li>
    <li>
      <p>Na úvodní obrazovce je <strong>velmi důležité</strong> zaškrtnout volbu <strong>Add Python 3.7 to PATH</strong> (viz obrázek)</p>
      <div class="text-center my-4">
        <img src="/img/intro-to-progr/python-setup.png" alt="Instalace Pythonu" />
      </div>
    </li>
    <li>Klikněte na <strong>Install Now</strong>, odsouhlaste případné otázky ohledně změn na vašem počítači a vyčkejte dokončení instalace. Jakmile instalace skončí, zavřete okno tlačítkem <strong>Close</strong>.</li>
    <li>Z <a href="https://aka.ms/win32-x64-user-stable">tohoto odkazu</a> si stáhněte Visual Studio Code.</li>
    <li>Stažený soubor spusťte. Rozeběhne se průvodce instalací, ve kterém stačí klikat na <strong>Next</strong> tak dlouho, dokud se nespustí instalace. Ve druhém kroku je pouze potřeba souhlasit s licencí.</li>
    <li>Jakmile instalace doběhne, zavřete okno tlačítkem <strong>Finish</strong>. Visual Studio Code by se mělo samo spustit ihned po instalaci.</li>
    <li>Pro jistotu restartujte počítač, aby se všechny provedené změny správně usadily.</li>
  </ol>

  <h3>Mac OS</h3>
  <p>Pokud máte počítač se systémem Mac OS, následujte tyto kroky.</p>

  <ol>
    <li>Stáhněte si instalaci jazyka Python z <a href="https://www.python.org/ftp/python/3.7.1/python-3.7.1-macosx10.9.pkg">tohoto odkazu</a>.</li>
    <li>Stažený soubor spusťte a pokračujte dle pokynů instalace až do jejího konce.</li>
    <li>Z <a href="https://go.microsoft.com/fwlink/?LinkID=620882">tohoto odkazu</a> si stáhněte Visual Studio Code. Spusťte instalaci a opět ji následujte až do zdařilého konce.</li>
  </ol>

  <h3>Linux</h3>
  <p>Pokud používáte některou z populárních distribucí Linuxu jako Ubuntu, Linux Mint apod., je velká naděje, že už máte Python nainstalovaný. Napište do příkazové řádky příkaz</p>

  <pre>python3</pre>

  <p>A sledujte, zda se objeví zpráva podobná této:</p>

  <pre>Python 3.6.6 (default, Sep 12 2018, 18:26:19) 
[GCC 8.0.1 20180414 (experimental) [trunk revision 259383]] on linux
Type "help", "copyright", "credits" or "license" for more information.</pre>

  <p>Pokud je verze Pythonu na prvním řádku alespoň 3.5, jste připravení.</p>


  <h2>Ověření instalace</h2>
  <p>Nejprve ověřme, že instalace nástrojů proběhla v pořádku. Ať už jste na jakémkoliv operačním systému, spusťte vaše nově nainstalované Visual Studio Code a z horní lišty vyberte <em>Terminal</em> → <em>New Terminal</em> (viz obrázek).</p>

  <div class="text-center my-4">
    <img src="/img/intro-to-progr/vscode-term.png" alt="VS Code Terminal" />
  </div>

  <p>Pokud jste na Windows, napište do okna, které se objeví, toto:</p>

  <pre>python</pre>

  <p>a stiskněte enter. Pokud jste na Macu nebo Linuxu, je třeba napsat</p>

  <pre>python3</pre>

  <p>Pokud je vše v pořádku, měly by se po pár krypticky vypadajících výpisech ukázat tři zobáčky <code>&gt;&gt;&gt;</code> a kurzor. To znamená, že Python je připraven na vaše první příkazy. </p>

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