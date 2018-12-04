﻿using System;
using MobCAT.ClientSecrets;

namespace Weather
{
    /// <summary>
    /// Secret key file.
    /// Secrets are replaced environment variables using MobCAT.ClientSecrets: https://github.com/xamarin/mobcat/tree/master/mobcat_client_secrets
    /// Run build/environment.sh with the variable flags to set your environment variables
    /// </summary>
    public static class ServiceConfig
    {
        //[ClientSecret]
        public static readonly string WEATHERSERVICEAPIKEY = "f186baa7-6a5a-4f89-ad1f-308a1830ab1f";

        //[ClientSecret]
        public static readonly string WEATHERSERVICEURL = "https://asapiaf2h4eo65ggdu.azurewebsites.net/api/";

        //[ClientSecret]
        public static readonly string ANDROIDAPPCENTERSECRET = "63f2cc40-8ad9-462e-92b2-b2eff4638605";

        //[ClientSecret]
        public static readonly string IOSAPPCENTERSECRET = "2d31b910-a08c-4201-b006-e0e3fec7d8da";
    }
}
