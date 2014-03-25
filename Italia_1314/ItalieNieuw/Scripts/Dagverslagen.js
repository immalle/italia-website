$(document).ready(function () {

    var getReportData = function () {
        var $data = $(this);

        var options = {
            url: $data.attr("data-it-action"),
            type: "get",
            data: { 'id': $data.attr('data-it-id') }
        };

        $.ajax(options).done(function (data) {
            var maanden = ["januari", "februari", "maart", "april", "mei", "juni", "juli", "augustus", "september", "oktober", "november", "december"];

            var datum = new Date(parseInt((data[0].Date).substr(6)));



            var output = "<br \>\
                <p>" + data[0].Title + " - " + datum.getDate() + " " + maanden[datum.getMonth()] + " " + datum.getFullYear() + "</p>\
                <p>" + data[0].Report + "</p>";

            $('#dagDetails').html(output);
        });
    };



    $('.title').click(getReportData);

});