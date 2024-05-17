
using TwitterAnal.Application.ModeratorUseCases.Requests;

namespace TwitterAnal.Application.ModeratorUseCases.Handlers
{
    internal class CheckModeratorInListRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<CheckModeratorInListRequest, Moderator>
    {
        public async Task<Moderator> Handle(CheckModeratorInListRequest request, 
            CancellationToken cancellationToken)
        {
            Moderator? _moderatorWithSameEmail = await unitOfWork.Moderators.FirstOrDefaultAsync(
                t => t.Email == request.email, cancellationToken);
            if (_moderatorWithSameEmail != null)
            {
                if (_moderatorWithSameEmail.HashPassword != request.password)
                {
                    return null;
                }
            }
            return _moderatorWithSameEmail;
        }
    }
}
