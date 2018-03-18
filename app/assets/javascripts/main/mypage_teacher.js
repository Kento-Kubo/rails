$(function() {　//←消さないこと

//プロフィール写真モーダル表示コード開始---------------------------------------------------------

  $('#profile-photo-show').click(function(){
    
    $('#profile-photo-modal').fadeIn();
    //プロフィール写真モーダル高さ変更		var div_width_all=$(".container").width();	var div_width_photo=div_width_all*0.5;	var div_height_photo_modal=div_width_photo*0.75+100;
	//console.log(div_height_photo);	$('.modal').css('height',div_height_photo_modal+'px');
	var div_height_photo= $( ".profile-photo-modal" ).height();
	var div_height_photo_modal=div_height_photo+100;
    $('.modal-photo').css('height',div_height_photo_modal+'px');
    
  })
  	  
    $('.close-modal').click(function(){
    
    $('#profile-photo-modal').fadeOut();
    
  })
  	  
    if($('#profile-photo-modal').is(':hidden')){
        
    }else{
    	$(document).on('click', function(e) {
    		if(!$(e.target).closest('#profile-photo-modal').length && !$(e.target).closest('#profile-photo-show').length){
        		$('#profile-photo-modal').fadeOut();
    		}else{
    	 
        		$('#profile-photo-modal').fadeOut();
        	}
		})
	}
//プロフィール写真モーダル表示コード終了---------------------------------------------------------

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
//ログアウトモーダル表示コード終了---------------------------------------------------------


 
//プロフィールの高さを横幅に合わせる（プロフィール写真は縦：横＝3：4として計算（iphoneの写真がその比率っぽい））
var div_width = $( ".profile-left" ).width();
var div_height= div_width *0.75;
$('.profile').css('height',div_height+'px');
$('.profile-left').css('height',div_height+'px');
$('.profile-right').css('height',div_height+'px');　//ここ、できればセレクタまとめたい


//ボックスを正方形にする
var div_width_box1 = $( ".box" ).width();
var div_height_box1= div_width_box1;
$('.box').css('height',div_height_box1+'px');
$('.box2').css('height',div_height_box1+'px');

//box3の高さを合わせる
var div_height_box3= div_height - div_height_box1*2  - div_height * 0.02;
$('.box3').css('height',div_height_box3+'px');
$('.box3').css('line-height',div_height_box3+'px');


//SCHDULEの表を調整する
$('#time2').click(function(){
	$('.time2').css('display','table-row');
	$('.time1').css('display','none');
	$('.time3').css('display','none');
	$('.time4').css('display','none');
	
	//Scheduleの高さ変更
	var div_height_table_schedule=$( ".table-schedule" ).height();
	var div_height_schedule=div_height_table_schedule+100+50;
	$('.schedule').css('height',div_height_schedule+'px');

	//back to topの位置変更
	var off_top = $('.read-more').offset().top;
	var distance_top=off_top+50;
	var distance2_top=off_top+100;
	
	$('.back-to-top').css('top',distance_top+'px');
	$('#footer').css('top',distance2_top+'px');
	
});

$('#time1').click(function(){
	$('.time1').css('display','table-row');
	$('.time2').css('display','none');
	$('.time3').css('display','none');
	$('.time4').css('display','none');
	
	//Scheduleの高さ変更
	var div_height_table_schedule=$( ".table-schedule" ).height();
	var div_height_schedule=div_height_table_schedule+100+50;
	$('.schedule').css('height',div_height_schedule+'px');

	//back to topの位置変更
	var off_top = $('.read-more').offset().top;
	var distance_top=off_top+50;
	var distance2_top=off_top+100;
	
	$('.back-to-top').css('top',distance_top+'px');
	$('#footer').css('top',distance2_top+'px');
		
});

$('#time3').click(function(){
	$('.time3').css('display','table-row');
	$('.time1').css('display','none');
	$('.time2').css('display','none');
	$('.time4').css('display','none');
	
	//Scheduleの高さ変更
	var div_height_table_schedule=$( ".table-schedule" ).height();
	var div_height_schedule=div_height_table_schedule+100+50;
	$('.schedule').css('height',div_height_schedule+'px');

	//back to topの位置変更
	var off_top = $('.read-more').offset().top;
	var distance_top=off_top+50;
	var distance2_top=off_top+100;
	
	$('.back-to-top').css('top',distance_top+'px');
	$('#footer').css('top',distance2_top+'px');
		
});

$('#time4').click(function(){
	$('.time4').css('display','table-row');
	$('.time1').css('display','none');
	$('.time2').css('display','none');
	$('.time3').css('display','none');
	
	//Scheduleの高さ変更
	var div_height_table_schedule=$( ".table-schedule" ).height();
	var div_height_schedule=div_height_table_schedule+100+50;
	$('.schedule').css('height',div_height_schedule+'px');

	//back to topの位置変更
	var off_top = $('.read-more').offset().top;
	var distance_top=off_top+50;
	var distance2_top=off_top+100;
	
	$('.back-to-top').css('top',distance_top+'px');
	$('#footer').css('top',distance2_top+'px');
		
});

$('#time-all').click(function(){
	$('.time1').css('display','table-row');
	$('.time2').css('display','table-row');
	$('.time3').css('display','table-row');
	$('.time4').css('display','table-row');
	
	//Scheduleの高さ変更
	var div_height_table_schedule=$( ".table-schedule" ).height();
	var div_height_schedule=div_height_table_schedule+100+50;
	$('.schedule').css('height',div_height_schedule+'px');
	
	//back to topの位置変更
	var off_top = $('.read-more').offset().top;
	var distance_top=off_top+50;
	var distance2_top=off_top+100;
	
	$('.back-to-top').css('top',distance_top+'px');
	$('#footer').css('top',distance2_top+'px');

});

//Scheduleの高さ変更(デフォルト用)
var div_height_table_schedule=$( ".table-schedule" ).height();
var div_height_schedule=div_height_table_schedule+100+50;
$('.schedule').css('height',div_height_schedule+'px');

//reviwの生徒プロフィールの高さを写真幅に合わせる
var div_width_review = $( ".each-review-left" ).width();
var div_height_review= div_width_review;
$('.each-review').css('height',div_height_review+'px');
$('.each-review-left').css('height',div_height_review+'px');

//back to topの位置変更(デフォルト用)
var off_top = $('.read-more').offset().top;
var distance_top=off_top+50;
var distance2_top=off_top+100;

$('.back-to-top').css('top',distance_top+'px');
$('#footer').css('top',distance2_top+'px');

//レビューの表示     ←【for文で入れ子にするの検討すること】
$('.read-more').click(function(){
	$('.review-unit-2').css('display','block');
	
	//back to topの位置変更
	var off_top = $('.read-more').offset().top;
	var distance_top=off_top+50;
	var distance2_top=off_top+100;
	
	$('.back-to-top').css('top',distance_top+'px');
	$('#footer').css('top',distance2_top+'px');
		
		//レビューの表示2
		$('.read-more').click(function(){
			$('.review-unit-3').css('display','block');
	
			//back to topの位置変更
			var off_top = $('.read-more').offset().top;
			var distance_top=off_top+50;
			var distance2_top=off_top+100;
			
			$('.back-to-top').css('top',distance_top+'px');
			$('#footer').css('top',distance2_top+'px');

	});
});







});//←消さないことvar distance-top=off_top+50; 
