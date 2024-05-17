
using TwitterAnal.Application.PostUseCases.Requests;

namespace TwitterAnal.Application.PostUseCases.Handlers
{
    internal class DeletePostRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<DeletePostRequest, Post>
    {
        public async Task<Post> Handle(DeletePostRequest request, 
            CancellationToken cancellationToken)
        {
            await unitOfWork.Posts.DeleteAsync(request.post, cancellationToken);
            return request.post;
        }
    }
}
