
using TwitterAnal.Application.CommentUseCases.Requests;

namespace TwitterAnal.Application.CommentUseCases.Handlers
{
    internal class GetAllCommentsByPostRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<GetAllCommentsByPostRequest, IEnumerable<Comment>>
    {
        public async Task<IEnumerable<Comment>> Handle(GetAllCommentsByPostRequest request, 
            CancellationToken cancellationToken)
        {
            IEnumerable<Comment> result = await unitOfWork.Comments.ListAsync(
                t => t.Postid == request.post.Id, cancellationToken);
            if(result.Any())
            {
                return result;
            }
            return null;
        }
    }
}
