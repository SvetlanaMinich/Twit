

namespace TwitterAnal.Application.ModeratorUseCases.Requests
{
    public sealed record AddModeratorRequest(Moderator moderator) :
        IRequest<Moderator>;
}
