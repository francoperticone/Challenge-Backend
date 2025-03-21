using Application.Interfaces;
using Domain.Entities;
using Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Repositories;

public class EmpresaRepository : IEmpresaRepository
{
    private readonly AppDbContext _context;

    public EmpresaRepository(AppDbContext context)
    {
        _context = context;
    }

    public async Task<IEnumerable<Empresa>> GetEmpresasAdheridasUltimoMes()
    {
        var desde = DateTime.UtcNow.AddMonths(-1);
        return await _context.Empresas
            .Where(e => e.FechaAdhesion >= desde)
            .ToListAsync();
    }

    public async Task<IEnumerable<Empresa>> GetEmpresasConTransferenciasUltimoMes()
    {
        var desde = DateTime.UtcNow.AddMonths(-1);
        var cuitList = await _context.Transferencias
            .Where(t => t.Fecha >= desde)
            .Select(t => t.EmpresaCUIT)
            .Distinct()
            .ToListAsync();

        return await _context.Empresas
            .Where(e => cuitList.Contains(e.CUIT))
            .ToListAsync();
    }

    public async Task AdherirEmpresa(Empresa empresa)
    {
        _context.Empresas.Add(empresa);
        await _context.SaveChangesAsync();
    }
}