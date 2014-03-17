$(document).ready(function () {

    var $el, leftPos, newWidth,
        $mainNav = $('#menuList');

    $mainNav.append("<li id='magic-line'><li>");
    var $magicLine = $('#magic-line');

    $magicLine
        .width($('.current_page').width())
        .css('left', $('.current_page a').position().left - 35)
        .data('origLeft', $magicLine.position().left)
        .data('origWidth', $magicLine.width());

    $('#menuList li a').hover(function () {
        $el = $(this);
        leftPos = $el.position().left - 35;
        newWidth = $el.parent().width();
        $magicLine.stop().animate({
            left: leftPos,
            width: newWidth
        });
    }, function () {
        $magicLine.stop().animate({
            left: $magicLine.data('origLeft'),
            width: $magicLine.data('origWidth')
        });
    });
});