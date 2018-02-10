$(function() {　//←消さないこと
  
//ログインモーダル表示コード開始---------------------------------------------------------

  $('#login-show').click(function(){
    
    $('#login-modal').fadeIn();
    
  })
  	  
    $('.close-modal').click(function(){
    
    $('#login-modal').fadeOut();
    
  })
  	  
    if($('#login-modal').is(':hidden')){
        
    }else{
    	$(document).on('click', function(e) {
    		if(!$(e.target).closest('#login-modal').length && !$(e.target).closest('#login-show').length){
        		$('#login-modal').fadeOut();
    		}else{
    	 
        		$('#login-modal').fadeOut();
        	}
		})
	}
//ログインモーダル表示コード開始---------------------------------------------------------

//サインアップモーダル表示コード開始---------------------------------------------------------

  $('#signup-show').click(function(){
    $('#signup-model').fadeIn();
  })
  	  
  $('.close-model').click(function(){
    $('#signup-model').fadeOut();
  })
  /*	  
  if($('#signup-model').is(':hidden')){
  }else{
    $(document).on('click', function(e) {
    	if(!$(e.target).closest('#signup-model').length && !$(e.target).closest('#signup-show').length){
        $('#signup-model').fadeOut();
    	}else{
        $('#signup-model').fadeOut();
      }
		})
	}
	*/
//サインアップモーダル表示コード開始---------------------------------------------------------

});//←消さないこと