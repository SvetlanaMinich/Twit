
using TwitterAnal.Application.SubscriptionUseCases.Requests;

namespace TwitterAnal.Application.SubscriptionUseCases.Handlers
{
    internal class GetUsersBySubscriberRequestHandler(IUnitOfWork unitOfWork)
        : IRequestHandler<GetUsersBySubscriberRequest, IEnumerable<User>>
    {
        public async Task<IEnumerable<User>> Handle(GetUsersBySubscriberRequest request, 
            CancellationToken cancellationToken)
        {
            IEnumerable<Subscription> subscriptions = await unitOfWork.Subscriptions.ListAsync(
                t=>t.UserId == request.subscriber.Id, cancellationToken);
            IEnumerable<User>? users = new List<User>();
            if (subscriptions.Any())
            {
                List<int> users_id = new();
                foreach (Subscription subscription in subscriptions)
                {
                    users_id.Add(subscription.SubscriptionId);
                }
                for(int i = 0; i<users_id.Count; i++)
                {
                    User? user = await unitOfWork.Users.GetByIdAsync(users_id[i]);
                    if(user !=null)
                    {
                        users.Append(user);
                    }
                }
            }
            return users;
        }
    }
}
