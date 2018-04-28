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

//ratingコード開始---------------------------------------------------------

//hover開始------------------------------------------
  //star-1---------------------------------------
  $('.star-1').hover(
        function(){
    
            $('.star-1').css('color','yellow');
            $('.star-2').css('color','gray');
            $('.star-3').css('color','gray');
            $('.star-4').css('color','gray');
            $('.star-5').css('color','gray');
            $('.rating').css('display','none');
            $('.rating-2').css('display','none');
            $('.rating-3').css('display','none');
            $('.rating-4').css('display','none');
            $('.rating-5').css('display','none');
            $('.rating-1').css('display','inline-block');
        },
        function() {
            if($('.star-1').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','gray');
                $('.star-3').css('color','gray');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');               
                $('.rating-1').css('display','inline-block');
                
            }else if($('.star-2').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','gray');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');
                $('.rating-1').css('display','none');
                $('.rating-2').css('display','inline-block');
            
            }else if($('.star-3').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');
                $('.rating-1').css('display','none');
                $('.rating-3').css('display','inline-block');
            
            }else if($('.star-4').hasClass('star-clicked')) {
               $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','yellow');
                $('.star-5').css('color','gray');
                $('.rating-1').css('display','none');
                $('.rating-4').css('display','inline-block');
            
            }else if($('.star-5').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','yellow');
                $('.star-5').css('color','yellow');
                $('.rating-1').css('display','none');
                $('.rating-5').css('display','inline-block');
                     
            }else{
            $('.star-1').css('color','gray');
            $('.rating').css('display','inline-block');
            $('.rating-1').css('display','none');
        }

  })
  	
   //star-2---------------------------------------
  $('.star-2').hover(
        function(){
    
            $('.star-1').css('color','yellow');
            $('.star-2').css('color','yellow');
            $('.star-3').css('color','gray');
            $('.star-4').css('color','gray');
            $('.star-5').css('color','gray');
            $('.rating').css('display','none');
            $('.rating-1').css('display','none');
            $('.rating-3').css('display','none');
            $('.rating-4').css('display','none');
            $('.rating-5').css('display','none');
            $('.rating-2').css('display','inline-block');
        },
        function() {
             if($('.star-1').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','gray');
                $('.star-3').css('color','gray');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');
                $('.rating-2').css('display','none');
                $('.rating-1').css('display','inline-block');
                
            }else if($('.star-2').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','gray');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');
                $('.rating-2').css('display','inline-block');
            
            }else if($('.star-3').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');
                $('.rating-2').css('display','none');
                $('.rating-3').css('display','inline-block');
            
            }else if($('.star-4').hasClass('star-clicked')) {
               $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','yellow');
                $('.star-5').css('color','gray');
                $('.rating-2').css('display','none');
                $('.rating-4').css('display','inline-block');
            
            }else if($('.star-5').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','yellow');
                $('.star-5').css('color','yellow');
                $('.rating-2').css('display','none');
                $('.rating-5').css('display','inline-block');
                       
        }else{
            $('.star-1').css('color','gray');
            $('.star-2').css('color','gray');
            $('.rating').css('display','inline-block');
            $('.rating-2').css('display','none');
            
        }

  })
  
   //star-3---------------------------------------
  $('.star-3').hover(
        function(){
    
            $('.star-1').css('color','yellow');
            $('.star-2').css('color','yellow');
            $('.star-3').css('color','yellow');
            $('.star-4').css('color','gray');
            $('.star-5').css('color','gray');
            $('.rating').css('display','none');
            $('.rating-1').css('display','none');
            $('.rating-2').css('display','none');
            $('.rating-4').css('display','none');
            $('.rating-5').css('display','none');
            $('.rating-3').css('display','inline-block');
        },
        function() {
            if($('.star-1').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','gray');
                $('.star-3').css('color','gray');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');
                $('.rating-3').css('display','none');
                $('.rating-1').css('display','inline-block');
                
            }else if($('.star-2').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','gray');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');
                $('.rating-3').css('display','none');
                $('.rating-2').css('display','inline-block');
            
            }else if($('.star-3').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');
                $('.rating-3').css('display','inline-block');
            
            }else if($('.star-4').hasClass('star-clicked')) {
               $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','yellow');
                $('.star-5').css('color','gray');
                $('.rating-3').css('display','none');
                $('.rating-4').css('display','inline-block');
            
            }else if($('.star-5').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','yellow');
                $('.star-5').css('color','yellow');
                $('.rating-3').css('display','none');
                $('.rating-5').css('display','inline-block');
                   
            }else{
            $('.star-1').css('color','gray');
            $('.star-2').css('color','gray');
            $('.star-3').css('color','gray');
            $('.rating').css('display','inline-block');
            $('.rating-3').css('display','none');
    }

  })
  
     //star-4---------------------------------------
  $('.star-4').hover(
        function(){
    
            $('.star-1').css('color','yellow');
            $('.star-2').css('color','yellow');
            $('.star-3').css('color','yellow');
            $('.star-4').css('color','yellow');
            $('.star-5').css('color','gray');
            $('.rating').css('display','none');
            $('.rating-1').css('display','none');
            $('.rating-2').css('display','none');
            $('.rating-3').css('display','none');
            $('.rating-5').css('display','none');
            $('.rating-4').css('display','inline-block');
        },
        function() {
             if($('.star-1').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','gray');
                $('.star-3').css('color','gray');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');
                $('.rating-4').css('display','none');
                $('.rating-1').css('display','inline-block');
                
            }else if($('.star-2').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','gray');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');
                $('.rating-4').css('display','none');
                $('.rating-2').css('display','inline-block');
            
            }else if($('.star-3').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');
                $('.rating-4').css('display','none');
                $('.rating-3').css('display','inline-block');
            
            }else if($('.star-4').hasClass('star-clicked')) {
               $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','yellow');
                $('.star-5').css('color','gray');
                $('.rating-4').css('display','inline-block');
            
            }else if($('.star-5').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','yellow');
                $('.star-5').css('color','yellow');
                $('.rating-4').css('display','none');
                $('.rating-5').css('display','inline-block');
                
            }else{
            $('.star-1').css('color','gray');
            $('.star-2').css('color','gray');
            $('.star-3').css('color','gray');
            $('.star-4').css('color','gray');
            $('.rating').css('display','inline-block');
            $('.rating-4').css('display','none');
         }

  })
  
       //star-5---------------------------------------
  $('.star-5').hover(
        function(){
    
            $('.star-1').css('color','yellow');
            $('.star-2').css('color','yellow');
            $('.star-3').css('color','yellow');
            $('.star-4').css('color','yellow');
            $('.star-5').css('color','yellow');
            $('.rating').css('display','none');
            $('.rating-1').css('display','none');
            $('.rating-2').css('display','none');
            $('.rating-3').css('display','none');
            $('.rating-4').css('display','none');
            $('.rating-5').css('display','inline-block');
        },
        function() {
            if($('.star-1').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','gray');
                $('.star-3').css('color','gray');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');
                $('.rating-5').css('display','none');
                $('.rating-1').css('display','inline-block');
                
            }else if($('.star-2').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','gray');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');
                $('.rating-5').css('display','none');
                $('.rating-2').css('display','inline-block');
            
            }else if($('.star-3').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','gray');
                $('.star-5').css('color','gray');
                $('.rating-5').css('display','none');
                $('.rating-3').css('display','inline-block');
            
            }else if($('.star-4').hasClass('star-clicked')) {
               $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','yellow');
                $('.star-5').css('color','gray');
                $('.rating-5').css('display','none');
                $('.rating-4').css('display','inline-block');
            
            }else if($('.star-5').hasClass('star-clicked')) {
                $('.star-1').css('color','yellow');
                $('.star-2').css('color','yellow');
                $('.star-3').css('color','yellow');
                $('.star-4').css('color','yellow');
                $('.star-5').css('color','yellow');
                $('.rating-5').css('display','inline-block');
                
            }else{
                
            $('.star-1').css('color','gray');
            $('.star-2').css('color','gray');
            $('.star-3').css('color','gray');
            $('.star-4').css('color','gray');
            $('.star-5').css('color','gray');
            $('.rating').css('display','inline-block');
            $('.rating-5').css('display','none');
    }

  })
  //hover終了------------------------------------------
  
  //click開始------------------------------------------
  
  
  //star-1---------------------------------------
  $('.star-1').click(
        function(){
            $('.star-1').css('color','yellow');
            $('.rating').css('display','none');
            $('.rating-1').css('display','inline-block');
             $('.star-1').addClass('star-clicked');
             //star-2のClassはずす
             if($('.star-2').hasClass('star-clicked')) {
                $('.star-2').removeClass('star-clicked');
                $('.star-2').css('color','gray');
                $('.rating-2').css('display','none');
              }
             //star-3のClassはずす
             if($('.star-3').hasClass('star-clicked')) {
                $('.star-3').removeClass('star-clicked');
                $('.star-3').css('color','gray');
                $('.rating-3').css('display','none');
              }
              //star-4のClassはずす
             if($('.star-4').hasClass('star-clicked')) {
                $('.star-4').removeClass('star-clicked');
                $('.star-4').css('color','gray');
                $('.rating-4').css('display','none');
              }
              //star-5のClassはずす
             if($('.star-5').hasClass('star-clicked')) {
                $('.star-5').removeClass('star-clicked');
                $('.star-5').css('color','gray');
                $('.rating-5').css('display','none');
              }
              
            
            $('.rating-pointer-1').css('display','none');
            $('.rating-pointer-2').css('display','inline-block');
  })
  	
   //star-2---------------------------------------
  $('.star-2').click(
        function(){
    
            $('.star-1').css('color','yellow');
            $('.star-2').css('color','yellow');
            $('.rating').css('display','none');
            $('.rating-2').css('display','inline-block');
            $('.star-2').addClass('star-clicked');
              //star-1のClassはずす
             if($('.star-1').hasClass('star-clicked')) {
                $('.star-1').removeClass('star-clicked');
                $('.rating-1').css('display','none');
              }
             //star-3のClassはずす
             if($('.star-3').hasClass('star-clicked')) {
                $('.star-3').removeClass('star-clicked');
                $('.star-3').css('color','gray');
                $('.rating-3').css('display','none');
              }
              //star-4のClassはずす
             if($('.star-4').hasClass('star-clicked')) {
                $('.star-4').removeClass('star-clicked');
                $('.star-4').css('color','gray');
                $('.rating-4').css('display','none');
              }
              //star-5のClassはずす
             if($('.star-5').hasClass('star-clicked')) {
                $('.star-5').removeClass('star-clicked');
                $('.star-5').css('color','gray');
                $('.rating-5').css('display','none');
              }
              
            
            $('.rating-pointer-1').css('display','none');
            $('.rating-pointer-2').css('display','inline-block');
  })
  
   //star-3---------------------------------------
  $('.star-3').click(
        function(){
    
            $('.star-1').css('color','yellow');
            $('.star-2').css('color','yellow');
            $('.star-3').css('color','yellow');
            $('.rating').css('display','none');
            $('.rating-3').css('display','inline-block');
            $('.star-3').addClass('star-clicked');
              //star-1のClassはずす
             if($('.star-1').hasClass('star-clicked')) {
                $('.star-1').removeClass('star-clicked');
                $('.rating-1').css('display','none');
              }
             //star-2のClassはずす
             if($('.star-2').hasClass('star-clicked')) {
                $('.star-2').removeClass('star-clicked');
                $('.rating-3').css('display','none');
              }
              //star-4のClassはずす
             if($('.star-4').hasClass('star-clicked')) {
                $('.star-4').removeClass('star-clicked');
                $('.star-4').css('color','gray');
                $('.rating-4').css('display','none');
              }
              //star-5のClassはずす
             if($('.star-5').hasClass('star-clicked')) {
                $('.star-5').removeClass('star-clicked');
                $('.star-5').css('color','gray');
                $('.rating-5').css('display','none');
              }
              
            
            $('.rating-pointer-1').css('display','none');
            $('.rating-pointer-2').css('display','inline-block');
  })
  
     //star-4---------------------------------------
   $('.star-4').click(
        function(){
    
            $('.star-1').css('color','yellow');
            $('.star-2').css('color','yellow');
            $('.star-3').css('color','yellow');
            $('.star-4').css('color','yellow');
            $('.rating').css('display','none');
            $('.rating-4').css('display','inline-block');
            $('.star-4').addClass('star-clicked');
              //star-1のClassはずす
             if($('.star-1').hasClass('star-clicked')) {
                $('.star-1').removeClass('star-clicked');
                $('.rating-1').css('display','none');
              }
             //star-2のClassはずす
             if($('.star-2').hasClass('star-clicked')) {
                $('.star-2').removeClass('star-clicked');
                $('.rating-3').css('display','none');
              }
              //star-3のClassはずす
             if($('.star-3').hasClass('star-clicked')) {
                $('.star-3').removeClass('star-clicked');
                $('.rating-3').css('display','none');
              }
              //star-5のClassはずす
             if($('.star-5').hasClass('star-clicked')) {
                $('.star-5').removeClass('star-clicked');
                $('.star-5').css('color','gray');
                $('.rating-5').css('display','none');
              }
              
            
            $('.rating-pointer-1').css('display','none');
            $('.rating-pointer-2').css('display','inline-block');
  })
  
       //star-5---------------------------------------
   $('.star-5').click(
        function(){
    
            $('.star-1').css('color','yellow');
            $('.star-2').css('color','yellow');
            $('.star-3').css('color','yellow');
            $('.star-4').css('color','yellow');
            $('.star-5').css('color','yellow');
            $('.rating').css('display','none');
            $('.rating-5').css('display','inline-block');
            $('.star-5').addClass('star-clicked');
              //star-1のClassはずす
             if($('.star-1').hasClass('star-clicked')) {
                $('.star-1').removeClass('star-clicked');
                $('.rating-1').css('display','none');
              }
             //star-2のClassはずす
             if($('.star-2').hasClass('star-clicked')) {
                $('.star-2').removeClass('star-clicked');
                $('.rating-3').css('display','none');
              }
              //star-3のClassはずす
             if($('.star-3').hasClass('star-clicked')) {
                $('.star-3').removeClass('star-clicked');
                $('.rating-3').css('display','none');
              }
              //star-4のClassはずす
             if($('.star-4').hasClass('star-clicked')) {
                $('.star-4').removeClass('star-clicked');
                $('.rating-4').css('display','none');
              }
              
            
            $('.rating-pointer-1').css('display','none');
            $('.rating-pointer-2').css('display','inline-block');
  })
  
  //click終了------------------------------------------
  
//ratingコード終了---------------------------------------------------------
//文字数カウントコード開始---------------------------------------------------------
//$('textarea').bind('keydown keyup keypress change',function(){
        var thisValueLength = $('.review_honbun').val().length;
        console.log(thisValueLength);
        
   // })
          if(thisValueLength>0){
   
          $('.rating-pointer-1-').css('display','none');
          $('.rating-pointer-2').css('display','inline-block');
          
      }

//文字数カウントコード終了---------------------------------------------------------



});//←消さないことvar distance-top=off_top+50; 
