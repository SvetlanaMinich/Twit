using TwitterAnal.UI.ViewModels;

namespace TwitterAnal.UI.Pages;

public partial class CreatePostPage : ContentPage
{ 
	public CreatePostPage(CreatePostPageViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
}