using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;
using TwitterAnal.Persistense.Data;

namespace TwitterAnal.Persistense.Repository
{
    public class EFRepository<T> : IRepository<T> where T : Entity
    {
        protected readonly DbSet<T>? _entities;
        protected readonly AppDbContext _context;
        public EFRepository(AppDbContext context) 
        {
            _context = context;
            _entities = context.Set<T>();
        }
        public async Task AddAsync(T entity, CancellationToken cancellationToken = default)
        {
            _context.Add<T>(entity);
            await _context.SaveChangesAsync(cancellationToken);
        }

        public async Task DeleteAsync(T entity, CancellationToken cancellationToken = default)
        {
            _context.Remove<T>(entity);
            await _context.SaveChangesAsync(cancellationToken);
        }

        public async Task<T> FirstOrDefaultAsync(Expression<Func<T, bool>> filter, 
            CancellationToken cancellationToken = default)
        {
            IQueryable<T>? query = _entities.AsQueryable();
            if (filter != null)
            {
                query = query.Where(filter);
            }
            T? entity = await query.FirstOrDefaultAsync(cancellationToken);
            return entity;
        }

        public async Task<T> GetByIdAsync(int id, 
            CancellationToken cancellationToken = default, 
            params Expression<Func<T, object>>[]? includesProperties)
        {
            IQueryable<T>? query = _entities.AsQueryable();
            if (includesProperties.Any())
            {
                foreach (Expression<Func<T, object>>? included in includesProperties)
                {
                    query = query.Include(included);
                }
            }
            T? entity = await query.FirstOrDefaultAsync(p => p.Id == id, cancellationToken);
            return entity;
        }

        public async Task<IReadOnlyList<T>> ListAllAsync(CancellationToken cancellationToken = default)
        {
            IQueryable<T>? query = _entities.AsQueryable();
            return await query.ToListAsync(cancellationToken);
        }

        public async Task<IReadOnlyList<T>> ListAsync(Expression<Func<T, bool>> filter, 
            CancellationToken cancellationToken = default, 
            params Expression<Func<T, object>>[] includesProperties)
        {
            IQueryable<T>? query = _entities.AsQueryable();
            if (includesProperties.Any())
            {
                foreach (Expression<Func<T, object>>? included in includesProperties)
                {
                    query = query.Include(included);
                }
            }
            if (filter != null)
            {
                query = query.Where(filter);
            }
            return await query.ToListAsync(cancellationToken);
        }

        public async Task UpdateAsync(T entity, CancellationToken cancellationToken = default)
        {
            _context.Entry(entity).State = EntityState.Modified;
            await _context.SaveChangesAsync(cancellationToken);
        }
    }
}
