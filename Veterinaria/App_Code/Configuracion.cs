using System.Configuration;
using System;
using System.IO;

public static class Configuracion
{
    public static string cadenaVeterinaria =
        ConfigurationManager.ConnectionStrings["cadenaVeterinaria"].ConnectionString;
}
