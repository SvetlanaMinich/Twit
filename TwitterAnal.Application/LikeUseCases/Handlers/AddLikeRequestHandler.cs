
using TwitterAnal.Application.LikeUseCases.Requests;

namespace TwitterAnal.Application.LikeUseCases.Handlers
{
    internal class AddLikeRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<AddLikeRequest, Like>
    {
        public async Task<Like> Handle(AddLikeRequest request, 
            CancellationToken cancellationToken)
        {
            await unitOfWork.Likes.AddAsync(request.like, cancellationToken);
            return request.like;
        }
    }
}
