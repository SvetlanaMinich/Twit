using TwitterAnal.UI.ViewModels;

namespace TwitterAnal.UI.Pages;

public partial class RegistrationPage : ContentPage
{
	public RegistrationPage(MainPageViewModel viewModel)
	{
		InitializeComponent();
        NavigationPage.SetHasBackButton(this, false);
        BindingContext = viewModel;
	}
}