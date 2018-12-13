using SendGrid;
using SendGrid.Helpers.Mail;
using System.Threading.Tasks;

namespace OMS.Web.Helpers
{
    public class EmailHelper
    {
        public static void SendMail(SendGridMessage sendGridMessage)
        {
            SendMailAsync(sendGridMessage).Wait();
        }


        public static async Task SendMailAsync(SendGridMessage msg)
        {
            msg.From = msg.From ?? new EmailAddress(Properties.Settings.Default.FromEmailID, Properties.Settings.Default.FromEmailName);
            var apiKey = Properties.Settings.Default.SendGridAPIKey;// "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";
            var client = new SendGridClient(apiKey);            
            var response =await client.SendEmailAsync(msg).ConfigureAwait(false);

        }
    }
}