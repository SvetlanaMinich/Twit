using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.Collections.ObjectModel;
using TwitterAnal.Application.CommentUseCases.Requests;
using TwitterAnal.UI.Pages;

namespace TwitterAnal.UI.ViewModels
{
    [QueryProperty("Userspage", "Userspage")]
    [QueryProperty("Useracc", "Useracc")]
    [QueryProperty("Post", "Post")]
    public partial class CommentsPageViewModel(IMediator mediator) : ObservableObject
    {
        private readonly IMediator _mediator = mediator;
        public ObservableCollection<Comment> Comments { get; set; } = new();
        [ObservableProperty]
        User userspage;
        [ObservableProperty]
        User useracc;
        [ObservableProperty]
        Post post;
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

            GetCommentsAsync();
        }
        async void GetCommentsAsync()
        {
            var comments = await _mediator.Send(new GetAllCommentsByPostRequest(Post));
            if(comments != null)
            {
                comments = comments.OrderBy(x => x.CreatedAt).Reverse();
                Comments.Clear();
                foreach (var item in comments)
                {
                    Comments.Add(item);
                }
            }

        }
        [RelayCommand]
        async Task AddComment()
        {

        }
        [RelayCommand]
        async void Cancel()
        {
            if(Useracc == Userspage)
            {
                User User = Useracc;
                IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "User", User } //для CreatorId и userId
                    };
                await Shell.Current.GoToAsync(nameof(UserAccountMainPage), parametres);
            }
            else
            {
                IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "Userspage", Userspage },
                        { "Useracc", Useracc }
                    };
                await Shell.Current.GoToAsync(nameof(OtherUsersPage), parametres);
            }
        }
    }
}
