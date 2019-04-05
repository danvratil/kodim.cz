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
        const beforeTypo = context.substring(0, range.startOffset);
        const afterTypo = context.substring(range.endOffset);
        const typo = context.substring(range.startOffset, range.endOffset);
  
        savedTypo = {
          typo,
          context,
          url: window.location.pathname,
        };

        $('#typoContent').html(
          `${beforeTypo}<strong>${typo}</strong>${afterTypo}`
        );
        $('#typoModal').modal('show');
      }
    }
  });
});
