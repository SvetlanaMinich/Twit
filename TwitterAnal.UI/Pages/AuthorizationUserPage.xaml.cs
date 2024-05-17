using TwitterAnal.UI.ViewModels;

namespace TwitterAnal.UI.Pages;

public partial class AuthorizationUserPage : ContentPage
{
	public AuthorizationUserPage(AuthorizationUserPageViewModel viewModel)
	{
		InitializeComponent();
        NavigationPage.SetHasBackButton(this, false);
		BindingContext = viewModel;
    }
}