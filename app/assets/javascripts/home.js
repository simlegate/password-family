
jQuery(function(){ 
    document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());
    setInterval("document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);

    $('form.simple_form').on('ajax:beforeSend', function(event, xhr, settings) {
	$('.modal').modal('hide')
    });
})

function toggle_password($o,pass){
   if($o.find("span[class=pass]").html()=="××××××××××××"){
	$o.find("span[class=pass]").html(pass)
    }else{
	$o.find("span[class=pass]").html("××××××××××××")
    }
}

