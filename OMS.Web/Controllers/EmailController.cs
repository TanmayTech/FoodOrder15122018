using OMS.Web.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace OMS.Web.Controllers
{
    
    public class EmailController : ApiController
    {
        [Route("Send")]
        public IHttpActionResult Send(SendGrid.Helpers.Mail.SendGridMessage model)
        {           
            EmailHelper.SendMail(model);         

            return Ok();
        }   
    }
}
