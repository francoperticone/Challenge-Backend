using Domain.Entities;

namespace Application.Interfaces;

public interface IEmpresaRepository
{
    Task<IEnumerable<Empresa>> GetEmpresasAdheridasUltimoMes();
    Task<IEnumerable<Empresa>> GetEmpresasConTransferenciasUltimoMes();
    Task AdherirEmpresa(Empresa empresa);
}