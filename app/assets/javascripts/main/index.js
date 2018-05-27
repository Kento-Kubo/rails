$(function() {　//←消さないこと
//検索方法初期値送信開始---------------------------------------------------------
var condition = $(".searching_condition_submit").val();
　if (condition == 2) {
   $(".date_search_table").addClass('none'); 
   $(".time_search").addClass('none');  
}
//検索方法選択コード送信終了---------------------------------------------------------

//検索方法選択コード送信開始---------------------------------------------------------
$(".seaching_condition_1").on('click', function() {
  var target = $(".seaching_condition_1");
  
  // 先に選択されていたものをキャンセルして色を戻しておく
 $(".seaching_condition_2").removeClass('clicked-1');
  // 対象となる要素の背景色を選択されたものに変更
  target.addClass('clicked-1');
  
 $(".date_search_table").removeClass('none');
 $(".time_search").removeClass('none');
 
  // クリックされた要素の指定するIDを取得
  var result = target.data("send-id");
  
  // hiddenフィールドの値を変更
  $("#send_data_1").val(result);
});

$(".seaching_condition_2").on('click', function() {
  var target = $(".seaching_condition_2");
  
  // 先に選択されていたものをキャンセルして色を戻しておく
 $(".seaching_condition_1").removeClass('clicked-1');
  // 対象となる要素の背景色を選択されたものに変更
  target.addClass('clicked-1');
  
 $(".date_search_table").addClass('none');
 $(".time_search").addClass('none');
 
  // クリックされた要素の指定するIDを取得
  var result = target.data("send-id");
  
  // hiddenフィールドの値を変更
  $("#send_data_1").val(result);
});
//検索方法選択コード送信終了---------------------------------------------------------


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
