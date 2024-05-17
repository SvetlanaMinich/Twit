using TwitterAnal.Persistense.Data;
using TwitterAnal.Persistense.Repository;


namespace TwitterAnal.Persistense.UnitOfWork
{
    public class EFUnitOfWork(AppDbContext context) : IUnitOfWork
    {
        private readonly Lazy<IRepository<User>> _userRepository = 
            new Lazy<IRepository<User>>(() => new EFRepository<User>(context));
        private readonly Lazy<IRepository<Post>> _postRepository = 
            new Lazy<IRepository<Post>>(() => new EFRepository<Post>(context));
        private readonly Lazy<IRepository<Comment>> _commentRepository = 
            new Lazy<IRepository<Comment>>(() => new EFRepository<Comment>(context));
        private readonly Lazy<IRepository<Moderator>> _moderatorRepository =
            new Lazy<IRepository<Moderator>>(() => new EFRepository<Moderator>(context));

        public IRepository<User> Users => _userRepository.Value;

        public IRepository<Post> Posts => _postRepository.Value;

        public IRepository<Comment> Comments => _commentRepository.Value;
        public IRepository<Moderator> Moderators => _moderatorRepository.Value;

        public async Task CreateDataBaseAsync() => await context.Database.EnsureCreatedAsync();
        public async Task DeleteDataBaseAsync() => await context.Database.EnsureDeletedAsync();
        public async Task SaveAllAsync() => await context.SaveChangesAsync();
    }
}
