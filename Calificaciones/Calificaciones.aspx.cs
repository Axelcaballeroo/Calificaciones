using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calificaciones
{
    public partial class Calificaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != string.Empty)
            {
                SqlDataSource4.Insert();
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.DataRow)
            {
                int nota = (int)DataBinder.Eval(e.Row.DataItem, "nota");
                if(nota < 6)
                {
                    e.Row.ForeColor = System.Drawing.Color.Red;
                } else
                {
                    e.Row.ForeColor = System.Drawing.Color.Green;
                }
            }
        }
    }
}