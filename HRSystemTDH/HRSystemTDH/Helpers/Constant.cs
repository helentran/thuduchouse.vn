using System.Collections.Generic;

namespace HRSystemTDH.Helpers
{
    public static class Constant
    {
        //Product page need product info --> Skip product page in Initialize, define it in Product action.
        public static List<string> SEO_ACTIONS = new List<string>() {
            "index",
            "about-us",
            "contact-us"
        };

        public const string SEO_HTML = "<title>{0}</title>\r\n"
                                + "		<meta name=\"keywords\" content=\"{1}\"/> \r\n"
                                + "		<meta name=\"description\" content=\"{2}\"/> \r\n"
                                + "		<meta name=\"robots\" content=\"{3}\" />";


        public const string SESSION_ACCOUNT = "account";

        public const string SESSION_LANGUAGE = "SESSION_LANGUAGE";

    }
}