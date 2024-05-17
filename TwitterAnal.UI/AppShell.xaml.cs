using TwitterAnal.UI.Pages;

namespace TwitterAnal.UI
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(AuthorizationUserPage),
                                  typeof(AuthorizationUserPage));
            Routing.RegisterRoute(nameof(RegistrationPage),
                                  typeof(RegistrationPage));
            Routing.RegisterRoute(nameof(UserAccountMainPage), 
                                  typeof(UserAccountMainPage));
            Routing.RegisterRoute(nameof(EditUserInfoPage), 
                                  typeof(EditUserInfoPage));
            Routing.RegisterRoute(nameof(CreatePostPage), 
                                  typeof(CreatePostPage));
        }
    }
}
