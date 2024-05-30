

namespace TwitterAnal.Application.CommentUseCases.Requests
{
    public sealed record DeleteCommentRequest(Comment comment) : IRequest<Comment>;
}
