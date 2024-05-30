

using TwitterAnal.Application.LikeUseCases.Requests;

namespace TwitterAnal.Application.LikeUseCases.Handlers
{
    internal class FindLikeRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<FindLikeRequest, Like>
    {
        public async Task<Like> Handle(FindLikeRequest request, 
            CancellationToken cancellationToken)
        {
            IEnumerable<Like>? likes_list = await unitOfWork.Likes.ListAsync(
                t => t.postId == request.postid, cancellationToken);
            Like lik = null;
            foreach (Like like in likes_list)
            {
                if (like.userId == request.userid)
                {
                    lik = like;
                    break;
                }
            }
            if (lik != null)
            {
                return lik;
            }
            return null;
        }
    }
}
