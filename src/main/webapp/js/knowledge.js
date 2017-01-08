
$(document).ready(function(e){
$.ajax({              
            type: "post",            
            url: "http://java.willowspace.net/getKnowledgeTree",
            contentType: "application/json; charset=utf-8",
            dataType: "json",     
            success: function(data) {    //待改进，一次数据量太大
                var json = eval("("+data.d+")"); //将json字符串转换成json对象
                catalogue(json);
            },
            error: function(err) {     
                alert("error");     
            }     
});
function catalogue(json){
    i=0;
    var rsString ='';//<div class="top_img"></div>
    rsString += "<ul class='nav sidenav sidenav nav-tabs nav-stacked'>";
    var tmp_num = 0;                
    for(i = 0;i<json.length;i++){
        var id = json[i].Id;
        var level = json[i].Level;
        var sup = json[i].Super_level;
        var sub_num = json[i].Sub_num;
        var number = json[i].Number;
        var description = json[i].Description;
        var content = json[i].Content;
        
        if(level == 1 && sub_num == 0){
            rsString += "<li class=''><a id='#"+id+"'href='javascript:void(0);'>"+description+"</a></li>";
        }else if(level == 1 && sub_num != 0){
            tmp_num = sub_num;
            rsString += "<li class=''><a id='#"+id+"'href='javascript:void(0);'>"+description+"</a><ul class='nav father'>";
        }else if(level == 2){
            rsString += "<li class='toLink'><a id='"+id+"' href='javascript:void(0);' target='_blank'>"+description+"</a><div class='hidenData' style='display:none'>"+content+"</div></li>";
            tmp_num--;
            if(tmp_num == 0){
                rsString +="</ul>";
            }
        }
    }
    rsString += "</ul>";
    $("#toc").html(rsString);
    $(".top_img").css("background","url(img/top_zsgl.jpg) no-repeat");
    $(".top_img").css("background-size","100% 100%");
   
    //左侧目录交互效果
    $("#toc > ul > li > a").click(function(e){
        e.stopPropagation();
        var currentList = $(this).parent().children("ul.father");
        if(currentList.css("display")=="block"){
            currentList.slideUp();
            return true;
        }
        $("#toc > ul > li").removeClass("active");
        $(".father").each(function(){
            $(this).slideUp();
        });
        currentList.slideToggle();
        $(this).parent().addClass("active");
        return true;
    });
    
    $("li.toLink").click(function(){
        var contentId=$(this).children("div.hidenData").html();
        var cardName = $(this).children("a").html();
        var dividing = "<div class=\"dividing\"><h2><label class=\"skew\"><i>"+cardName+"</i></label></h2></div>";
        $("#dividing").html(dividing);
        $.ajax({              
            type: "post",            
            url: "knowledge.aspx/getKnowledgeContent",
            contentType: "application/json; charset=utf-8",
            data:'{"contentId":"'+contentId+'"}',
            dataType: "json",     
            success: function(data) {    //待改进，一次数据量太大
                var json = eval("("+data.d+")"); //将json字符串转换成json对象
                $("#content_frame").html(json[0].Content);
            },
            error: function(err) {     
                alert("error");     
            }     
        });
    });
    $("li.toLink").first().click();//初始数据
}
});