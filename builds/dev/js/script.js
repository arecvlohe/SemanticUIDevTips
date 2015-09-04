(function() {
  $(document).ready(function() {
    console.log('Hello World!');
    $('button').click(function() {
      return $('.ui.basic.modal').modal('show');
    });
    $('.menu .item').click(function() {
      $(this).addClass('active');
      return $(this).siblings().removeClass('active');
    });
  });

}).call(this);
