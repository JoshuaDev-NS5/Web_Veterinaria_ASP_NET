using System;
using System.Data;


public class VeterinarioBL
{
    private readonly VeterinarioADO objVeterinarioADO = new VeterinarioADO();

    public bool InsertarVeterinario(VeterinarioBE objVeterinarioBE)
    {
        if (string.IsNullOrWhiteSpace(objVeterinarioBE.nomVeterinario))
            throw new ArgumentException("El nombre del veterinario es obligatorio.");
        if (string.IsNullOrWhiteSpace(objVeterinarioBE.apellidoVeterinario))
            throw new ArgumentException("El apellido del veterinario es obligatorio.");
        if (string.IsNullOrWhiteSpace(objVeterinarioBE.DNI_Veterinario))
            throw new ArgumentException("El DNI del veterinario es obligatorio.");

        return objVeterinarioADO.InsertarVeterinario(objVeterinarioBE);
    }

    public bool ActualizarVeterinario(VeterinarioBE objVeterinarioBE)
    {
        if (string.IsNullOrWhiteSpace(objVeterinarioBE.ID_vet))
            throw new ArgumentException("El ID del veterinario es obligatorio.");
        if (string.IsNullOrWhiteSpace(objVeterinarioBE.nomVeterinario))
            throw new ArgumentException("El nombre del veterinario es obligatorio.");
        if (string.IsNullOrWhiteSpace(objVeterinarioBE.apellidoVeterinario))
            throw new ArgumentException("El apellido del veterinario es obligatorio.");

        return objVeterinarioADO.ActualizarVeterinario(objVeterinarioBE);
    }

    public bool EliminarVeterinario(String ID_vet)
    {
        if (string.IsNullOrWhiteSpace(ID_vet))
            throw new ArgumentException("El ID del veterinario es obligatorio.");

        return objVeterinarioADO.EliminarVeterinario(ID_vet);
    }

    public DataTable ListarVeterinario()
    {
        return objVeterinarioADO.ListarVeterinario();
    }

    public VeterinarioBE ConsultarVeterinario(String ID_vet)
    {
        if (string.IsNullOrWhiteSpace(ID_vet))
            throw new ArgumentException("El ID del veterinario es obligatorio.");

        return objVeterinarioADO.ConsultarVeterinario(ID_vet);
    }
}
