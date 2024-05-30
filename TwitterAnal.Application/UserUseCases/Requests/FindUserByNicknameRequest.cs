
namespace TwitterAnal.Application.UserUseCases.Requests
{
    public sealed record FindUserByNicknameRequest(string Nickname) : IRequest<User>;
}
