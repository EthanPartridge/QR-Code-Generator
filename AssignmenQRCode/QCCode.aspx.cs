using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using ZXing;

namespace AssignmenQRCode
{
    public partial class QCCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Event to generate the QC Code      
        protected void btnGenerate_Click(object sender, EventArgs e)      
        {         
            GenerateMyQCCode(txtQCCode.Text);      
        }      
        protected void btnRead_Click(object sender, EventArgs e)      
        {         
            ReadQRCode();      
        }      
        private void GenerateMyQCCode(string QCText)      
        {         
            var QCwriter = new BarcodeWriter();         
            QCwriter.Format = BarcodeFormat.QR_CODE;         
            var result = QCwriter.Write(QCText);         
            string path = Server.MapPath("~/images/MyQRImage.jpg");         
            var barcodeBitmap = new Bitmap(result);    
            
            using (MemoryStream memory = new MemoryStream())         
            {            
                using (FileStream fs = new FileStream(path, FileMode.Create, FileAccess.ReadWrite))            
                {               
                    barcodeBitmap.Save(memory, ImageFormat.Jpeg);               
                    byte[] bytes = memory.ToArray();               
                    fs.Write(bytes, 0, bytes.Length);            
                }         
            }       
            
            imgageQRCode.Visible = true;         
            imgageQRCode.ImageUrl = "~/images/MyQRImage.jpg";       
        }       
        private void ReadQRCode()      
        {         
            var QCreader = new BarcodeReader();         
            string QCfilename = Path.Combine(Request.MapPath("~/images"), "MyQRImage.jpg");         
            var QCresult = QCreader.Decode(new Bitmap(QCfilename));         
            if (QCresult != null)         
            {            
                lblQRCode.Text = "My QR Code: " + QCresult.Text;         
            }      
        }

        protected void btnChooseImage_Click(object sender, EventArgs e)
        {
            
        }
    }
}