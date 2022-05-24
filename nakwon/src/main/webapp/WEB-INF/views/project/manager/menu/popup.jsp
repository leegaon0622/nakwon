<%@ page session="false" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>낙원</title>
<script type="text/javascript">	
  //function showPopup() { window.open("menuAdd", "a", "width=400, height=300, left=100, top=50"); }
Ext.onReady(function(){
    Ext.create("Ext.panel.Panel",{
        renderTo : Ext.getBody(),
        title : 'test',
        width : 300,
        height : 300,
        items : [{
            xtype : 'button',
            text : '윈도우창띄우기',
            handler : function(btn){
                // window open code here
                // 여기에 윈도우창 띄우는 코드를 작성해보겠습니다.
                Ext.create('Ext.window.Window',{
                    autoShow : true,
                    width : 300,
                    height : 300,
                    title : '윈도우제목',
                    html : '윈도우 몸통에 들어가는 HTML코드',
                    //드래그기능제어(true/false)
                    draggable : true,
                    //윈도우창 리사이즈기능(true/false)
                    resizable : true,
                    //브라우저화면을 채우는 기능(true/false)
                    maximizable : true,
                    //cloasAction을 정의하면 키보드의 esc클릭시 자동 닫힘
                    closeAction : 'destroy',
                    //모달창으로 부모창비활성(true/false)
                    modal : true,
                    //윈도우창이 화면에 보여질때 타겟을 지정하게되면 해당 타겟으로부터 나타나는 효과
                    animateTarget : btn
                })
            }
        }]
    })
})
</script>
</head>

<style></style>
</head>
<body>


</body>
</html> 