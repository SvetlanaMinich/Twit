
namespace TwitterAnal.Application.UserUseCases.Requests
{
    public sealed record UpdateUserRequest(User user) : IRequest<User>;
}
