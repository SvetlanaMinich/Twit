using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.Collections.ObjectModel;
using TwitterAnal.Application.UserUseCases.Requests;
using TwitterAnal.UI.Pages;

namespace TwitterAnal.UI.ViewModels
{
    [QueryProperty("User", "User")]
    public partial class UserAccountMainPageViewModel(IMediator mediator) : ObservableObject
    {
        private readonly IMediator _mediator = mediator;

        public ObservableCollection<Post> Posts { get; set; } = new();

        [ObservableProperty]
        User user;
        [ObservableProperty]
        string? userName;
        [ObservableProperty]
        string? nickName;
        [ObservableProperty]
        string? email;
        [ObservableProperty]
        string? bio;
        [RelayCommand]
        async void getUser()
        {
            UserName = User.UserName;
            NickName = User.NickName;
            Email = User.Email;
            Bio = User.Bio;
            GetPostsAsync();
        }
        async void GetPostsAsync()
        {
            var posts = await _mediator.Send(new GetPostsByCreatorRequest(User));
            Posts.Clear();
            foreach (var item in posts)
            {
                Posts.Add(item);
            }

        }
        [RelayCommand]
        async Task CreatePost()
        {
            IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "User", User } //для CreatorId и userId
                    };
            await Shell.Current.GoToAsync(nameof(CreatePostPage), parametres);
        }
        [RelayCommand]
        async void LogOut()
        {
            await Shell.Current.GoToAsync(nameof(RegistrationPage));
        }
        [RelayCommand]
        async Task EditProfile()
        {
            IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "User", User }
                    };
            await Shell.Current.GoToAsync(nameof(EditUserInfoPage), parametres);
        }
    }
}
