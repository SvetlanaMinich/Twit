using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using TwitterAnal.Application.ModeratorUseCases.Requests;
using TwitterAnal.Application.UserUseCases.Requests;
using TwitterAnal.UI.Pages;

namespace TwitterAnal.UI.ViewModels
{
    public partial class MainPageViewModel(IMediator mediator) : ObservableObject
    {
        private readonly IMediator _mediator = mediator;
        [ObservableProperty]
        bool isModerator = false;
        [ObservableProperty]
        string userEmail = "";
        [ObservableProperty]
        string userPassword = "";
        [RelayCommand]
        async Task RegistrateUser()
        {
            try
            {
                if(IsModerator)
                {
                    Moderator moderator = await _mediator.Send(new CheckModeratorInListRequest(UserEmail, UserPassword));
                    if(moderator == null)
                    {
                        moderator = new Moderator("ModNickname",UserEmail,UserPassword);
                        moderator = await _mediator.Send(new AddModeratorRequest(moderator));

                        IDictionary<string, object> parametres = new Dictionary<string, object>()
                            {
                                { "Moderator", moderator }
                            };
                    }
                    else
                    {
                        await Shell.Current.GoToAsync(nameof(AuthorizationUserPage));
                    }
                }
                else
                {
                    User? user = await _mediator.Send(new CheckUserInListRequest(UserEmail, UserPassword));
                    if (user == null)
                    {
                        user = new User("Username", "NickName", UserEmail, "BIO", UserPassword);
                        user = await _mediator.Send(new AddUserCommand(user));

                        IDictionary<string, object> parametres = new Dictionary<string, object>()
                            {
                                { "User", user }
                            };
                        await Shell.Current.GoToAsync(nameof(UserAccountMainPage), parametres);
                    }
                    else
                    {
                        await Shell.Current.GoToAsync(nameof(AuthorizationUserPage));
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }
        [RelayCommand]
        async Task AlreadyHaveAnAccount()
        {
            await Shell.Current.GoToAsync(nameof(AuthorizationUserPage));
        }
    }
}
