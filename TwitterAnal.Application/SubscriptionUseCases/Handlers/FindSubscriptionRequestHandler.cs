

using TwitterAnal.Application.SubscriptionUseCases.Requests;

namespace TwitterAnal.Application.SubscriptionUseCases.Handlers
{
    internal class FindSubscriptionRequestHandler(IUnitOfWork unitOfWork)
        : IRequestHandler<FindSubscriptionRequest, Subscription>
    {
        public async Task<Subscription> Handle(FindSubscriptionRequest request, 
            CancellationToken cancellationToken)
        {
            IEnumerable<Subscription>? subscript_list = await unitOfWork.Subscriptions.ListAsync(
                t => t.UserId == request.user, cancellationToken);
            Subscription subscript = null;
            foreach (Subscription subscription in subscript_list)
            {
                if(subscription.SubscriptionId == request.subscription)
                {
                    subscript = subscription;
                    break;
                }
            }
            if (subscript != null)
            {
                return subscript;
            }
            return null;
        }
    }
}
