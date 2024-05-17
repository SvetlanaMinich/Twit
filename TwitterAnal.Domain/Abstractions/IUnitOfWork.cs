using TwitterAnal.Domain.Entities;

namespace TwitterAnal.Domain.Abstractions
{
    public interface IUnitOfWork
    {
        IRepository<User> Users { get; }
        IRepository<Post> Posts { get; }
        IRepository<Comment> Comments { get; }
        IRepository<Moderator> Moderators { get; }
        public Task SaveAllAsync();
        public Task DeleteDataBaseAsync();
        public Task CreateDataBaseAsync();

    }
}
