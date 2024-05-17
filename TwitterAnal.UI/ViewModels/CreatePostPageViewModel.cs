using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using TwitterAnal.Application.PostUseCases.Requests;
using TwitterAnal.UI.Pages;

namespace TwitterAnal.UI.ViewModels
{
    [QueryProperty("User", "User")]
    public partial class CreatePostPageViewModel(IMediator mediator) : ObservableObject
    {
        private readonly IMediator _mediator = mediator;
        [ObservableProperty]
        User user;
        [ObservableProperty]
        int userId;
        [ObservableProperty]
        int creatorId;
        [ObservableProperty]
        string? text;
        [RelayCommand]
        async void getUsersInfo()
        {
            UserId = User.Id;
            CreatorId = User.Id;
            Text = String.Empty;
        }
        [RelayCommand]
        async Task CreatePost()
        {
            if(Text != String.Empty)
            {
                Post newPost = new Post(User.Id, User.Id, DateTime.Now.ToString(), Text);
                await _mediator.Send(new AddPostRequest(newPost));

            }
            IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "User", User } //для CreatorId и userId
                    };
            await Shell.Current.GoToAsync(nameof(UserAccountMainPage), parametres);
        }
        [RelayCommand]
        async void Cancel()
        {
            IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "User", User } //для CreatorId и userId
                    };
            await Shell.Current.GoToAsync(nameof(UserAccountMainPage), parametres);
        }
    }
}
