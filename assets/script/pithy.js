(function(){

    var totop = '[data-toggle="totop"]';
    var documentHeight = $(document).height();
    var windowHeight = $(window).height();

    var ToTop = function (element) {
        $(element).on('click',totop,this.toTop());
    }



    ToTop.prototype.toTop = function(e){
        $('html, body').animate({scrollTop:0},200);
    }


    if(documentHeight > windowHeight){
        $(totop).show();
    }else{
       $(totop).hide();
    }

    $(document).on('click.totop.data-api', totop, ToTop.prototype.toTop);
}());
