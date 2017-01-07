
$(document).ready(function(){
  $("#login_button").on("click", function() {
    var login_info = {
      "owner": {
        "username": $("#owner_username").val(),
        "password": $("#owner_password").val()
      }
    };

    
    $.ajax({
       // tell the server that we are talking JSON
       dataType: 'json',
      //  url: '/welcome/login?user='+ $("#owner_username").val()+ '&pass=' + $("#owner_password").val(),
       url: '/welcome/login',
       method: 'GET',
       data: login_info,
       success: function(dataFromServer) {
         alert("Received message: " + JSON.stringify(dataFromServer));
         // Build out list or table of cars owned
       },
       error: function(jqXHR, textStatus, errorThrown) {
         $("#login_errors").text(errorThrown);
        //  alert("Username or password incorrect");
       }
     });// end ajax
  });


});
