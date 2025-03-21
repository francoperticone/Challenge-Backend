using System.ComponentModel.DataAnnotations;

namespace Domain.Entities;

public class Empresa
{
[Key]
public string? CUIT { get; set; }
public string? RazonSocial { get; set; }
    public DateTime FechaAdhesion { get; set; }
}