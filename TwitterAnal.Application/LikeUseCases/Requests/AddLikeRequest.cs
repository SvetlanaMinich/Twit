

namespace TwitterAnal.Application.LikeUseCases.Requests
{
    public sealed record AddLikeRequest(Like like) : IRequest<Like>;
}
