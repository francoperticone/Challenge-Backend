using Microsoft.EntityFrameworkCore;
using Domain.Entities;

namespace Infrastructure.Data;

public class AppDbContext : DbContext
{
    public DbSet<Empresa> Empresas { get; set; }
    public DbSet<Transferencia> Transferencias { get; set; }

    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
{
    Console.WriteLine("DbContext creado. Conexión lista.");
}

}
