namespace TwitterAnal.Domain.Entities
{
    public class User : Entity
    {
        public User() { }
        public User(string? userName, string? nickName, string? email, string? bio, string? hashPassword)
        {
            usersCount++;
            this.Id = usersCount;
            UserName = userName;
            NickName = nickName;
            Email = email;
            Bio = bio;
            HashPassword = hashPassword;
        }
        public static int usersCount = 0;
        public string? UserName { get; set; }
        public string? NickName { get; set; }
        public string? Email { get; set; }
        public string? Bio {  get; set; }

        public string? HashPassword { get; set; }
        
    }
}
