namespace TwitterAnal.Domain.Entities
{
    public class Subscription : Entity
    {
        public Subscription() { }
        public Subscription(int userId, int subscriptionId) 
        {
            subscriptionsCount++;
            this.Id = subscriptionsCount;
            UserId = userId;
            SubscriptionId = subscriptionId;
        }
        public int UserId { get; set; } //Кто подписан
        public int SubscriptionId { get; set; } //На кого
        public static int subscriptionsCount = 0;
    }
}
