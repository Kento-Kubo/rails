$(function() {
  $('#login-show').click(function() {
    $('#login-modal').fadeIn();
  });
  $('.close-modal').click(function() {
    $('#login-modal').fadeOut();
  });
  if ($('#login-modal').is(':hidden')) {

  } else {
    $(document).on('click', function(e) {
      if (!$(e.target).closest('#login-modal').length && !$(e.target).closest('#login-show').length) {
        $('#login-modal').fadeOut();
      } else {
        $('#login-modal').fadeOut();
      }
    });
  }
});