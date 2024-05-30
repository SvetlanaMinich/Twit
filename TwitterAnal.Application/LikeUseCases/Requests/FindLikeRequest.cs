

namespace TwitterAnal.Application.LikeUseCases.Requests
{
    public sealed record FindLikeRequest(int userid, int postid) : IRequest<Like>;
}
