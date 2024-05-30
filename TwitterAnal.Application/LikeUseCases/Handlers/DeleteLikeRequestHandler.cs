

using TwitterAnal.Application.LikeUseCases.Requests;

namespace TwitterAnal.Application.LikeUseCases.Handlers
{
    internal class DeleteLikeRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<DeleteLikeRequest, Like>
    {
        public async Task<Like> Handle(DeleteLikeRequest request, 
            CancellationToken cancellationToken)
        {
            await unitOfWork.Likes.DeleteAsync(request.like, cancellationToken);
            return request.like;
        }
    }
}
