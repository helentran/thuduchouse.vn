using System.Web;
using System.Web.Optimization;

namespace HRSystemTDH
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-3.1.1.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/validate").Include(
                        "~/Scripts/jquery.validate*"));

            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap-min").Include(
                        //< !--Bootstrap-- >
                        "~/Scripts/bootstrap.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/fancybox").Include(
                        "~/FancyBox/jquery.fancybox.js"
                        // "~/Scripts/fancybox/jquery.fancybox-buttons.js",
                        // "~/Scripts/fancybox/jquery.fancybox-thumbs.js",
                        // "~/Scripts/fancybox/jquery.easing-1.3.pack.js",
                        //"~/Scripts/fancybox/jquery.mousewheel-3.0.6.pack.js"
                        ));

            bundles.Add(new ScriptBundle("~/bundles/fancybox-ajax").Include(
                        //< !--jQuery migrate to support jquery-- >
                        "~/Scripts/jquery-migrate-1.4.1.min.js",
                        //< !--Ajax-- >
                        "~/Scripts/jquery.unobtrusive-ajax.js",
                        //< !--jQuery migrate to support jquery-- >
                        "~/FancyBox/jquery.mousewheel-3.0.6.pack.js",
                        //< !--jQuery-- >
                        "~/FancyBox/jquery.fancybox.pack.js"
                        ));



            bundles.Add(new ScriptBundle("~/bundles/vendor-theme").Include(
                        ////< !--FastClick-- >
                        //"~/Content/vendors/fastclick/lib/fastclick.js",
                        ////< !--NProgress-- >
                        //"~/Content/vendors/nprogress/nprogress.js",
                        ////< !--Chart.js-- >
                        //"~/Content/vendors/Chart.js/dist/Chart.min.js",
                        ////< !--gauge.js-- >
                        //"~/Content/vendors/gauge.js/dist/gauge.min.js",
                        ////< !--bootstrap - progressbar-- >
                        //"~/Content/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js",
                        ////< !--iCheck-- >
                        //"~/Content/vendors/iCheck/icheck.min.js",
                        ////< !--Skycons-- >
                        //"~/Content/vendors/skycons/skycons.js",
                        ////< !--Flot-- >
                        //"~/Content/vendors/Flot/jquery.flot.js",
                        //"~/Content/vendors/Flot/jquery.flot.pie.js",
                        //"~/Content/vendors/Flot/jquery.flot.time.js",
                        //"~/Content/vendors/Flot/jquery.flot.stack.js",
                        //"~/Content/vendors/Flot/jquery.flot.resize.js",
                        ////< !--Flot plugins-- >
                        //"~/Content/vendors/flot.orderbars/js/jquery.flot.orderBars.js",
                        //"~/Content/vendors/flot-spline/js/jquery.flot.spline.min.js",
                        //"~/Content/vendors/flot.curvedlines/curvedLines.js",
                        ////< !--DateJS-- >
                        //"~/Content/vendors/DateJS/build/date.js",
                        ////< !--JQVMap-- >
                        //"~/Content/vendors/jqvmap/dist/jquery.vmap.js",
                        //"~/Content/vendors/jqvmap/dist/maps/jquery.vmap.world.js",
                        //"~/Content/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js",
                        ////< !--bootstrap - daterangepicker-- >
                        //"~/Content/vendors/moment/moment.min.js",
                        //"~/Content/vendors/datepicker/daterangepicker.js",
                        //< !--Custom Theme Scripts-- >
                        "~/Content/vendors/custom/custom.min.js"
                        //"~/Scripts/respond.js"
                        ));

            bundles.Add(new ScriptBundle("~/bundles/dataTable.min").Include(
                     //< !--DataTable.min-- >
                     "~/Content/DataTables/js/jquery.dataTables.min.js",
                     "~/Content/DataTables/js/dataTables.bootstrap.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/dataTables.responsive").Include(
                   //< !--DataTable.responsive-- >
                   "~/Content/DataTables/js/dataTables.responsive.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/dataTables.select.min").Include(
                    //< !--DataTable.select-- >
                    "~/Content/DataTables/js/dataTables.select.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/dataTables.buttons.min").Include(
                    //< !--DataTable.button-- >
                    "~/Content/DataTables/js/dataTables.buttons.min.js",
                    "~/Content/DataTables/js/buttons.flash.min.js",
                    "~/Content/DataTables/js/jszip.min.js",
                    "~/Content/DataTables/js/pdfmake.min.js",
                    "~/Content/DataTables/js/vfs_fonts.js",
                    "~/Content/DataTables/js/buttons.html5.min.js",
                    "~/Content/DataTables/js/buttons.print.min.js"
                    ));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      //<!-- Bootstrap -->
                      "~/Content/vendors/bootstrap/dist/css/bootstrap.min.css",
                      //<!-- Font Awesome -->
                      "~/Content/vendors/font-awesome/css/font-awesome.min.css",
                      //<!-- NProgress -->
                      "~/Content/vendors/nprogress/nprogress.css",
                      //<!-- iCheck -->
                      "~/Content/vendors/iCheck/skins/flat/green.css",
                      //<!-- bootstrap-progressbar -->
                      "~/Content/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css",
                      //<!-- JQVMap -->
                      "~/Content/vendors/jqvmap/dist/jqvmap.min.css",
                      "~/FancyBox/css/jquery.fancybox.css",
                      "~/Content/tdhstyle.css"));
        }
    }
}
