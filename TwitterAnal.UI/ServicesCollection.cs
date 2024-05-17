using CommunityToolkit.Maui;
using TwitterAnal.UI.Pages;
using TwitterAnal.UI.ViewModels;

namespace TwitterAnal.UI
{
    public static class ServicesCollection
    {
        public static IServiceCollection RegisterPages(this IServiceCollection services)
        {
            services
                .AddTransient<AuthorizationUserPage>()
                .AddTransient<RegistrationPage>()
                .AddTransient<UserAccountMainPage>()
                .AddTransient<EditUserInfoPage>()
                .AddTransient<CreatePostPage>()
                .AddTransient<ModeratorAccountMainPage>();

            return services;
        }
        public static IServiceCollection RegisterViewModels(this IServiceCollection services)
        {
            services
                .AddTransient<MainPageViewModel>()
                .AddTransient<AuthorizationUserPageViewModel>()
                .AddTransient<UserAccountMainPageViewModel>()
                .AddTransient<EditUserInfoPageViewModel>()
                .AddTransient<CreatePostPageViewModel>()
                .AddTransient<ModeratorAccountMainPageViewModel>();


            return services;
        }
    }
}
