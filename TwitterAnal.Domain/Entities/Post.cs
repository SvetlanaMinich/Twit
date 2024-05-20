namespace TwitterAnal.Domain.Entities
{
    public class Post : Entity
    {
        public Post() { }
        public Post(string creator, int creatorid, string user, int userid, string? createdAt, string? text)
        {
            postsCount++;
            this.Id = postsCount;
            Creator = creator;
            CreatorId = creatorid;
            User = user;
            UserId = userid;
            CreatedAt = createdAt;
            Text = text;
            LikeCount = 0;
        }

        public static int postsCount = 0;
        public string? Creator { get; set; }
        public int CreatorId { get; set; }
        public string? User { get; set; }
        public int UserId { get; set; }
        public string? CreatedAt { get; private set; }
        public string? Text { get; set; }
        public int LikeCount { get; set; }
    }
}
