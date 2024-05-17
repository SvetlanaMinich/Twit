namespace TwitterAnal.Domain.Entities
{
    public class Post : Entity
    {
        public Post() { }
        public Post(int creator, int user, string? createdAt, string? text)
        {
            postsCount++;
            this.Id = postsCount;
            CreatorId = creator;
            UserId = user;
            CreatedAt = createdAt;
            Text = text;
            LikeCount = 0;
        }

        public static int postsCount = 0;
        public int CreatorId { get; private set; }
        public int UserId { get; set; }
        public string? CreatedAt { get; private set; }
        public string? Text { get; set; }
        public int LikeCount { get; set; }
    }
}
