using TwitterAnal.UI.ViewModels;

namespace TwitterAnal.UI.Pages;

public partial class SearchPage : ContentPage
{
	public SearchPage(SearchUsersPageViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}

    private void SearchBar_TextChanged(object sender, TextChangedEventArgs e)
    {
        (BindingContext as SearchUsersPageViewModel)?.SearchUserByNickName();
    }
}