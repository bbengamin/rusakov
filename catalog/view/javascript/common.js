function getURLVar(key) {
	var value = [];

	var query = String(document.location).split('?');

	if (query[1]) {
		var part = query[1].split('&');

		for (i = 0; i < part.length; i++) {
			var data = part[i].split('=');

			if (data[0] && data[1]) {
				value[data[0]] = data[1];
			}
		}

		if (value[key]) {
			return value[key];
		} else {
			return '';
		}
	}
}

$(document).ready(function() {
	$(document).on('submit', '.order-form', function(e) {
		e.preventDefault();
		
		$('.error').detach();
		
		$form = $(this);
		
	    $.ajax({
			url: 'index.php?route=order/order/add',
			type: 'post',
			data: $form.find('input, textarea'),
			dataType: 'json',
			success: function(json) {
				if (json['error']) {
					$.each(json['error'], function(key, val) {
						$form.find('[name="' + key + '"]').after('<span class="error">' + val + '</span>');
                    });
				}
				if (json['success']) {
					$form[0].reset();
					$form.hide();
					$form.next().show();
					//$form.parents('.modal').modal('hide');
					
					//$('#modal-thanks').modal('show');
					
				}
			}
		});
		
		return false;	
	});
	
	
	$('.nav-menu a').on('click', function(e) {
	    e.preventDefault();
	    $('.nav-menu li').removeClass('active');
		$(this).parent().addClass('active');
	    $('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top - 150 }, 'slow');
	    return false;
	});
	
	$("#sticker").sticky({
		topSpacing:0,
		bottomSpacing:200
	});
	new WOW().init();
});

function openNav() {
    document.getElementById("mySidenav").style.left = "0";
    document.getElementById("mob-overlay").style.left = "0";
}

/* Set the width of the side navigation to 0 */
function closeNav() {
    document.getElementById("mySidenav").style.left = "-9999px";
    document.getElementById("mob-overlay").style.left = "-9999px";
}