using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Double iva = Convert.ToDouble(VP.Text) * 0.19;
        IVA.Text = iva.ToString();
        Double Ti= Convert.ToDouble(VP.Text)+iva;
        TP.Text= Ti.ToString();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}