
namespace TwitterAnal.Application.PostUseCases.Requests
{
    public sealed record AddPostRequest(Post post) : IRequest<Post>;
}
