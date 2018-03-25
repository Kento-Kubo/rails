$(function() {　//←消さないこと


//ログアウトモーダル表示コード開始---------------------------------------------------------

  $('#logout-show').click(function(){
    
    $('#logout-modal').fadeIn();
    
  })
  	  
    $('.close-modal').click(function(){
    
    $('#logout-modal').fadeOut();
    
  })
  	  
    //if($('#logout-modal').is(':hidden')){
        
  //  }else{
    //	$(document).on('click', function(e) {
    //		if(!$(e.target).closest('#logout-modal').length && !$(e.target).closest('#logout-show').length){
     //   		$('#logout-modal').fadeOut();
    //		}else{
    //	 
      //  		$('#logout-modal').fadeOut();
    //	}
	//	})
//	}
//ログインモーダル表示コード終了---------------------------------------------------------
//完了モーダル表示コード開始---------------------------------------------------------

  $('#complete-show').click(function(){
    
    $('#complete-modal').fadeIn();
    
  })
  	  
    $('.close-modal').click(function(){
    
    $('#complete--modal').fadeOut();
    
  })
//完了モーダル表示コード終了---------------------------------------------------------

});//←消さないこと
;
