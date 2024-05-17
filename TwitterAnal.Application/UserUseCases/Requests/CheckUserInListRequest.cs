
namespace TwitterAnal.Application.UserUseCases.Requests
{
    public sealed record CheckUserInListRequest(string Email, string HashPassword) : IRequest<User>;
}
