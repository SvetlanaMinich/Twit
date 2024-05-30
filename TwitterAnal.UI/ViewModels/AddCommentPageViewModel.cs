

using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using TwitterAnal.Application.CommentUseCases.Requests;
using TwitterAnal.UI.Pages;

namespace TwitterAnal.UI.ViewModels
{
    [QueryProperty("Userspage", "Userspage")]
    [QueryProperty("Useracc", "Useracc")]
    [QueryProperty("Post", "Post")]
    public partial class AddCommentPageViewModel(IMediator mediator) : ObservableObject
    {
        private readonly IMediator _mediator = mediator;
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
        bool isEnableToPostBool;

        [RelayCommand]
        async Task getUsersInfo()
        {
            NickName = Useracc.NickName;
            Text = String.Empty;
            IsEnableToPostBool = false;
        }
        [RelayCommand]
        async Task CreateComment()
        {
            if (Text != String.Empty)
            {
                Comment new_comment = new(Post.Id, Useracc.Id, Useracc.NickName, DateTime.Now.ToString(),Text);
                await _mediator.Send(new AddCommentRequest(new_comment));

            }
            IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "Userspage", Userspage },
                        { "Useracc", Useracc },
                        { "Post", Post }
                    };
            await Shell.Current.GoToAsync(nameof(CommentsPage), parametres);
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
        async Task Cancel()
        {
            IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "Userspage", Userspage },
                        { "Useracc", Useracc },
                        { "Post", Post }
                    };
            await Shell.Current.GoToAsync(nameof(CommentsPage), parametres);
        }
    }
}
