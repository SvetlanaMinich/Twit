namespace TwitterAnal.Domain.Entities
{
    public class HashPassword
    {
        public HashPassword() { }
        public string? Password { get; set; }
        //Make some moves to hash the password and then save it in Password property
        public void Hash(string password) { }
    }
}
