using TwitterAnal.UI.ViewModels;
using MediatR;
using TwitterAnal.UI.Pages;

namespace TwitterAnal.UI
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            Shell.Current.GoToAsync(nameof(RegistrationPage));
        }

    }

}
