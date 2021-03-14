using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmenQRCode
{
    public partial class Default : System.Web.UI.Page
    {
        private string qrMessage = ""; //data member
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            qrMessage = TextBox1.Text + '#' + TextBox2.Text + '#' + TextBox3.Text;
            Label1.Text = qrMessage;
        }
    }
}