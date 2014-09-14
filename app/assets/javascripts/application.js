// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function ready () {
    // Attach all Canon tooltips.
    $('.tooltip-toggle').each(function (i, element) {
        var tooltip;
        tooltip = new canon.Tooltip();
        tooltip.attach(element);
    });

    // Attach all Canon dropdowns.
    $('.rs-dropdown').each(function (i, element) {
        var menu = new canon.Menu();
        menu.attach(element);
    });

    // Animate in alerts if there are any.
    $('.alert').each(function(i, element) {
        $(element).delay(300).animate({ opacity: 1 }, 700)
    });
    // Collapse ALL the sections!! _o/
    $(".rs-collapsible-section .rs-detail-section-header").click(function(){
        $(this).parent().toggleClass("collapsed expanded");
    });
};

$('document').ready(function (){
    ready();
});
