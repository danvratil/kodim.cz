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
</head>
<body>
  <div class="container">
    <h1>Překlepy</h1>

    %for typo in typos:
      <div class="typo">
        <div class="typo__header">
          <span>${typo['url']}</span>
          <span>${typo['time']}</span>
        </div>
        <div class="typo__body">
          <span>${typo['contextb']}</span>
          <span><strong>${typo['typo']}</strong></span>
          <span>${typo['contexta']}</span>
        </div>
      </div>
    %endfor
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