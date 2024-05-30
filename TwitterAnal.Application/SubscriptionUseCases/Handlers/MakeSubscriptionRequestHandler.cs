
using TwitterAnal.Application.SubscriptionUseCases.Requests;

namespace TwitterAnal.Application.SubscriptionUseCases.Handlers
{
    internal class MakeSubscriptionRequestHandler(IUnitOfWork unitOfWork)
        : IRequestHandler<MakeSubscriptionRequest, Subscription>
    {
        public async Task<Subscription> Handle(MakeSubscriptionRequest request, 
            CancellationToken cancellationToken)
        {
            await unitOfWork.Subscriptions.AddAsync(request.subscription, cancellationToken);
            return request.subscription;
        }
    }
}
