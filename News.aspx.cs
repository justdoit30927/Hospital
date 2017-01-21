using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class News : System.Web.UI.Page
{
    SqlConnection myConn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
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

        //SqlDataAdapter myAdapter = new SqlDataAdapter(strSQL, myConn);
        //讀取結果
        while (myDataReader.Read())
        {
           // if (myDataReader["Id"].ToString() == "1")
            //{
                Label1.Text += "<tr class='clickable-row ' data-href=''>";
                Label1.Text += "<td>" + myDataReader["Title"].ToString() + "</ td>";
                Label1.Text += "<td>" + Convert.ToDateTime(myDataReader["CRDT"]).ToString("yyyy / MM / dd")  + "</ td>";
                Label1.Text += "<td>" + "<form action='page.aspx' method='get' target='_blank'>"
                             + "<input type='hidden' name='id' value='" + myDataReader["ID"].ToString() + "'/>"
                             + "<input type='hidden' name='title' value='"+ myDataReader["Title"].ToString() + "'/>"
                             + "<input type = 'hidden' name = 'count' value = '1'/>"
                             + "<a href = '#' target='_blank' >"
                             + "<div class='morePositionSet'>"
                             + "<input type = 'submit' value='>>閱讀更多' class='more' />"
                             + "</div>"
                             + "</a>"
                             + "</form>" + "</td>";
                Label1.Text += "</ tr>";
            //}
        }
        myConn.Close();

        //TableRow tRow = new TableRow();


    }
}
