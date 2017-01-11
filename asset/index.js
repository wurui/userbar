define([],function(){
  return {
    init:function($mod){
        var loginLink=$mod.find('.J_loginLink')[0];
        if(loginLink){
            loginLink.href+='?backurl='+encodeURIComponent(location.href);
        }
    }
  }
})
