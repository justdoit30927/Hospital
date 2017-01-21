using System;
using System.Data.SqlClient;

public partial class home : System.Web.UI.Page
{
    SqlConnection myConn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        int rows = 5;
        //string strConn = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=hospital;Integrated Security=True;Pooling=False";
        
        //建立連結
        //SqlConnection myConn = new SqlConnection(strConn);
        //打開連結
        myConn.Open();
        string strSQL = @"SELECT * FROM [News] ORDER BY CRDT DESC";
        //建立命令對象
        SqlCommand myCommand = new SqlCommand(strSQL, myConn);
        //得到Data
        SqlDataReader myDataReader = myCommand.ExecuteReader();
        //讀取結果
        while (myDataReader.Read() & rows >0)
        {
         
            Label1.Text += "<tr class='clickable-row ' data-href=''>";
            //Label1.Text += "<td>" + myDataReader["Id"].ToString() + "</ td >";
            Label1.Text += "<td>" + myDataReader["Title"].ToString() + "</ td>";
            Label1.Text += "<td>" + Convert.ToDateTime(myDataReader["CRDT"]).ToString("yyyy / MM / dd") +  "</ td>";
            Label1.Text += "<td>" + "<form action='page.aspx' method='get' target='_blank'>"
                         + "<input type='hidden' name='id' value='" + myDataReader["ID"].ToString() + "'/>"
                         + "<input type='hidden' name='title' value='" + myDataReader["Title"].ToString() + "'/>"
                         + "<input type = 'hidden' name = 'count' value = '1'/>"
                         + "<a href = '#' target='_blank' >"
                         + "<div class='morePositionSet'>"
                         + "<input type = 'submit' value='>>閱讀更多' class='more' />"
                         + "</div>"
                         + "</a>"
                         + "</form>" + "</td>";
            Label1.Text += "</ tr>";
            rows -= 1;
        }
        myConn.Close();

    }
}
