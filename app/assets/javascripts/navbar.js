$(function() {　//←消さないこと
  
//ログインモーダル表示コード開始---------------------------------------------------------

  $('#login-show').click(function(){
    $('#login-model').fadeIn();
  })
  	  
  $('.close-model').click(function(){
    $('#login-model').fadeOut();
  })
/*
  if($('#login-model').is(':hidden')){
        
  }else{
    $(document).on('click', function(e) {
    	if(!$(e.target).closest('#login-model').length && !$(e.target).closest('#login-show').length){
        $('#login-model').fadeOut();
    	}else{
        $('#login-model').fadeOut();
      }
		})
	}
	*/
//ログインモーダル表示コード終わり---------------------------------------------------------

});//←消さないこと