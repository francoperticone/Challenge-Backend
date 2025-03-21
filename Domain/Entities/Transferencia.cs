using System.ComponentModel.DataAnnotations;

namespace Domain.Entities;

public class Transferencia
{
    [Key]
    public int Id { get; set; }
    public string? EmpresaCUIT { get; set; }
    public decimal Importe { get; set; }
    public string? CuentaDebito { get; set; }
    public string? CuentaCredito { get; set; }
    public DateTime Fecha { get; set; }
}