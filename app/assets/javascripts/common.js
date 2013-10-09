/*-------------------------------------------------------------------------



/*------------------------------------------------------------------------

//GENERAL FUNCTONS ///////////////////////////////////////////////////////

-------------------------------------------------------------------------*/

$(document).ready(function(){
						   
	
	/*vars used throughout*/
	var toggleMenu =$('.mobileMenuToggle'),			//Mobile menu ref.
	    menuLink=$('ul.navigation li'),
		lightboxTransition = 'fade',				//Fancybox transition type
	 	overlayOpacity =0.8,						//Fancybox overlay opacity
	 	overlayColor = '#000',						//Fancybox overlay color	
	 	videoWidth = 663,							//Fancybox video width
	 	videoHeight = 374;							//Fancybox video height
		lazyload = true;							//Whether to use lazy load or not


	

	
	//SUB MENU ------------------------------------------------------------------------------/
	

	
	menuLink.on({
							 
		mouseenter: function () {
			
			if($(this).children('ul').length && $(window).width() > 767){
				
				$(this).children('ul').css({display:'block',opacity:0,top:'43px'}).stop().animate({opacity:1,top:'45px'},400);
				
			}

		}, 
	
		 mouseleave: function () {
			 
			if($(this).children('ul').length  && $(window).width() > 767){
				
				$(this).children('ul').stop().animate({opacity:0,top:'43px'},400,function(){
																					  
					
					$(this).hide();
					
					
				});
				
			}
		}
		
	});
				

	
});