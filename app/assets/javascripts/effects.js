$(document).on('turbolinks:load', function(){

 $('.modal-footer button').click(function(){
   var button = $(this);

   if ( button.attr("data-dismiss") != "modal" ){
     var inputs = $('.modal-body form input');
     var title = $('.modal-title');
     var progress = $('.progress');
     var progressBar = $('.progress-bar');

     var form = $('.modal-body form');
     console.log(form);

     button.hide();
     progress.show();

     progressBar.animate({width : "100%"}, 100);
     // inputs.attr("disabled", "disabled");

     progress.delay(1000).fadeOut(600);

     button.text("Close")
       .removeClass("btn-primary")
       .addClass("btn-success")
       .blur()
       .delay(1600)
       .fadeIn(function() {
         title.text("Log in is successful");
         button.attr("data-dismiss", "modal");
       }).delay(1000, function() {
         form.submit();
       });
   }

   $('#myModal').on('hidden.bs.modal', function (e) {
     var inputs = $('.modal-body form input');
     var title = $('.modal-title');
     var progressBar = $('.progress-bar');
     var button = $('.modal-footer button');

     inputs.removeAttr("disabled");

     title.text("Log in");

     progressBar.css({ "width" : "0%" });

     button.removeClass("btn-success")
     .addClass("btn-primary")
     .text("Log In!")
     .removeAttr("data-dismiss");

   });

 });
});
