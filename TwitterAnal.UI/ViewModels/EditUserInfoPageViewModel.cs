using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using TwitterAnal.Application.UserUseCases.Requests;
using TwitterAnal.UI.Pages;


namespace TwitterAnal.UI.ViewModels
{
    [QueryProperty("User", "User")]
    public partial class EditUserInfoPageViewModel(IMediator mediator) : ObservableObject
    {
        private readonly IMediator _mediator = mediator;
        [ObservableProperty]
        User user;
        [ObservableProperty]
        string? userName;
        [ObservableProperty]
        string? nickName;
        [RelayCommand]
        async void GetUser()
        {
            UserName = User.UserName;
            NickName = User.NickName;
        }
        [RelayCommand]
        async Task UpdateUser()
        {
            if (UserName != User.UserName || NickName != User.NickName)
            {
                User.UserName = UserName;
                User.NickName = NickName;
                User = await _mediator.Send(new UpdateUserRequest(User));
            }
            IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "User", User }
                    };
            await Shell.Current.GoToAsync(nameof(UserAccountMainPage), parametres);
        }
    }
}
