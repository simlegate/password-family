
jQuery(function(){ 
    document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());
    setInterval("document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
})

function toggle_password($o,type,pass){
    if(type=="show"){
	$o.html('<div class="input-append"><input class="input-medium" disabled="disabled" id="appendedPrependedInput" type="text" value="'+pass+'"><button class="btn toggle" onclick="toggle_password($(this).parents("td"),"hide",'+pass+')" type="button"><i class="icon-eye-open"></i></button></div>')
    }else{
	$o.html('<div class="input-append"><input class="input-medium" disabled="disabled" id="appendedPrependedInput" type="password" value="'+pass+'"><button class="btn toggle" onclick="toggle_password($(this).parents("td"),"show",'+pass+')" type="button"><i class="icon-eye-open"></i></button></div>')
    }
}

