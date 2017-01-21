$(document).ready(function() {
	$('.listimg').hide();
    $('#listitem1').hover(
        function() {
            $('#listimg1').slideDown('slow');
        },
        function() {
            $('#listimg1').slideUp('slow');
        }
    );
    $('#listitem2').hover(
        function() {
            $('#listimg2').slideDown('slow');
        },
        function() {
            $('#listimg2').slideUp('slow');
        }
    );
    $('#listitem3').hover(
        function() {
            $('#listimg3').slideDown('slow');
        },
        function() {
            $('#listimg3').slideUp('slow');
        }
    );
    $(".clickable-row").click(function() {
        window.document.location = $(this).data("href");
    });
});
