
using TwitterAnal.Application.UserUseCases.Requests;

namespace TwitterAnal.Application.UserUseCases.Handlers
{
    internal class GetAllUsersRequestHandler(IUnitOfWork unitOfWork) :
        IRequestHandler<GetAllUsersRequest, IEnumerable<User>>
    {
        public async Task<IEnumerable<User>> Handle(GetAllUsersRequest request, 
            CancellationToken cancellationToken)
        {
            return await unitOfWork.Users.ListAllAsync(cancellationToken);
        }
    }
}
