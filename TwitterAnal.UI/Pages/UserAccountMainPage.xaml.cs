using TwitterAnal.UI.ViewModels;

namespace TwitterAnal.UI.Pages;

public partial class UserAccountMainPage : ContentPage
{
	public UserAccountMainPage(UserAccountMainPageViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
}