using System;
using System.Net;
using System.Security.Cryptography;
using System.Threading;
using System.Web.Mvc;

namespace HRSystemTDH.Controllers
{
    public class ErrorController : Controller
    {
        public ActionResult Index(Exception exception)
        {
            return View("Error");
        }
        public ActionResult NotFound()
        {
            Response.ContentType = "text/html";
            //Response.StatusCode = 404;
            return View();
        }
        public ActionResult ServerError()
        {
            byte[] delay = new byte[1];
            RandomNumberGenerator prng = new RNGCryptoServiceProvider();

            prng.GetBytes(delay);
            Thread.Sleep((int)delay[0]);

            IDisposable disposable = prng as IDisposable;
            if (disposable != null) { disposable.Dispose(); }
            Response.StatusCode = (int)HttpStatusCode.InternalServerError;
            Response.TrySkipIisCustomErrors = true;
            return View();
        }

        public ActionResult ForbiddenAccess()
        {
            Response.ContentType = "text/html";
            //Response.StatusCode = 403;
            return View();
        }
      

    }
}