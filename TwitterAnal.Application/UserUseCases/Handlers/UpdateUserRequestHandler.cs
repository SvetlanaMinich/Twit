
using TwitterAnal.Application.UserUseCases.Requests;

namespace TwitterAnal.Application.UserUseCases.Handlers
{
    internal class UpdateUserRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<UpdateUserRequest, User>
    {
        public async Task<User> Handle(UpdateUserRequest request, 
            CancellationToken cancellationToken)
        {
            await unitOfWork.Users.DeleteAsync(request.user, cancellationToken);
            User newUser = new User(request.user.UserName,
                request.user.NickName,
                request.user.Email,
                request.user.Bio,
                request.user.HashPassword);
            await unitOfWork.Users.AddAsync(newUser,cancellationToken);
            return newUser;
        }
    }
}
