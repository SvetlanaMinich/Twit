

using TwitterAnal.Application.PostUseCases.Requests;

namespace TwitterAnal.Application.PostUseCases.Handlers
{
    internal class UpdatePostRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<UpdatePostRequest, Post>
    {
        public async Task<Post> Handle(UpdatePostRequest request, 
            CancellationToken cancellationToken)
        {
            await unitOfWork.Posts.DeleteAsync(request.previous_post, cancellationToken);
            await unitOfWork.Posts.AddAsync(request.new_post, cancellationToken);
            return request.new_post;
        }
    }
}
