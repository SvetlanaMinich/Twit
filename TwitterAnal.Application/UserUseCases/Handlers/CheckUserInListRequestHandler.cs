
using TwitterAnal.Application.UserUseCases.Requests;

namespace TwitterAnal.Application.UserUseCases.Handlers
{
    internal class CheckUserInListRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<CheckUserInListRequest, User>
    {
        public async Task<User> Handle(CheckUserInListRequest request, 
            CancellationToken cancellationToken)
        {
            User? _userWithSameEmail = await unitOfWork.Users.FirstOrDefaultAsync(
                t => t.Email == request.Email, cancellationToken);
            if (_userWithSameEmail != null)
            {
                if(_userWithSameEmail.HashPassword != request.HashPassword)
                {
                    return null;
                }
            }
            return _userWithSameEmail;
        }
    }
}
