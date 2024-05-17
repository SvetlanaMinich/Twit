

using TwitterAnal.Application.UserUseCases.Requests;

namespace TwitterAnal.Application.UserUseCases.Handlers
{
    internal class AddUserCommandHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<AddUserCommand, User>
    {
        public async Task<User> Handle(AddUserCommand request, 
            CancellationToken cancellationToken)
        {
            await unitOfWork.Users.AddAsync(request.user, cancellationToken);
            return request.user;
        }
    }
}
