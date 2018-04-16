<!-- clock-->
// 24 hour clock
setInterval(function() {

    var currentTime = new Date();
    var hours = currentTime.getHours();
    var minutes = currentTime.getMinutes();
    var seconds = currentTime.getSeconds();
    var date = currentTime.getDate();
    var month = currentTime.getMonth();
    var year = currentTime.getFullYear();

    // Add leading zeros
    hours = (hours < 10 ? "0" : "") + hours;
    minutes = (minutes < 10 ? "0" : "") + minutes;
    seconds = (seconds < 10 ? "0" : "") + seconds;

    // Compose the string for display
    var currentTimeString = hours + ":" + minutes + ":" + seconds;
    $(".clock").html(currentTimeString);

    // Compose the string for display date
    var currentDateString = date + "/" + (month+1) + "/"+ year;
    $(".date").html(currentDateString);
}, 1000);

<!-- End Of Clock -->
