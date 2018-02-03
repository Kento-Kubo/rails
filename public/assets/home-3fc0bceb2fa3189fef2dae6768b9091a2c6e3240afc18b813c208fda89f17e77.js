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
    
    $('#signup-modal').fadeIn();
    
  })
  	  
    $('.close-modal').click(function(){
    
    $('#signup-modal').fadeOut();
    
  })
  	  
    if($('#signup-modal').is(':hidden')){
        
    }else{
    	$(document).on('click', function(e) {
    		if(!$(e.target).closest('#signup-modal').length && !$(e.target).closest('#signup-show').length){
        		$('#signup-modal').fadeOut();
    		}else{
    	 
        		$('#signup-modal').fadeOut();
        	}
		})
	}
//サインアップモーダル表示コード開始---------------------------------------------------------

});//←消さないこと
;
