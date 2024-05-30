
namespace TwitterAnal.Application.CommentUseCases.Requests
{
    public sealed record AddCommentRequest(Comment comment) : IRequest<Comment>;
}
