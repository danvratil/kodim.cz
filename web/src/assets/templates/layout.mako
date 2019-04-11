<%def name="pageIntro(display='2')">
  <div class="jumbotron jumbotron-fluid">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-auto text-center">
          ${caller.logo()}
        </div>
        <div class="col-md-8 text-center">
          <h1 class="display-${display}">${caller.title()}</h1>
          <p class="lead">
            ${caller.lead()}
          </p>
        </div>
      </div>
    </div>
  </div>
</%def>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,900|Ubuntu+Mono:400,700&amp;subset=latin-ext" />
  <link rel="stylesheet" href="/index.css" />
  <link 
    id="favicon" 
    rel="shortcut icon" 
    href="/img/icons/notebook16.png" 
    sizes="16x16"
    type="image/png"
  />
  <link 
    id="favicon" 
    rel="shortcut icon" 
    href="/img/icons/notebook24.png" 
    sizes="24x24"
    type="image/png"
  />
  <link 
    id="favicon" 
    rel="shortcut icon" 
    href="/img/icons/notebook32.png" 
    sizes="32x32"
    type="image/png"
  />
  <link 
    id="favicon" 
    rel="shortcut icon" 
    href="/img/icons/notebook48.png" 
    sizes="48x48"
    type="image/png"
  />
  <link
    rel="icon"
    href="/img/icons/notebook256.png"
    sizes="256x256"
    type="image/png"
  />

  <title>Kódím.cz</title>

  %if not config['DEVELOP']:
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-134495569-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-134495569-1');
    </script>
  %endif

</head>
<body>
  <header>
    <%block name="header" />
  </header>
  <main>
    <%block name="main" />
  </main>
  <footer>
    <div class="jumbotron jumbotron-fluid mb-0">
      <div class="container">
      <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Licence Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/Text" property="dct:title" rel="dct:type">Kódím.cz</span>, jehož autorem je <a xmlns:cc="http://creativecommons.org/ns#" href="http://kodim.cz" property="cc:attributionName" rel="cc:attributionURL">Martin Podloucký</a>, podléhá licenci <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Uveďte původ-Neužívejte dílo komerčně-Zachovejte licenci 4.0 Mezinárodní </a>.
      </div>
    </div>
  </footer>
  
<div id="typoModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Oznámit překlep</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p id="typoContent"></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Zrušit</button>
        <button id="sendTypo" type="button" class="btn btn-primary">Odeslat</button>
      </div>
    </div>
  </div>
</div>

  <script
    src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
  ></script>
  <script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
  ></script>
  <script 
    src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" 
  ></script>
  <script src="/index.js"></script>
</body>
</html>