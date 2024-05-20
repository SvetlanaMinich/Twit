
using TwitterAnal.Application.UserUseCases.Requests;

namespace TwitterAnal.Application.UserUseCases.Handlers
{
    internal class UpdateUserRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<UpdateUserRequest, User>
    {
        public async Task<User> Handle(UpdateUserRequest request, 
            CancellationToken cancellationToken)
        {
            User user = request.user;
            await unitOfWork.Users.DeleteAsync(request.user, cancellationToken);
            user.UserName = request.user.UserName;
            user.Email = request.user.Email;
            user.NickName = request.user.NickName;
            user.Bio = request.user.Bio;
            user.HashPassword = request.user.HashPassword;
            await unitOfWork.Users.AddAsync(user,cancellationToken);
            return user;
        }
    }
}
