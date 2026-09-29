using iText.Kernel.Pdf;
using iText.Layout;
using iText.Layout.Element;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace chasemoney
{
    public partial class Payments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // create placeholder for payment gateway integration
            txtCardName.Attributes.Add("placeholder", "John Doe");
            txtEmail.Attributes.Add("placeholder", "john.doe@example.com");
            txtCardNO.Attributes.Add("placeholder", "1234 5678 9012 3456");
            Txtcvv.Attributes.Add("placeholder", "123");

        }

        protected void btncon_Click(object sender, EventArgs e)
        {
            // when user clicks this button , it will verify the payment and redirect to the next page
            //when user clicks the user will also get the confirmation email with the payment details


            // generate pdf into memory stream
            using (MemoryStream ms = new MemoryStream())
            {
                PdfWriter writer = new PdfWriter(new NonClosingStreamWrapper(ms));
                PdfDocument pdf = new PdfDocument(writer);
                Document doc = new Document(pdf);

                doc.Add(new Paragraph("Payment receipt"));
                doc.Add(new Paragraph("Card Holder: " + txtCardName.Text));
                doc.Add(new Paragraph("Email: " + txtEmail.Text));
                doc.Add(new Paragraph("Card Number: " + txtCardNO.Text));
                doc.Add(new Paragraph("CVV: " + Txtcvv.Text));
                doc.Add(new Paragraph("Date: " + DateTime.Now.ToString()));

                doc.Close();

                // build email message
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("noreply@chasemoney.com");
                mail.To.Add(txtEmail.Text);
                mail.Subject = "Payment Receipt";
                mail.Body = "Thank you for your payment.";

                // attach pdf to email
                ms.Position = 0;
                Attachment attachment = new Attachment(ms, "payment_receipt.pdf");
                mail.Attachments.Add(attachment);

                // send email
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.Credentials = new System.Net.NetworkCredential("thembaas88@gmail.com", "lgyf exrt rmfr tqma");
                client.EnableSsl = true;
                client.Send(mail);
            }
        }

            public class NonClosingStreamWrapper : Stream
        {
            private readonly Stream _stream;
            public NonClosingStreamWrapper(Stream stream) { _stream = stream; }
            public override bool CanRead => _stream.CanRead;
            public override bool CanSeek => _stream.CanSeek;
            public override bool CanWrite => _stream.CanWrite;
            public override long Length => _stream.Length;
            public override long Position { get => _stream.Position; set => _stream.Position = value; }
            public override void Flush() => _stream.Flush();
            public override int Read(byte[] buffer, int offset, int count) => _stream.Read(buffer, offset, count);
            public override long Seek(long offset, SeekOrigin origin) => _stream.Seek(offset, origin);
            public override void SetLength(long value) => _stream.SetLength(value);
            public override void Write(byte[] buffer, int offset, int count) => _stream.Write(buffer, offset, count);
            protected override void Dispose(bool disposing)
            {
                // Intentionally do nothing — this stops iText7 from closing the real stream
            }
        }

        protected void btncan_Click(object sender, EventArgs e)
        {
            // when user clicks this , page will close
            
        }
    }
    }
