$(document).ready(function () {
    $('#login').click(function () { 
        // $('.tab-login').css('opacity', "1");
        // $('.tab-register').css('opacity', "0");
        // $('.tab-register').css('visibility', "hidden");
        // $('.tab-login').css('visibility', "visible");
        $("#register a").css("background","#f8f8f8");
        $("#login a").css("background","#337ab7");
        $("#login a").css("boder-bottom","solid 1px #555");
        $("#login a").css("color","#000 !important");
        $("#login a").css("background","#337ab7 !important");
    });
    $('#register').click(function () { 
        // $('.tab-login').css("opacity", "0");
        // $('.tab-register').css("opacity", "1");
        // $('.tab-login').css('visibility', "hidden");
        // $('.tab-register').css('visibility', "visible");
        $("#login a").css("background","#f8f8f8");
        $("#register a").css("background","#337ab7");
        $("#register a").css("boder-bottom","solid 1px #555");
        $("#login a").css("color","#000 !important");
        $("#login a").css("background","#337ab7 !important");
    });
    $("#card-member").click(function (event) { 
        event.preventDefault();
        $("#tab-card-member").css("display", "block");
        $("#tab-info").css("display", "none");
        $("#tab-history").css("display", "none");
        $("#tab-point").css("display", "none");
        $("#tab-voucher").css("display", "none");
        $("#card-member").css("background-color", "#337ab7");
        $("#card-member a").css("color", "white");
        $("#point a").css("color", "black");
        $("#history a").css("color", "black");
        $("#voucher a").css("color", "black");
        $("#info a").css("color", "black");
        $("#info").css("background-color", "white");
        $("#history").css("background-color", "white");
        $("#point").css("background-color", "white");
        $("#voucher").css("background-color", "white");
    });
    $("#info").click(function (event) { 
        event.preventDefault();
        $("#tab-info").css("display", "block");
        $("#tab-card-member").css("display", "none");
        $("#tab-history").css("display", "none");
        $("#tab-point").css("display", "none");
        $("#tab-voucher").css("display", "none");
        $("#info").css("background-color", "#337ab7");
        $("#info a").css("color", "white");
        $("#point a").css("color", "black");
        $("#history a").css("color", "black");
        $("#card-member a").css("color", "black");
        $("#voucher a").css("color", "black");
        $("#card-member").css("background-color", "white");
        $("#history").css("background-color", "white");
        $("#point").css("background-color", "white");
        $("#voucher").css("background-color", "white");
    });
    $("#history").click(function (event) { 
        event.preventDefault();
        $("#tab-info").css("display", "none");
        $("#tab-card-member").css("display", "none");
        $("#tab-history").css("display", "block");
        $("#tab-point").css("display", "none");
        $("#tab-voucher").css("display", "none");
        $("#history").css("background-color", "#337ab7");
        $("#history a").css("color", "white");
        $("#point a").css("color", "black");
        $("#voucher a").css("color", "black");
        $("#card-member a").css("color", "black");
        $("#info a").css("color", "black");
        $("#card-member").css("background-color", "white");
        $("#info").css("background-color", "white");
        $("#point").css("background-color", "white");
        $("#voucher").css("background-color", "white");
    });
    $("#point").click(function (event) { 
        event.preventDefault();
        $("#tab-info").css("display", "none");
        $("#tab-card-member").css("display", "none");
        $("#tab-history").css("display", "none");
        $("#tab-point").css("display", "block");
        $("#tab-voucher").css("display", "none");
        $("#point").css("background-color", "#337ab7");
        $("#point a").css("color", "white");
        $("#voucher a").css("color", "black");
        $("#history a").css("color", "black");
        $("#card-member a").css("color", "black");
        $("#info a").css("color", "black");
        $("#card-member").css("background-color", "white");
        $("#info").css("background-color", "white");
        $("#history").css("background-color", "white");
        $("#voucher").css("background-color", "white");
    });
    $("#voucher").click(function (event) { 
        event.preventDefault();
        $("#tab-info").css("display", "none");
        $("#tab-card-member").css("display", "none");
        $("#tab-voucher").css("display", "block");
        $("#tab-point").css("display", "none");
        $("#tab-history").css("display", "none");
        $("#voucher").css("background-color", "#337ab7");
        $("#voucher a").css("color", "white");
        $("#point a").css("color", "black");
        $("#history a").css("color", "black");
        $("#card-member a").css("color", "black");
        $("#info a").css("color", "black");
        $("#card-member").css("background-color", "white");
        $("#info").css("background-color", "white");
        $("#point").css("background-color", "white");
        $("#history").css("background-color", "white");
    });

});