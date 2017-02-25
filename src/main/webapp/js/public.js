$(document).ready(function(){
    var modalStr = '<!-- start Modal -->'+
    '<div class="modal fade scroll-hidden" id="LoginModal" tabindex="-1" role="dialog"'+
        'aria-labelledby="myModalLabel" aria-hidden="true">'+
        '<div class="modal-dialog">'+
            '<div class="modal-content">'+
                '<div class="modal-header">'+
                '<img src="img/login4.png" style="width:30px;height:30px; margin-right:20px" />'+
				'<img src="img/login1.jpg" />'+
                '<button type="button" class="close text-right" aria-hidden="true" data-dismiss="modal">&times;</button>'+
                '</div>'+
                '<div class="modal-body">'+
                    '<iframe class="sign-frame" src="login.aspx" frameborder="0"></iframe>'+
                '</div>'+
                '<div class="modal-footer">'+
                '</div>'+
            '</div>'+
            '<!-- /.modal-content -->'+
        '</div>'+
        '<!-- /.modal-dialog -->'+
    '</div>'+
    '<div class="modal fade scroll-hidden" id="RegModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"'+
        'aria-hidden="true">'+
        '<div class="modal-dialog">'+
            '<div class="modal-content">'+
                '<div class="modal-header">'+
                '<img src="img/login4.png" style="width:30px;height:30px; margin-right:20px" />'+
				'<img src="img/register1.png" />'+
                '<button type="button" class="close text-right" aria-hidden="true" data-dismiss="modal">&times;</button>'+
                '</div>'+
                '<div class="modal-body">'+
                    '<iframe class="sign-frame" src="reg.aspx" frameborder="0"></iframe>'+
                '</div>'+
                '<div class="modal-footer">'+
                '</div>'+
            '</div>'+
            '<!-- /.modal-content -->'+
        '</div>'+
        '<!-- /.modal-dialog -->'+
    '</div>';
    
    $("form:first").prepend(modalStr);
    
});
