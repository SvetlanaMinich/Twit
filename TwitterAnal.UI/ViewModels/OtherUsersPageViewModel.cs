using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.Collections.ObjectModel;
using TwitterAnal.Application.UserUseCases.Requests;
using TwitterAnal.Application.SubscriptionUseCases.Requests;
using TwitterAnal.UI.Pages;
using TwitterAnal.Application.LikeUseCases.Requests;
using TwitterAnal.Application.PostUseCases.Requests;

namespace TwitterAnal.UI.ViewModels
{
    [QueryProperty("Userspage", "Userspage")]
    [QueryProperty("Useracc", "Useracc")]
    public partial class OtherUsersPageViewModel(IMediator mediator) : ObservableObject
    {
        private readonly IMediator _mediator = mediator;

        public ObservableCollection<Post> Posts { get; set; } = new();

        [ObservableProperty]
        string? isEnableToSubscribe;
        [ObservableProperty]
        User userspage;
        [ObservableProperty]
        User useracc;
        [ObservableProperty]
        string? userName;
        [ObservableProperty]
        string? nickName;
        [ObservableProperty]
        string? email;
        [ObservableProperty]
        string? bio;
        [ObservableProperty]
        ImageSource profileImage;
        [ObservableProperty]
        int subscribersCount;
        [RelayCommand]
        async Task GetUser()
        {
            Subscription check = await _mediator.Send(new FindSubscriptionRequest(Useracc.Id, Userspage.Id));
            if(check == null)
            {
                IsEnableToSubscribe = "Follow";
            }
            else
            {
                IsEnableToSubscribe = "UnFollow";
            }

            UserName = Userspage.UserName;
            NickName = Userspage.NickName;
            Email = Userspage.Email;
            Bio = Userspage.Bio;
            SubscribersCount = Userspage.SubscribersCount;

            if(Bio == "BIO")
            {
                Bio = string.Empty;
            }

            if (Userspage.UserPhoto != null)
            {
                ProfileImage = ImageSource.FromStream(() => new MemoryStream(Userspage.UserPhoto));
            }

            await GetPostsAsync();
        }
        [RelayCommand]
        async Task GoToComments(Post selectedPost)
        {
            Post Post = selectedPost;
            IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "Userspage", Userspage },
                        { "Useracc", Useracc },
                        {"Post", Post }
                    };
            await Shell.Current.GoToAsync(nameof(CommentsPage), parametres);
        }
        async Task GetPostsAsync()
        {
            var posts = await _mediator.Send(new GetPostsByCreatorRequest(Userspage));
            Posts.Clear();
            foreach (var item in posts)
            {
                Posts.Add(item);
            }

        }
        [RelayCommand]
        public async Task LikePost(Post selectedPost)
        {
            Like? is_liked = await _mediator.Send(new FindLikeRequest(Useracc.Id, selectedPost.Id));
            if (is_liked == null)
            {
                Post new_post = new Post(selectedPost.Creator, selectedPost.CreatorId, selectedPost.User,
                    selectedPost.UserId, selectedPost.CreatedAt, selectedPost.Text, selectedPost.LikeCount + 1);
                selectedPost = await _mediator.Send(new UpdatePostRequest(selectedPost, new_post));
                Like new_like = new(Useracc.Id, new_post.Id);
                new_like = await _mediator.Send(new AddLikeRequest(new_like));
            }
            else
            {
                await _mediator.Send(new DeleteLikeRequest(is_liked));
                Post new_post = new Post(selectedPost.Creator, selectedPost.CreatorId, selectedPost.User,
                    selectedPost.UserId, selectedPost.CreatedAt, selectedPost.Text, selectedPost.LikeCount - 1);
                selectedPost = await _mediator.Send(new UpdatePostRequest(selectedPost, new_post));
            }
            GetPostsAsync();
        }
        [RelayCommand]
        async Task GoToSearchPage()
        {
            User User = Useracc;
            IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "User", User }
                    };
            await Shell.Current.GoToAsync(nameof(SearchPage), parametres);
        }
        [RelayCommand]
        async Task GoToAccountPage()
        {
            User User = Useracc;
            IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "User", User }
                    };
            await Shell.Current.GoToAsync(nameof(UserAccountMainPage), parametres);
        }
        [RelayCommand]
        async Task MakeSybscription()
        {
            Subscription? check = await _mediator.Send(new FindSubscriptionRequest(Useracc.Id, Userspage.Id));
            if(check == null)
            {
                Subscription subscription = new(Useracc.Id, Userspage.Id);
                Subscription? subscription1 = await _mediator.Send(new MakeSubscriptionRequest(subscription));
                IsEnableToSubscribe = "UnFollow";
                Userspage.SubscribersCount++;
                Useracc.SubscriptionsCount++;
                SubscribersCount = Userspage.SubscribersCount;
            }
            else
            {
                Subscription? subscription1 = await _mediator.Send(new DeleteSubscriptionRequest(check));
                IsEnableToSubscribe = "Follow";
                Userspage.SubscribersCount--;
                Useracc.SubscriptionsCount--;
                SubscribersCount = Userspage.SubscribersCount;
            }
            Useracc = await _mediator.Send(new UpdateUserRequest(Useracc));
            Userspage = await _mediator.Send(new UpdateUserRequest(Userspage));
        }
    }
}
