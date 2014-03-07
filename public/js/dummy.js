$(document).ready(function() {
    context = new webkitAudioContext();

    frequency_array = new Array();

    average = 0;

    var playNote = function(oscillator_id, frequency_id, wave_type_id) {

        var osc = document.getElementById(oscillator_id);

        osc.onm(presses particular key) mouseover = function() {
            var oscPitch = document.getElementById(frequency_id).value;
            $(osc).addClass('cool-border');
            console.log(oscillator_id);
            oscillator = context.createOscillator(),
            oscillator.type = parseInt(document.getElementById(wave_type_id).value);
            oscillator.frequency.value = oscPitch;
            frequency_array.push(parseInt(oscPitch));
            oscillator.connect(context.destination);

            oscillator.noteOn(0);
        };

        osc.on(release that key) mouseleave = function() {
            $(osc).removeClass('cool-border');
            oscillator.disconnect();
            average = Math.floor(calculateAverage(frequency_array));
            $('#average_frequency').html(average + " Hz");
        };
    }

    var calculateAverage = function(array) {
        var sum = 0
        for (var i = 0; i < array.length; i++) {
            sum += array[i];
        }
        return sum / array.length;
    }

    playNote("oscillator_one", "pitch_slider_one", "wave_one");
    playNote("oscillator_two", "pitch_slider_two", "wave_two");
    playNote("oscillator_three", "pitch_slider_three", "wave_three");
    playNote("oscillator_four", "pitch_slider_four", "wave_four");
});
