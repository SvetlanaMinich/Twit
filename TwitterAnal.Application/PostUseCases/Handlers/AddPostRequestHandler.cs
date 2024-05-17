

using TwitterAnal.Application.PostUseCases.Requests;

namespace TwitterAnal.Application.PostUseCases.Handlers
{
    internal class AddPostRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<AddPostRequest, Post>
    {
        public async Task<Post> Handle(AddPostRequest request, 
            CancellationToken cancellationToken)
        {
            await unitOfWork.Posts.AddAsync(request.post, cancellationToken);
            return request.post;
        }
    }
}
