using TwitterAnal.Application.CommentUseCases.Requests;

namespace TwitterAnal.Application.CommentUseCases.Handlers
{
    internal class DeleteCommentRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<DeleteCommentRequest, Comment>
    {
        public async Task<Comment> Handle(DeleteCommentRequest request, 
            CancellationToken cancellationToken)
        {
            await unitOfWork.Comments.DeleteAsync(request.comment, cancellationToken);
            return request.comment;
        }
    }
}
