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

//生徒用サインアップモーダル表示コード開始---------------------------------------------------------

 // $('#signup-show-students').click(function(){
    
  //  $('#signup-model-students').fadeIn();
  //})
  	  
  //$('.close-model').click(function(){
  //  $('#signup-model-students').fadeOut();
  //})
  
  
  
   //テキストリンクをクリックしたら
 $("#signup-show-students").click(function(){
      //body内の最後に<div id="modal-bg"></div>を挿入
    //$("body").append('<div id="model-bg"></div>');
 
 
    //モーダルウィンドウを表示
      
        $("#model").fadeIn("slow");
    //画面のどこかをクリックしたらモーダルを閉じる
      $("#model-bg").click(function(){
          $("#close-model").fadeOut("slow",function(){
         //挿入した<div id="modal-bg"></div>を削除
            //  $('#model-bg').remove() ;
         });
 
        });
 
    //画面の左上からmodal-mainの横幅・高さを引き、その値を2で割ると画面中央の位置が計算できます
     $(window).resize(modalResize);
      function modalResize(){
 
            var w = $(window).width();
          var h = $(window).height();
 
            var cw = $("#signup-model-students").outerWidth();
           var ch = $("#signup-model-students").outerHeight();
 
        //取得した値をcssに追加する
            $("#signup-model-students").css({
                "left": ((w - cw)/2) + "px",
                "top": ((h - ch)/2) + "px"
          });
     }
   });

//生徒用サインアップモーダル表示コード終わり---------------------------------------------------------
//先生用サインアップモーダル表示コード開始---------------------------------------------------------

//  $('#signup-show-teachers').click(function(){
//    $('#signup-model-teachers').fadeIn();
 // })
  	  
 // $('.close-model').click(function(){
 //   $('#signup-model-teachers').fadeOut();
 // })
  
//先生用サインアップモーダル表示コード終わり---------------------------------------------------------

});//←消さないこと