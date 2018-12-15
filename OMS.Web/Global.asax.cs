using SendGrid.Helpers.Mail;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace OMS.Web
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            // Clears all previously registered view engines.
            ViewEngines.Engines.Clear();

            // Registers our Razor C# specific view engine.
            // This can also be registered using dependency injection through the new IDependencyResolver interface.
            ViewEngines.Engines.Add(new RazorViewEngine());

            //Ignored Reference Loop Handling to run EF code properly
            HttpConfiguration config = GlobalConfiguration.Configuration;

            config.Formatters.JsonFormatter
                        .SerializerSettings
                        .ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore;

            config.Formatters
                .Remove(GlobalConfiguration.Configuration.Formatters.XmlFormatter);
        }

        protected void Application_Error()
        {
            try
            {
                var lastException = Server.GetLastError();

                var msg = new SendGridMessage()
                {
                    Subject = "Error Occcured while processng your request",
                    HtmlContent = lastException.ToString()
                };
                msg.AddTo(new EmailAddress("tanmaytechbiz+OMSError@gmail.com", "OMS Error"));

                Helpers.EmailHelper.SendMail(msg);
            }
            catch
            {
                //Don't put anything in catch
            }

        }

        private string GetBrowserCapabilites()
        {
            string browserDetails = string.Empty;
            try
            {
                browserDetails =
                    "Url = " + Request.Url.AbsoluteUri + "<br>" +
                    "Client IP = " + Request.UserHostAddress + " (" + Request.UserHostName + ")<br>";

                HttpBrowserCapabilities browser = HttpContext.Current.Request.Browser;
                browserDetails +=
                "Name = " + browser.Browser + "<br>"
                + "Type = " + browser.Type + "<br>"
                + "Version = " + browser.Version + "<br>"
                + "Major Version = " + browser.MajorVersion + "<br>"
                + "Minor Version = " + browser.MinorVersion + "<br>"
                + "Platform = " + browser.Platform + "<br>"
                + "Is Beta = " + browser.Beta + "<br>"
                + "Is Crawler = " + browser.Crawler + "<br>"
                + "Is AOL = " + browser.AOL + "<br>"
                + "Is Win16 = " + browser.Win16 + "<br>"
                + "Is Win32 = " + browser.Win32 + "<br>"
                + "Supports Cookies = " + browser.Cookies + "<br>"
                + "Supports JavaScript = " + "<br>" +
                browser.EcmaScriptVersion.ToString() + "<br>"
                + "Supports JavaScript Version = " +
                browser["JavaScriptVersion"];
            }
            catch
            {

            }
            return browserDetails;
        }
    }
}
