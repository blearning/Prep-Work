$(document).ready(function(){

	/** Click Alerts **/
	$('.click-disabled').click(function(){
		alert('Sorry. This is a disabled function')
	});

	/** Close Notification **/
	$('.close').click(function(){
		$('#notification, .notification-spacer').fadeOut('slow');
	});

	/** Hide Photo **/
	$('.hide-photo').click(function(){
		
		$currentText = $(this).text();

		if ($currentText == '▲ Hide Photo'){
			$(this).html('&#x25BC Show Photo')
		}else{
			$(this).html('&#x25B2; Hide Photo')
		}
		
		$('.featured-recipe-photo').slideToggle('slow');

	});

	/** Ingredients Crossed Out **/
	$('.ingredients li').click(function(){

		$(this).toggleClass('crossed-out');

		var totalItems = $('.ingredients li').length;
		var totalItemsCrossedOff = $('.ingredients li.crossed-out').length;

		if(totalItems == totalItemsCrossedOff){
			$('.ingredients-left').html('<span class="complete">You Are Ready to Cook!</span>');
		}else{
			$('.ingredients-left').html('<span class="not-complete">You gathered '+totalItemsCrossedOff +' / '+ totalItems + ' items!</span>');
		};



	});


	/** Directions Checked Off **/
	$('.directions li').click(function(){

		$(this).toggleClass('checked-off');

		var totalItems = $('.directions li').length;

		var totalItemsCrossedOff = $('.directions li.checked-off').length;

		if(totalItems == totalItemsCrossedOff){
			$('.directions-left').html('<span class="complete">Mission Accomplished!<br/>Dont forget to Instagram!</span>');
		}else{
			$('.directions-left').html('<span class="not-complete">Steps '+totalItemsCrossedOff +' out of '+ totalItems + ' is complete!</span>');
		};

	});

});