
namespace TwitterAnal.Application.SubscriptionUseCases.Requests
{
    public sealed record FindSubscriptionRequest(int user, int subscription) 
        : IRequest<Subscription>;
}
