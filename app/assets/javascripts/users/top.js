$(function() {　//←消さないこと
  
// //ログインモーダル表示コード開始---------------------------------------------------------

//   $('#login-show').click(function(){
//     $('#login-model').fadeIn();
//   })
  	  
//   $('.close-model').click(function(){
//     $('#login-model').fadeOut();
//   })
// /*
//   if($('#login-model').is(':hidden')){
        
//   }else{
//     $(document).on('click', function(e) {
//     	if(!$(e.target).closest('#login-model').length && !$(e.target).closest('#login-show').length){
//         $('#login-model').fadeOut();
//     	}else{
//         $('#login-model').fadeOut();
//       }
// 		})
// 	}
// 	*/
//ログインモーダル表示コード終わり---------------------------------------------------------

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
//サインアップモーダル表示コード終わり---------------------------------------------------------

});//←消さないこと