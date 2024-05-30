
namespace TwitterAnal.Application.SubscriptionUseCases.Requests
{
    public sealed record GetUsersBySubscriberRequest(User subscriber) : IRequest<IEnumerable<User>>;
}
