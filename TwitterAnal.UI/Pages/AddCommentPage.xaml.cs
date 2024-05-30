using TwitterAnal.UI.ViewModels;

namespace TwitterAnal.UI.Pages;

public partial class AddCommentPage : ContentPage
{
	public AddCommentPage(AddCommentPageViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}

    private void Editor_TextChanged(object sender, TextChangedEventArgs e)
    {
		(BindingContext as AddCommentPageViewModel)?.IsEnabledToPost();
    }
}