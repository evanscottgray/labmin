// = require jquery
// = require moment
// = require bootstrap.min
// = require bootstrap-datetimepicker.min

function ready() {

    // Initialize functions.

    function initStartTimePicker(){
        $('.start-input').datetimepicker({
            minuteStepping: 15
        });
    }

    function initEndTimePicker(){
        $('.end-input').datetimepicker({
            minuteStepping: 15
        });
    }

    // Call Functions
    initStartTimePicker();
    initEndTimePicker();
};

$('document').ready(function (){
    ready();
});