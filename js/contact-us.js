var ContactUs = function () {

    return {
        //main function to initiate the module
        init: function () {
			var map;
			$(document).ready(function(){
			  map = new GMaps({
				      div: '#map_canvas',
	            lat: 5.809589,
              lng: 102.148709,
              zoom: 17,
              scrollwheel: false
			  });
			   var marker = map.addMarker({
		            lat: 5.809589,
					      lng: 102.148709,
		            title: 'Loop, Inc.',
		            infoWindow: {
		                content: "<b>Kami di sini</b>"
		            }
		        });

			   marker.infoWindow.open(map, marker);
			});
        }
    };

}();
