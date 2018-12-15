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
                msg.AddTo(new EmailAddress("tanmay.mule+OMSerror@gmail.com", "OMS Error"));

                Helpers.EmailHelper.SendMail(msg);
            }
            catch
            {
                //Don't put anything in catch
            }

        }

        private string GetBrowserCapabilites()
        {
            HttpBrowserCapabilities bc = new HttpBrowserCapabilities();
            return bc.Browser;
        }
    }
}
