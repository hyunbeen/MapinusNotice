
(function ($) {
	"use strict";
	

	
	jQuery(document).ready(function ($) {

		//Loader
		$("#fakeLoader").fakeLoader({
		    timeToHide:1200, // 로딩중에 걸리는 시간, 1000은 1초
		    bgColor:"#ffffff", // 배경색
		    spinner:"spinner1" // 로딩중으로 원하는 로딩이미지타입
		  });
		
		//Carousel
		$('#Carousel').carousel({
			interval: 5000,
			item: 2
		})

		//Menu move
		$('.menu').click(function(){
			var menu = $(this).attr('href');
			location.href = menu;
		});   
		
		//Select Language
		$('#langSelect').change(function(){
			location.href = "home.mu?lang="+this.value;
		});   

		// fancybox
		$(".fancybox").fancybox({
			padding: 0,

			openEffect : 'elastic',
			openSpeed  : 450,

			closeEffect : 'elastic',
			closeSpeed  : 350,

			closeClick : true,
			helpers : {
				title : { 
					type: 'inside' 
				},
				overlay : {
					css : {
						'background' : 'rgba(0,0,0,0.8)'
					}
				}
			}
		});
	});


	//STICKY scroll
	$.localScroll();

	jQuery(window).load(function () {
	
		
		//Select Language
		$('#langSelect').wSelect();
		
		//쿠키 정보에 따라서 팝업창의 오픈 여부를 판단한다
		$.ajax({
			url:'../popup/popupOpen.mu',
			success:function(data){
				if(data == '0'){
					window.open("../popup/popup.mu?lang="+$("#lang").val(), "_blank", "width=400,height=530");
				}
			}
		});
		
	});



}(jQuery));
