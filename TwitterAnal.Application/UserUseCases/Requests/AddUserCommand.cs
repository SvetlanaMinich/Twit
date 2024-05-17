
namespace TwitterAnal.Application.UserUseCases.Requests
{
    public sealed record AddUserCommand(User user) : IRequest<User>;
}
