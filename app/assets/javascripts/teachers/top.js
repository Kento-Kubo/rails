$(function() {　//←消さないこと
  
//ログインモーダル表示コード開始---------------------------------------------------------

  
  $('#login-show-teacher').click(function(){
    $('#login-model-teacher').fadeIn();
  })
  
  $('.close-model').click(function(){
    $('#login-model-teacher').fadeOut();
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

//サインアップモーダル表示コード開始---------------------------------------------------------

 // $('#signup-show-student').click(function(){
  //  $('#signup-model-student').fadeIn();
 // })
  	  
 // $('.close-model').click(function(){
 //   $('#signup-model-student').fadeOut();
 // })
  
 //  $('#signup-show-teacher').click(function(){
 //   $('#signup-model-teacher').fadeIn();
 // })
  	  
  //$('.close-model').click(function(){
  //  $('#signup-model-teacher').fadeOut();
 // })
  
//サインアップモーダル表示コード終わり---------------------------------------------------------
  
//先生用サインアップモーダル表示コード開始---------------------------------------------------------
$("#signup-show-teacher").click(function(){
      //body内の最後に<div id="modal-bg"></div>を挿入
    // $("body").append('<div id="modal-bg"></div>');
 
    //画面中央を計算する関数を実行
    modalResize();
 
    //モーダルウィンドウを表示
        $("#signup-model-teacher").fadeIn("slow");
 
    //画面のどこかをクリックしたらモーダルを閉じる
     $('.close-model').click(function(){
   $('#signup-model-teacher').fadeOut();
 })
  
    //画面の左上からmodal-mainの横幅・高さを引き、その値を2で割ると画面中央の位置が計算できます
     $(window).resize(modalResize);
      function modalResize(){
 
            var w = $(window).width();
          var h = $(window).height();
 
            var cw = $(".model").outerWidth();
           var ch = $(".model").outerHeight();
 
        //取得した値をcssに追加する
            $("#signup-model-teacher").css({
                "left": ((w - cw)/2) + "px",
                "top": ((h - ch)/3) + "px"
          });
     }
   });
   
 //先生遠征用サインアップモーダル表示コード終わり---------------------------------------------------------



});//←消さないこと