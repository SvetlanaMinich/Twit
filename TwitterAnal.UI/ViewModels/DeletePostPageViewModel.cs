using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TwitterAnal.Application.PostUseCases.Requests;
using TwitterAnal.UI.Pages;

namespace TwitterAnal.UI.ViewModels
{
    [QueryProperty("Post", "Post")]
    [QueryProperty("User", "User")]
    public partial class DeletePostPageViewModel(IMediator mediator) : ObservableObject
    {
        private readonly IMediator _mediator = mediator;
        [ObservableProperty]
        Post post;
        [ObservableProperty]
        User user;
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
        }
        [RelayCommand]
        async Task DeletePost()
        {
            await _mediator.Send(new DeletePostRequest(Post));
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
