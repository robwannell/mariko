// turbolinks addthis
var initAdthis;

initAdthis = function(){
    // Remove all global properties set by addthis, otherwise it won't reinitialize
    for (var i in window) {
        if (/^addthis/.test(i) || /^_at/.test(i)) {
            delete window[i];
        }
    }
    window.addthis_share = null;

    // Finally, load addthis
    $.getScript("http://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-56255ceae91c5857");
}

// Trigger the function on both jquery's ready event and turbolinks page:change event
$(document).on('ready page:change', function() {
    initAdthis();
});


