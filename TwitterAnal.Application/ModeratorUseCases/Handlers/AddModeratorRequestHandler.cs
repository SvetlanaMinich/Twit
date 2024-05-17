
using TwitterAnal.Application.ModeratorUseCases.Requests;

namespace TwitterAnal.Application.ModeratorUseCases.Handlers
{
    internal class AddModeratorRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<AddModeratorRequest, Moderator>
    {
        public async Task<Moderator> Handle(AddModeratorRequest request, 
            CancellationToken cancellationToken)
        {
            await unitOfWork.Moderators.AddAsync(request.moderator, cancellationToken);
            return request.moderator;
        }
    }
}
