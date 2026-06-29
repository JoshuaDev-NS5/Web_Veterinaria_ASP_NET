using System;
using System.Data;
using System.Data.SqlClient;

public class VeterinarioADO
{
    public bool InsertarVeterinario(VeterinarioBE objVeterinarioBE)
    {
        bool resultado = false;
        try
        {
            using (SqlConnection cnx = new SqlConnection(Configuracion.cadenaVeterinaria))
            {
                using (SqlCommand cmd = new SqlCommand("usp_Insertar_VETERINARIO", cnx))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_vet",                SqlDbType.VarChar, 10).Value  = objVeterinarioBE.ID_vet;
                    cmd.Parameters.Add("@nomVeterinario",        SqlDbType.VarChar, 60).Value  = objVeterinarioBE.nomVeterinario;
                    cmd.Parameters.Add("@apellidoVeterinario",   SqlDbType.VarChar, 60).Value  = objVeterinarioBE.apellidoVeterinario;
                    cmd.Parameters.Add("@telefonoVeterinario",   SqlDbType.VarChar, 15).Value  = objVeterinarioBE.telefonoVeterinario;
                    cmd.Parameters.Add("@especialidad",          SqlDbType.VarChar, 50).Value  = objVeterinarioBE.especialidad;
                    cmd.Parameters.Add("@email",                 SqlDbType.VarChar, 100).Value = objVeterinarioBE.email;
                    cmd.Parameters.Add("@carnet_de_Colegiatura", SqlDbType.VarChar, 20).Value  = objVeterinarioBE.carnet_de_Colegiatura;
                    cmd.Parameters.Add("@DNI_Veterinario",       SqlDbType.Char,    8).Value   = objVeterinarioBE.DNI_Veterinario;
                    cmd.Parameters.Add("@Estado_Veterinario",    SqlDbType.VarChar, 10).Value  = objVeterinarioBE.Estado_Veterinario;
                    cmd.Parameters.Add("@Foto_veterinario",      SqlDbType.VarBinary).Value    = (object)objVeterinarioBE.Foto_veterinario ?? DBNull.Value;
                    cmd.Parameters.Add("@direccion_Veterinario", SqlDbType.VarChar, 150).Value = objVeterinarioBE.direccion_Veterinario;
                    cmd.Parameters.Add("@id_ubigeo",             SqlDbType.VarChar, 10).Value  = objVeterinarioBE.id_ubigeo;
                    cmd.Parameters.Add("@Usu_Registro",          SqlDbType.VarChar, 50).Value  = objVeterinarioBE.Usu_Registro;
                    cnx.Open();
                    resultado = cmd.ExecuteNonQuery() > 0;
                }
            }
        }
        catch (Exception ex) { throw new Exception(ex.Message); }
        return resultado;
    }

    public bool ActualizarVeterinario(VeterinarioBE objVeterinarioBE)
    {
        bool resultado = false;
        try
        {
            using (SqlConnection cnx = new SqlConnection(Configuracion.cadenaVeterinaria))
            {
                using (SqlCommand cmd = new SqlCommand("usp_Actualizar_VETERINARIO", cnx))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_vet",                SqlDbType.VarChar, 10).Value  = objVeterinarioBE.ID_vet;
                    cmd.Parameters.Add("@nomVeterinario",        SqlDbType.VarChar, 60).Value  = objVeterinarioBE.nomVeterinario;
                    cmd.Parameters.Add("@apellidoVeterinario",   SqlDbType.VarChar, 60).Value  = objVeterinarioBE.apellidoVeterinario;
                    cmd.Parameters.Add("@telefonoVeterinario",   SqlDbType.VarChar, 15).Value  = objVeterinarioBE.telefonoVeterinario;
                    cmd.Parameters.Add("@especialidad",          SqlDbType.VarChar, 50).Value  = objVeterinarioBE.especialidad;
                    cmd.Parameters.Add("@email",                 SqlDbType.VarChar, 100).Value = objVeterinarioBE.email;
                    cmd.Parameters.Add("@carnet_de_Colegiatura", SqlDbType.VarChar, 20).Value  = objVeterinarioBE.carnet_de_Colegiatura;
                    cmd.Parameters.Add("@DNI_Veterinario",       SqlDbType.Char,    8).Value   = objVeterinarioBE.DNI_Veterinario;
                    cmd.Parameters.Add("@Estado_Veterinario",    SqlDbType.VarChar, 10).Value  = objVeterinarioBE.Estado_Veterinario;
                    cmd.Parameters.Add("@Foto_veterinario",      SqlDbType.VarBinary).Value    = (object)objVeterinarioBE.Foto_veterinario ?? DBNull.Value;
                    cmd.Parameters.Add("@direccion_Veterinario", SqlDbType.VarChar, 150).Value = objVeterinarioBE.direccion_Veterinario;
                    cmd.Parameters.Add("@id_ubigeo",             SqlDbType.VarChar, 10).Value  = objVeterinarioBE.id_ubigeo;
                    cmd.Parameters.Add("@Usu_Ult_Mod",           SqlDbType.VarChar, 50).Value  = objVeterinarioBE.Usu_Ult_Mod;
                    cnx.Open();
                    resultado = cmd.ExecuteNonQuery() > 0;
                }
            }
        }
        catch (Exception ex) { throw new Exception(ex.Message); }
        return resultado;
    }

    public bool EliminarVeterinario(String ID_vet)
    {
        bool resultado = false;
        try
        {
            using (SqlConnection cnx = new SqlConnection(Configuracion.cadenaVeterinaria))
            {
                using (SqlCommand cmd = new SqlCommand("usp_Eliminar_VETERINARIO", cnx))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_vet", SqlDbType.VarChar, 10).Value = ID_vet;
                    cnx.Open();
                    resultado = cmd.ExecuteNonQuery() > 0;
                }
            }
        }
        catch (Exception ex) { throw new Exception(ex.Message); }
        return resultado;
    }

    public DataTable ListarVeterinario()
    {
        DataTable dt = new DataTable();
        try
        {
            using (SqlConnection cnx = new SqlConnection(Configuracion.cadenaVeterinaria))
            {
                using (SqlCommand cmd = new SqlCommand("usp_Listar_VETERINARIOS", cnx))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cnx.Open();
                    dt.Load(cmd.ExecuteReader());
                }
            }
        }
        catch (Exception ex) { throw new Exception(ex.Message); }
        return dt;
    }

    public VeterinarioBE ConsultarVeterinario(String ID_vet)
    {
        VeterinarioBE objVeterinarioBE = null;
        try
        {
            using (SqlConnection cnx = new SqlConnection(Configuracion.cadenaVeterinaria))
            {
                using (SqlCommand cmd = new SqlCommand("usp_Consultar_VETERINARIO", cnx))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@ID_vet", SqlDbType.VarChar, 10).Value = ID_vet;
                    cnx.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        objVeterinarioBE = new VeterinarioBE();
                        objVeterinarioBE.ID_vet                = dr["ID_vet"].ToString();
                        objVeterinarioBE.nomVeterinario        = dr["nomVeterinario"].ToString();
                        objVeterinarioBE.apellidoVeterinario   = dr["apellidoVeterinario"].ToString();
                        objVeterinarioBE.telefonoVeterinario   = dr["telefonoVeterinario"].ToString();
                        objVeterinarioBE.especialidad          = dr["especialidad"].ToString();
                        objVeterinarioBE.email                 = dr["email"].ToString();
                        objVeterinarioBE.carnet_de_Colegiatura = dr["carnet_de_Colegiatura"].ToString();
                        objVeterinarioBE.DNI_Veterinario       = dr["DNI_Veterinario"].ToString();
                        objVeterinarioBE.Estado_Veterinario    = dr["Estado_Veterinario"].ToString();
                        objVeterinarioBE.direccion_Veterinario = dr["direccion_Veterinario"].ToString();
                        objVeterinarioBE.id_ubigeo             = dr["id_ubigeo"].ToString();
                    }
                }
            }
        }
        catch (Exception ex) { throw new Exception(ex.Message); }
        return objVeterinarioBE;
    }
}
