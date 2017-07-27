using System;
using System.Collections.Generic;
using System.Web.Mvc;
using System.Web.Routing;
using System.Xml.Serialization;

namespace HRSystemTDH.Models
{

    public enum ChangeFrequency { always, hourly, daily, weekly, monthly, yearly, never };

    [XmlRoot(Namespace = "http://www.sitemaps.org/schemas/sitemap/0.9", ElementName = "urlset")]
    public class Sitemap
    {
        [XmlElement(ElementName = "url")]
        public List<SitemapNode> URLSet { get; set; }

        public Sitemap()
        {
            URLSet = new List<SitemapNode>();
        }
    }

    //public class SitemapNode
    //{
    //    [XmlElement(ElementName = "loc")]
    //    public string URL { get; set; }
    //    [XmlElement(ElementName = "lastmod")]
    //    public DateTime lastmod { get; set; }
    //    [XmlElement(ElementName = "changefreq")]
    //    public ChangeFrequency changefreq { get; set; }
    //    [XmlElement(ElementName = "priority")]
    //    public decimal priority { get; set; }

    //    public SitemapNode()
    //    {
    //        priority = 0.5M;
    //        lastmod = DateTime.Now;
    //        changefreq = ChangeFrequency.monthly;
    //    }
    //}

    public class SitemapNode
    {
        public string Url { get; set; }
        public DateTime? LastModified { get; set; }
        public SitemapFrequency? Frequency { get; set; }
        public double? Priority { get; set; }


        public SitemapNode(string url)
        {
            Url = url;
            Priority = null;
            Frequency = null;
            LastModified = null;
        }

        public SitemapNode(RequestContext request, object routeValues)
        {
            Url = GetUrl(request, new RouteValueDictionary(routeValues));
            Priority = null;
            Frequency = null;
            LastModified = null;
        }

        private string GetUrl(RequestContext request, RouteValueDictionary values)
        {
            var routes = RouteTable.Routes;
            var data = routes.GetVirtualPathForArea(request, values);

            if (data == null)
            {
                return null;
            }

            var baseUrl = request.HttpContext.Request.Url;
            var relativeUrl = data.VirtualPath;

            return request.HttpContext != null &&
                   (request.HttpContext.Request != null && baseUrl != null)
                       ? new Uri(baseUrl, relativeUrl).AbsoluteUri
                       : null;
        }
    }

    public enum SitemapFrequency
    {
        Never,
        Yearly,
        Monthly,
        Weekly,
        Daily,
        Hourly,
        Always
    }
}