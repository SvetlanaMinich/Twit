
using TwitterAnal.Application.UserUseCases.Requests;

namespace TwitterAnal.Application.UserUseCases.Handlers
{
    internal class FindUserByNicknameRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<FindUserByNicknameRequest, User>
    {
        public async Task<User> Handle(FindUserByNicknameRequest request, CancellationToken cancellationToken)
        {
            User? _userWithSameNickname = await unitOfWork.Users.FirstOrDefaultAsync(
                t => t.NickName == request.Nickname, cancellationToken);
            if (_userWithSameNickname == null)
            {
                return null;
            }
            return _userWithSameNickname;
        }
    }
}
