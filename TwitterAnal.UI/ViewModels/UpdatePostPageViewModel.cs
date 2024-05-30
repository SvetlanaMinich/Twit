using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using TwitterAnal.Application.PostUseCases.Requests;
using TwitterAnal.UI.Pages;

namespace TwitterAnal.UI.ViewModels
{
    [QueryProperty("Post", "Post")]
    [QueryProperty("User", "User")]
    public partial class UpdatePostPageViewModel(IMediator mediator) : ObservableObject
    {
        private readonly IMediator _mediator = mediator;
        [ObservableProperty]
        Post post;
        [ObservableProperty]
        User user;
        [ObservableProperty]
        bool isEnableToPostBool;
        [ObservableProperty]
        string? nickName;
        [ObservableProperty]
        string? text;
        [ObservableProperty]
        string? createdAt;
        [RelayCommand]
        async Task GetPost()
        {
            NickName = Post.Creator;
            Text = Post.Text;
            CreatedAt = Post.CreatedAt;
            IsEnableToPostBool = false;
        }
        [RelayCommand]
        public async Task IsEnabledToPost()
        {
            if (string.IsNullOrEmpty(Text))
            {
                IsEnableToPostBool = false;
            }
            else
            {
                IsEnableToPostBool = true;
            }
        }
        [RelayCommand]
        async Task UpdatePost()
        {
            Post new_post = new Post(Post.Creator, Post.CreatorId, Post.User, Post.UserId, DateTime.Now.ToString(), Text);
            new_post = await _mediator.Send(new UpdatePostRequest(Post, new_post));
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
