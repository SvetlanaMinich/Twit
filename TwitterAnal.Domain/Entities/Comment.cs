namespace TwitterAnal.Domain.Entities
{
    public class Comment : Entity
    {
        public Comment() { }
        public Comment(int id) 
        { 
            this.Id = id;
        }
        public Comment(int id, Post? postBy, User? creator, DateTime createdAt, string? text, int likeCount)
        {
            this.Id = id;
            PostBy = postBy;
            Creator = creator;
            CreatedAt = createdAt;
            Text = text;
            LikeCount = likeCount;
        }

        public Post? PostBy { get; private set; }
        public User? Creator { get; private set; }
        public DateTime CreatedAt { get; private set;}
        public string? Text { get; set; }
        public int LikeCount { get; set; }
    }
}
