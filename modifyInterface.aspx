<%@ Page Language="VB" AutoEventWireup="false" CodeFile="modifyInterface.aspx.vb" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <link rel="Shortcut Icon" type="image/x-icon" href="imgs/icon.ico" />
    <title>修改文章 - 新光糖尿病悠遊網</title>
    <link rel="stylesheet" type="text/css" href="modifyInterface.css"/>
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
    <form id="form" runat="server">
        <div id='form1'>
				<h4>修改文章</h4>
                <!--hr/>
                <h5>日期:</h5>
				<span/>年:
				<select name='year'>
					<option>2015</option>
					<option>2016</option>
					<option>2017</option>
					<option>2018</option>
					<option>2019</option>
					<option>2020</option>
					<option>2021</option>
					<option>2022</option>
					<option>2023</option>
					<option>2024</option>
					<option>2025</option>
					<option>2026</option>
					<option>2027</option>
					<option>2028</option>
					<option>2029</option>
				</select>
				<span/>月:
				<select name='month'>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>
					<option>9</option>
					<option>10</option>
					<option>11</option>
					<option>12</option>
				</select>
				<span/>日:
				<select name='day'>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>
					<option>9</option>
					<option>10</option>
					<option>11</option>
					<option>12</option>
					<option>13</option>
					<option>14</option>
					<option>15</option>
					<option>16</option>
					<option>17</option>
					<option>18</option>
					<option>19</option>
					<option>20</option>
					<option>21</option>
					<option>22</option>
					<option>23</option>
					<option>24</option>
					<option>25</option>
					<option>26</option>
					<option>27</option>
					<option>28</option>
					<option>29</option>
					<option>30</option>
					<option>31</option>
				</select-->			
			</div>		
		<hr/>
        <h5>標題:</h5>
        <asp:TextBox ID="textbox" runat="server"  placeholder="輸入標題" class="title"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="不可以空白" ControlToValidate="textbox" Enabled="True"></asp:RequiredFieldValidator>
            <!--p style='color:#f00'>(注意:標題不能重複)</p-->
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br/>
        <h5>內容:</h5>		
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
		<br/>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br/>
        
        <asp:Button ID='Button1' runat="server" Text="送出" />

    </form>
        <input type ="button" onclick="javascript:location.href='HiddenHome.aspx'" value="回上一頁"/>
	</div>
    
</body>
</html>
