using Microsoft.EntityFrameworkCore;


namespace TwitterAnal.Persistense.Data
{
    public class AppDbContext : DbContext
    {
        //string path = string.Empty;
        public DbSet<User> Users => Set<User>();
        public DbSet<Post> Posts => Set<Post>();
        public DbSet<Comment> Comments => Set<Comment>();
        public DbSet<Moderator> Moderators => Set<Moderator>();
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
            Database.EnsureDeleted();
            Database.EnsureCreated();
           // path = Path.Combine(Directory.GetCurrentDirectory(), "TwitterAnalogue.db");
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            /*string databasePath = "TwitterAnalogue.db";
            string databaseFullPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Personal), databasePath);
            optionsBuilder.UseSqlite($"Data Source={databaseFullPath}");*/
        }
    }
}
