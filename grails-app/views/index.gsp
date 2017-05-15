<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
    <title>Travel Coming Soon Flat Responsive Widget Template :: w3layouts</title>

    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Travel Coming Soon Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Meta tag Keywords -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- css files -->
    %{--<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />--}%
    <asset:stylesheet href="style.css" />
    %{--<link rel="stylesheet" href="css/jquery.countdown.css" />	<!-- Countdown-CSS -->--}%
    <asset:stylesheet href="jquery.countdown.css" />
    %{--<link href="css/font-awesome.css" rel="stylesheet"> <!-- Font-Awesome-Icons-CSS -->--}%
    <asset:stylesheet href="font-awesome.css" />

<!-- css files -->

<!-- js -->
    %{--<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>--}%
    <asset:javascript src="jquery-2.1.4.min.js"/>
    <!-- //js -->

    <!-- Online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Ubuntu+Condensed&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext" rel="stylesheet">
    <!-- //Online-fonts -->

</head>
<body>
%{--<script src="js/jquery.vide.min.js"></script>--}%
<asset:javascript src="jquery.vide.min.js"/>
<!-- main -->
<div data-vide-bg="assets/video/Mykonos.mp4">
    <div class="center-container">
        <div class="w3ls_banner_info">
            <h1>Travel Coming Soon</h1> <span> <g:link controller="inquiryDetail" action="registerInquiry"><button type="button" class="btn btn-success"> Inquiry</button> </g:link></span>
            <p>BE READY, WE ARE LAUNCHING SOON.</p>
            <!--timer-->
            <div class="examples">
                <div class="simply-countdown-losange" id="simply-countdown-losange"></div>
                <div class="clear"></div>
            </div>
            <!--//timer-->

            <div class="newsletter-agile">
                <p>Send us Your Mail, we'll make sure You Never Miss a Thing!</p>
                <form action="#" method="post">
                    <input type="email" name="email" size="30" required="" placeholder="Please fill your email">
                    <input type="submit" value="Subscribe">
                </form>
            </div>
            <ul class="top-links-w3">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
            </ul>
        </div>
        <!--footer-->
        <div class="footer-w3">
            <p>&copy; 2017 Travel Coming Soon. All rights reserved | Design by Reban and Arjun</p>
        </div>
        <!--//footer-->
    </div>
</div>
<!-- //main -->


<!--scripts-->
<!-- Countdown-Timer-JavaScript -->
%{--<asset:javascript src="simplyCountdown.js">--}%
<asset:javascript src="simplyCountdown.js"/>

<script>
    var d = new Date(new Date().getTime() + 70* 120 * 120 * 2000);

    // default example
    simplyCountdown('.simply-countdown-one', {
        year: d.getFullYear(),
        month: d.getMonth() + 1,
        day: d.getDate()
    });

    // inline example
    simplyCountdown('.simply-countdown-inline', {
        year: d.getFullYear(),
        month: d.getMonth() + 1,
        day: d.getDate(),
        inline: true
    });

    //jQuery example
    $('#simply-countdown-losange').simplyCountdown({
        year: d.getFullYear(),
        month: d.getMonth() + 1,
        day: d.getDate(),
        enableUtc: false
    });
</script>
<!-- //Countdown-Timer-JavaScript -->
<!--//scripts-->


</body>
</html>
