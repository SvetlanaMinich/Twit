

namespace TwitterAnal.Application.LikeUseCases.Requests
{
    public sealed record DeleteLikeRequest(Like like) : IRequest<Like>;
}
