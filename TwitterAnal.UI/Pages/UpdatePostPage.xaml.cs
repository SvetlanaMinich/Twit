using TwitterAnal.UI.ViewModels;

namespace TwitterAnal.UI.Pages;

public partial class UpdatePostPage : ContentPage
{
	public UpdatePostPage(UpdatePostPageViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}

    private void Editor_TextChanged(object sender, TextChangedEventArgs e)
    {
		(BindingContext as UpdatePostPageViewModel)?.IsEnabledToPost();
    }
}