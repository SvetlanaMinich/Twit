
namespace TwitterAnal.Application.PostUseCases.Requests
{
    public sealed record DeletePostRequest(Post post) : IRequest<Post>;
}
