using Microsoft.AspNetCore.Mvc;
using Application.Interfaces;
using Domain.Entities;

namespace WebAPI.Controllers;

[ApiController]
[Route("api/[controller]")]
public class EmpresasController : ControllerBase

{
    private readonly IEmpresaRepository _repo;

    public EmpresasController(IEmpresaRepository repo)
    {
        _repo = repo;
    }

    [HttpGet("transferencias-ultimo-mes")]
    public async Task<IActionResult> GetEmpresasConTransferencias()
        => Ok(await _repo.GetEmpresasConTransferenciasUltimoMes());

    [HttpGet("adheridas-ultimo-mes")]
    public async Task<IActionResult> GetEmpresasAdheridas()
        => Ok(await _repo.GetEmpresasAdheridasUltimoMes());

    [HttpPost("adherir")]
    public async Task<IActionResult> AdherirEmpresa(Empresa empresa)
    {
        await _repo.AdherirEmpresa(empresa);
        return Ok();
    }
}