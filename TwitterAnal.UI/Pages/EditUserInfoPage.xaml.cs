using TwitterAnal.UI.ViewModels;

namespace TwitterAnal.UI.Pages;

public partial class EditUserInfoPage : ContentPage
{
	public EditUserInfoPage(EditUserInfoPageViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
}