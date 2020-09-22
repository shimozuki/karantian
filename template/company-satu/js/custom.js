(function ($) {

    'use strict';

    /*
	Popup with video or map
	*/
    $('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
        type: 'iframe',
        mainClass: 'mfp-fade',
        removalDelay: 160,
        preloader: false,

        fixedContentPos: false
    });

    /*
	Dialog with CSS animation
	*/
    $('.popup-with-zoom-anim').magnificPopup({
        type: 'inline',

        fixedContentPos: false,
        fixedBgPos: true,

        overflowY: 'auto',

        closeBtnInside: true,
        preloader: false,

        midClick: true,
        removalDelay: 300,
        mainClass: 'my-mfp-zoom-in'
    });

    /*News alert*/
    $('#newsalertForm').validate({
        onkeyup: false,
        onclick: false,
        onfocusout: false,
        rules: {
            'checkboxes[]': {
                required: true
            },
            'topic[]': {
                required:true
            },
            'doc[]': {
                required:true
            }
        },
        errorPlacement: function (error, element) {
            if (element.attr('type') == 'radio' || element.attr('type') == 'checkbox') {
                error.appendTo(element.parent().parent());
            } else {
                error.insertAfter(element);
            }
        }
    });

}).apply(this, [jQuery]);