
namespace TwitterAnal.Application.SubscriptionUseCases.Requests
{
    public sealed record DeleteSubscriptionRequest(Subscription Sub) 
        : IRequest<Subscription>;
}
