using TwitterAnal.UI.ViewModels;

namespace TwitterAnal.UI.Pages;

public partial class CommentsPage : ContentPage
{
	public CommentsPage(CommentsPageViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
}