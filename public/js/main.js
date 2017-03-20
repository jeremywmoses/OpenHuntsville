$(document).ready(function() {

	$('html').addClass('js');
	$(function() {
		if ($('.parentcats').length)
		{
			$( ".parentcats" ).accordion({
				collapsible: true
			});
		}
	});
	$( ".contactme" ).click(function() {
		$(this).next( ".links" ).slideToggle( "300" );
	});
});
