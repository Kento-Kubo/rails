
$(function() {　//←消さないこと
  
//予約確認用モーダル表示コード開始---------------------------------------------------------
$("#show-confirmation").click(function(){
      //body内の最後に<div id="modal-bg"></div>を挿入
    // $("body").append('<div id="modal-bg"></div>');
 
    //画面中央を計算する関数を実行
    modalResize();
 
    //モーダルウィンドウを表示
        $("#confirmation-model").fadeIn("slow");
 
    //画面のどこかをクリックしたらモーダルを閉じる
     $('.close-model').click(function(){
   $('#confirmation-model').fadeOut();
 })
  
      
 
    //画面の左上からmodal-mainの横幅・高さを引き、その値を2で割ると画面中央の位置が計算できます
     $(window).resize(modalResize);
      function modalResize(){
 
            var w = $(window).width();
          var h = $(window).height();
 
            var cw = $(".model").outerWidth();
           var ch = $(".model").outerHeight();
 
        //取得した値をcssに追加する
            $("#confirmation-model").css({
                "left": ((w - cw)/2) + "px",
                "top": ((h - ch)/3) + "px"
          });
     }
   });

