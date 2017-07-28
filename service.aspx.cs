using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

public partial class service : System.Web.UI.Page
{
    string name, company, mob, email, sparse_part, details;
    protected void Page_Load(object sender, EventArgs e)
    {
        ddl_sparse_part.Items.Insert(0, new ListItem("-Select-", ""));
    }

    protected void btn_send_Click(object sender, EventArgs e)
    {
        
        name = txt_name.Text;
        company = txt_company.Text;
        mob = txt_mob.Text;
        email = txt_email.Text;
        sparse_part = ddl_sparse_part.SelectedValue;
        details = txt_details.Text;
        sendmail(txt_email.Text);
    }

    protected void sendmail(string eamil)
    {
        MailMessage mail = new MailMessage();
        SmtpClient smtpServer = new SmtpClient("smtp.gmail.com");
        try
        {
            mail.From = new MailAddress("rai.abhishekraj@gmail.com");
            mail.To.Add("khovalal88@gmail.com");
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, Page.GetType(), "Alert", "alert('Email ID to whon you are sending mail is not right');", true);
        }
        mail.Subject = "MechInstru - Request for Service";
        mail.Body = "Request from: " + name + "\nCompany Name: " + company+"\nMobile no.: "+mob+"\nEmail: "+email+"\nSparse Part: "+ sparse_part + "\nDetails: "+details;
        smtpServer.Port = 587;
        smtpServer.Credentials = new System.Net.NetworkCredential("rai.abhishekraj@gmail.com", "sachin@abhishekraj10");
        smtpServer.EnableSsl = true;
        try
        {
            smtpServer.Send(mail);
            ScriptManager.RegisterStartupScript(this, Page.GetType(), "Alert", "alert('Your Query has been sent to MechInstru Team. You will be contacted soon.');", true);

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, Page.GetType(), "Alert", "alert('Please check your internet connection');", true);
        }
        txt_company.Text = "";
        txt_details.Text = "";
        txt_email.Text = "";
        txt_mob.Text = "";
        txt_name.Text = "";
        ddl_sparse_part.SelectedIndex = 0; 
    }
}