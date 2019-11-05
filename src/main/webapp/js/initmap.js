var map;
		$(document).ready(function() {
			map = new GMaps({
				el : '#map',
				lat : 37.469084,
				lng : 126.887242,
				zoomControl : true,
				zoomControlOpt : {
					style : 'SMALL',
					position : 'LEFT_BOTTOM'
				},
				panControl : true,
				streetViewControl : true,
				mapTypeControl : true,
				overviewMapControl : true,
				scrollwheel : true,
			});
				
			map.addMarker({
				lat : 37.469084,
				lng : 126.887242,
				title : 'MAPINUS',
				infoWindow: {
					  content: '<p>MAPINUS</p>'
				}
			});
		});