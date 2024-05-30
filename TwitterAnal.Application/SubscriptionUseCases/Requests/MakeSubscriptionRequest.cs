
namespace TwitterAnal.Application.SubscriptionUseCases.Requests
{
    public sealed record MakeSubscriptionRequest(Subscription subscription)
        : IRequest<Subscription>;
}
