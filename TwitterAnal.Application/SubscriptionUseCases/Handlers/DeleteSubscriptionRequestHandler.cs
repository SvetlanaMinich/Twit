
using TwitterAnal.Application.SubscriptionUseCases.Requests;

namespace TwitterAnal.Application.SubscriptionUseCases.Handlers
{
    internal class DeleteSubscriptionRequestHandler(IUnitOfWork unitOfWork)
        : IRequestHandler<DeleteSubscriptionRequest, Subscription>
    {
        public async Task<Subscription> Handle(DeleteSubscriptionRequest request, 
            CancellationToken cancellationToken)
        {
            await unitOfWork.Subscriptions.DeleteAsync(request.Sub,cancellationToken);
            return request.Sub;
        }
    }
}
