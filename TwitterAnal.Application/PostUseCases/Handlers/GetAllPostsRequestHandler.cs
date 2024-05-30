

using TwitterAnal.Application.PostUseCases.Requests;

namespace TwitterAnal.Application.PostUseCases.Handlers
{
    internal class GetAllPostsRequestHandler(IUnitOfWork unitOfWork)
        : IRequestHandler<GetAllPostsRequest, IEnumerable<Post>>
    {
        public async Task<IEnumerable<Post>> Handle(GetAllPostsRequest request, 
            CancellationToken cancellationToken)
        {
            return await unitOfWork.Posts.ListAllAsync(cancellationToken);
        }
    }
}
