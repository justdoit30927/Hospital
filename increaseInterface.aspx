 <%@ Page Language="VB" AutoEventWireup="false" CodeFile="increaseInterface.aspx.vb" Inherits="increaseInterface" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <link rel="Shortcut Icon" type="image/x-icon" href="imgs/icon.ico" />
    <title>新增文章 - 新光糖尿病悠遊網</title>
    <link rel="stylesheet" type="text/css" href="increaseInterface.css"/>
    <!--boostrap-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--jQuery-->
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>    	
	<div id='center' class="modal-content">		
		<form  id="form" runat="server">
			<div id='form1'>
				<h4>編輯文章</h4>                	
			</div>
        <hr/>
		<h5>標題:</h5>
        <asp:TextBox ID="textbox" runat="server"  placeholder="輸入標題" class="title"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="不可以空白" ControlToValidate="textbox"></asp:RequiredFieldValidator>	
            <!--p style='color:#f00'>(注意:標題不能重複)</p-->		
		<input type='radio'  name="radio1" value='true'/>設為熱門文章
		<input type='radio'  name="radio1" value="false" checked="true"/>取消
		<br/>
		<h5>內容:</h5>
		<textarea class="textarea" id="textarea1" runat="server" name="information"  placeholder="輸入內容"></textarea>
		<br/>
            <asp:Button ID='Button1' runat="server" Text="送出" />
	</form>
	<br/>	
	<input type ="button" onclick="javascript:location.href='hiddenHome.aspx'" value="回上一頁"/>
	</div>
    
</body>
</html>
