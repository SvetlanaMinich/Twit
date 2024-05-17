
namespace TwitterAnal.Application.UserUseCases.Requests
{
    public sealed record GetAllUsersRequest() : IRequest<IEnumerable<User>>;
}
