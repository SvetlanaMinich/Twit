using TwitterAnal.UI.ViewModels;

namespace TwitterAnal.UI.Pages;

public partial class OtherUsersPage : ContentPage
{
	public OtherUsersPage(OtherUsersPageViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
}