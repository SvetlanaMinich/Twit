using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using TwitterAnal.Application.ModeratorUseCases.Requests;
using TwitterAnal.Application.UserUseCases.Requests;
using TwitterAnal.UI.Pages;

namespace TwitterAnal.UI.ViewModels
{
    public partial class AuthorizationUserPageViewModel(IMediator mediator) : ObservableObject
    {
        private readonly IMediator _mediator = mediator;

        private bool _isUserNotFound;
        public bool IsUserNotFound
        {
            get { return _isUserNotFound; }
            set { SetProperty(ref _isUserNotFound, value); }
        }

        [ObservableProperty]
        bool isModerator = false;
        [ObservableProperty]
        string userEmail = "";
        [ObservableProperty]
        string userPassword = "";
        [RelayCommand]
        async Task AuthorizateUser()
        {
            if(IsModerator)
            {
                Moderator? moderator = await _mediator.Send(new CheckModeratorInListRequest(UserEmail, userPassword));
                if(moderator == null)
                {
                    IsUserNotFound = true;
                }
                else
                {
                    IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "Moderator", moderator }
                    };
                }
            }
            else
            {
                User? user = await _mediator.Send(new CheckUserInListRequest(UserEmail, UserPassword));
                if (user == null)
                {
                    IsUserNotFound = true;
                }
                else
                {
                    IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "User", user }
                    };
                    await Shell.Current.GoToAsync(nameof(UserAccountMainPage), parametres);
                }

            }
        }
    }

}
