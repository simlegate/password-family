
jQuery(function(){ 
    document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());
    setInterval("document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);

    $('form.simple_form').live('ajax:beforeSend', function(event, xhr, settings) {
	$('.modal').modal('hide')
    }).live('ajax:error', function(event, xhr, settings) {
　　　　$(".message").html('<div class="alert alert-error"><a class="close" data-dismiss="alert">×</a><strong>错误!&nbsp;</strong><span>操作失败！,请检测房间名是否重复或者网络是否畅通！稍后再试！</span></div>')
    }).live('ajax:success', function(event, xhr, settings) {
　　　　$(".message").html('<div class="alert alert-info"><a class="close" data-dismiss="alert">×</a><strong>成功!&nbsp;</strong><span>操作成功！</span></div>')
    });

    $('a.delete').live('ajax:beforeSend', function(event, xhr, settings) {
	if(confirm('确定要删除吗?')){
	    return true;
	}
	return false;
    })
})

function toggle_password($o,pass){
   if($o.find("span[class=pass]").html()=="××××××××××××"){
	$o.find("span[class=pass]").html(pass)
    }else{
	$o.find("span[class=pass]").html("××××××××××××")
    }
}

