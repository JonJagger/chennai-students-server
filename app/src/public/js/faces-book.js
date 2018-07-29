$(() => {

  const image = (filename) => {
    return $('<img>', {
      'class':'face',
      'title':filename.substring(0,filename.indexOf('.')),
      'src':`img/${filename}`
     });
  };

  const tipped = (node) => {
    return node.tooltip({
      position: {
        my: 'center bottom-20',
        at: 'center top',
        using: function(position, feedback) {
          $(this).css(position);
          $('<div>')
            .addClass('arrow')
            .addClass(feedback.vertical)
            .addClass(feedback.horizontal)
            .appendTo(this);
        }
      }
    });
  };

  $('#shuffle').click(() => {
    window.location.reload();
  });

  $.ajax({
    url: '/faces/index?shuffled=true',
    success: function(data) {
      $(data).find('li').each(function() {
        let filename = $(this).text();
        let face = image(filename);
        $('faces').append(tipped(face));
      });
    }
  });

});
