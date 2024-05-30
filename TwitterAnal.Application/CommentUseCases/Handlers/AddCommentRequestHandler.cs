
using TwitterAnal.Application.CommentUseCases.Requests;

namespace TwitterAnal.Application.CommentUseCases.Handlers
{
    internal class AddCommentRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<AddCommentRequest, Comment>
    {
        public async Task<Comment> Handle(AddCommentRequest request, 
            CancellationToken cancellationToken)
        {
            await unitOfWork.Comments.AddAsync(request.comment, cancellationToken);
            return request.comment;
        }
    }
}
