
namespace TwitterAnal.Domain.Entities
{
    public class Moderator : Entity
    {
        public Moderator() { }
        public Moderator(string? nickName, string? email, string? hashPassword)
        {
            moderatorsCount++;
            this.Id = moderatorsCount;
            NickName = nickName;
            Email = email;
            HashPassword = hashPassword;
        }
        public static int moderatorsCount = 0;
        public string? NickName { get; set; }
        public string? Email { get; set; }
        public string? HashPassword { get; set; }
    }
}
