using TwitterAnal.Application.UserUseCases.Requests;

namespace TwitterAnal.Application.UserUseCases.Handlers
{
    internal class GetPostsByCreatorRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<GetPostsByCreatorRequest, IEnumerable<Post>>
    {
        public async Task<IEnumerable<Post>> Handle(GetPostsByCreatorRequest request, 
            CancellationToken cancellationToken)
        {
            return await unitOfWork.Posts.ListAsync(
                t => t.CreatorId == request.user.Id, cancellationToken);
        }
    }
}
