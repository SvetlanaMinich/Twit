

namespace TwitterAnal.Application.CommentUseCases.Requests
{
    public sealed record GetAllCommentsByPostRequest(Post post) : IRequest<IEnumerable<Comment>>;
}
