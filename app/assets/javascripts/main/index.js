$(function() {　//←消さないこと

//日付送信用コード開始---------------------------------------------------------
$(".date_search").on('click', function() {
  var target = $(this);
  
  // 先に選択されていたものをキャンセルして色を戻しておく
 //$(".date_search").css({'background-color':'none'});
 $(".date_search").removeClass('clicked');
  // 対象となる要素の背景色を選択されたものに変更
  target.addClass('clicked');
  
 
  // クリックされた要素の指定するIDを取得
  var result = target.data("send-id");
  // hiddenフィールドの値を変更
  $("#send_data").val(result);
});
//日付送信用コード終了---------------------------------------------------------



});//←消さないこと
