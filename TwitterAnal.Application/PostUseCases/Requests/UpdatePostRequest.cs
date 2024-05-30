

namespace TwitterAnal.Application.PostUseCases.Requests
{
    public sealed record UpdatePostRequest(Post previous_post, Post new_post) : IRequest<Post>;
}
