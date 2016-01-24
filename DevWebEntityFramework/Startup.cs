using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DevWebEntityFramework.Startup))]
namespace DevWebEntityFramework
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
