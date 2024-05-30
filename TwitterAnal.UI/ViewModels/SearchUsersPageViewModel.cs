using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.Collections.ObjectModel;
using TwitterAnal.Application.UserUseCases.Requests;
using TwitterAnal.UI.Pages;

namespace TwitterAnal.UI.ViewModels
{
    [QueryProperty("User", "User")]
    public partial class SearchUsersPageViewModel(IMediator mediator) : ObservableObject
    {
        private readonly IMediator _mediator = mediator;
        public ObservableCollection<User> Users { get; set; } = new();

        [ObservableProperty]
        User userspage;
        [ObservableProperty]
        string? searchstr;
        [ObservableProperty]
        User user;
        [ObservableProperty]
        private User _searcheduser;
        [ObservableProperty]
        ImageSource imageUrl;

        [RelayCommand]
        async void GetUsers()
        {
            if (User.UserPhoto != null)
            {
                ImageUrl = ImageSource.FromStream(() => new MemoryStream(User.UserPhoto));
            }
            Users.Clear();
            var users = await _mediator.Send(new GetAllUsersRequest());
            foreach(User user in users)
            {
                if(user == User)
                {
                    continue;
                }
                Users.Add(user);
            }
        }
        [RelayCommand]
        public async Task SearchUserByNickName()
        {
            var users = await _mediator.Send(new GetAllUsersRequest());
            ObservableCollection<User> bufUsers = new();
            foreach (var user in users)
            {
                if (user == User)
                {
                    continue;
                }
                bufUsers.Add(user);
            }
            if (string.IsNullOrEmpty(searchstr))
            {
                Users.Clear();
                foreach (var user in users)
                {
                    if (user == User)
                    {
                        continue;
                    }
                    Users.Add(user);
                }
            }
            else
            {
                string searchText = Searchstr.ToLower();
                var matched = bufUsers.Where(u => u.NickName.ToLower().Contains(searchText));
                Users.Clear();
                foreach (User u in matched)
                {
                    Users.Add(u);
                }
            }
        }
        [RelayCommand]
        async Task GoToSearchedUser(User Selected)
        {
            User Useracc = User;
            if(Selected != null)
            {
                Userspage = Selected;
                IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "Userspage", Userspage },
                        { "Useracc", Useracc }
                    };
                await Shell.Current.GoToAsync(nameof(OtherUsersPage), parametres);
            }
        }
        [RelayCommand]
        async Task GoToAccountPage()
        {
            IDictionary<string, object> parametres = new Dictionary<string, object>()
                    {
                        { "User", User }
                    };
            await Shell.Current.GoToAsync(nameof(UserAccountMainPage), parametres);
        }
    }
}
