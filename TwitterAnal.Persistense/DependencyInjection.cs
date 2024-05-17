using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using TwitterAnal.Persistense.Data;
using TwitterAnal.Persistense.UnitOfWork;

namespace TwitterAnal.Persistense
{
    public static class DependencyInjection
    {
        public static IServiceCollection AddPersistence(this IServiceCollection services)
        {
            services.AddSingleton<IUnitOfWork, EFUnitOfWork>();
            return services;
        }
        public static IServiceCollection AddPersistence(this IServiceCollection services, DbContextOptions options)
        {
            services.AddPersistence().AddSingleton<AppDbContext>(
                  new AppDbContext((DbContextOptions<AppDbContext>)options));
            return services;
        }
    }
}
