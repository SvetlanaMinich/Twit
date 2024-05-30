using TwitterAnal.UI.ViewModels;

namespace TwitterAnal.UI.Pages;

public partial class DeletePostPage : ContentPage
{
	public DeletePostPage(DeletePostPageViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
}