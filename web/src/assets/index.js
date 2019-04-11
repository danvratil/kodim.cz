let savedTypo;

$(function() {
  $('#sendTypo').click(function() {
    console.log(savedTypo);
    fetch(`${window.location.origin}/typos`,
      {
        method: "POST",
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(savedTypo)
      }
    ).then(res => res.json())
     .then(json => console.log(json));

      $('#typoModal').modal('hide');
  });

  document.addEventListener('keyup', e => {
    if (e.keyCode === 84 && e.altKey) {
      const sel = window.getSelection();
      if (sel.type === 'Range') {
        const range = sel.getRangeAt(0);
        const context = range.startContainer.textContent;
        const contextb = context.substring(0, range.startOffset);
        const contexta = context.substring(range.endOffset);
        const typo = context.substring(range.startOffset, range.endOffset);
  
        savedTypo = {
          typo,
          contexta: contexta.trimStart(),
          contextb: contextb.trimEnd(),
          url: window.location.pathname,
          user: 'Pokusnik',
        };

        $('#typoContent').html(
          `${contextb}<strong>${typo}</strong>${contexta}`
        );
        $('#typoModal').modal('show');
      }
    }
  });
});
