$(document).ready(function(){
    $("button.btn-outline-success").click(function(){
     $(".bgark").css("background" , " #333");
     
  })  
})

$(document).ready(function(){
    $(window).scroll(function(){
  	var scroll = $(window).scrollTop();  
      if (scroll > 1) {
	    $(".bgark").css("background" , "#333");
	  }
	  else{
		  $(".bgark").css("background" , "transparent");  	
	  }
  })
})