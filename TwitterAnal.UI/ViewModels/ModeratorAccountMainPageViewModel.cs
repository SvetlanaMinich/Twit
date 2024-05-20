

using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using TwitterAnal.UI.Pages;

namespace TwitterAnal.UI.ViewModels
{
    [QueryProperty("Moderator", "Moderator")]
    public partial class ModeratorAccountMainPageViewModel(IMediator mediator) : ObservableObject
    {
        private readonly IMediator _mediator = mediator;
        [ObservableProperty]
        Moderator moderator;
        [ObservableProperty]
        string? nickName;
        [ObservableProperty]
        string? email;
        [RelayCommand]
        async void GetModerator()
        {
            NickName = Moderator.NickName;
            Email = Moderator.Email;
        }
        [RelayCommand]
        async Task LogOut()
        {
            await Shell.Current.GoToAsync(nameof(RegistrationPage));
        }
    }
}
