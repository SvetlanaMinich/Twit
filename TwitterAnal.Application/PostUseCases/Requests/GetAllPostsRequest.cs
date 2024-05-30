

namespace TwitterAnal.Application.PostUseCases.Requests
{
    public sealed record GetAllPostsRequest() :IRequest<IEnumerable<Post>>;
}
