<%@ Page Title="" Language="C#" MasterPageFile="~/Veterinaria.Master" AutoEventWireup="true" CodeBehind="Historial_de_Mascota.aspx.cs" Inherits="Veterinaria.Consultas.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cabecera" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contenido_De_consulta" runat="server">
    <div id="Historial_mascotas">
        <asp:Label ID="Label1" runat="server" Text="Label">Historial de Mascotas</asp:Label>

        <div class="input">
            <asp:Label ID="Label2" runat="server" Text="Label"> ID Mascota </asp:Label>
            <input type="text" placeholder="MAS001" id="ID_Mascota">
        </div>
        <!--Datos de mascota--->
        <div id="HM_Nombre">
            <div id="Nombre">
                <asp:Label ID="Label3" runat="server" Text="Label">Mascota:</asp:Label>
                <asp:Label ID="HM_Dato_Nombre" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="HM_Cliente">
                <asp:Label ID="Label4" runat="server" Text="Label">Cliente:</asp:Label>
                <asp:Label ID="HM_Dato_Cliente" runat="server" Text=""></asp:Label>
            </div>
            <div class="HM_Telefono" >
                <asp:Label ID="Label5" runat="server" Text="Label">Telefono:</asp:Label>
                <asp:Label ID="HM_Dato_Telefono" runat="server" Text=""></asp:Label>
            </div>
            <div class="HM_TipoMascota" >
                <asp:Label ID="Label6" runat="server" Text="Label">Tipo Mascota:</asp:Label>
                <asp:Label ID="HM_Dato_TipoMascota" runat="server" Text=""></asp:Label>
            </div>
            <div class="HM_Peso" >
                <asp:Label ID="Label7" runat="server" Text="Label">Peso:</asp:Label>
                <asp:Label ID="HM_Dato_Peso" runat="server" Text=""></asp:Label>
            </div>
            <div class="HM_Edad" >
                <asp:Label ID="Label8" runat="server" Text="Label">Edad:</asp:Label>
                <asp:Label ID="HM_Dato_Edad" runat="server" Text=""></asp:Label>
            </div>
            <div class="HM_Raza" >
                <asp:Label ID="Label9" runat="server" Text="Label">Raza:</asp:Label>
                <asp:Label ID="HM_Dato_Raza" runat="server" Text=""></asp:Label>
            </div>
            
            <div class="HM_Fecha_Inicio">
                <asp:Label ID="Label10" runat="server" Text="Label">Fecha de Inicio</asp:Label>
                <asp:TextBox ID="txtFechaInicio" runat="server"
                        CssClass="form-control"
                        TextMode="Date"></asp:TextBox>
            </div>
            <div class="HM_Fecha_Final">
                <asp:Label ID="Label11" runat="server" Text="Label">Fecha Final</asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"
                        CssClass="form-control"
                        TextMode="Date"></asp:TextBox>
            </div>

        </div>
        <!--Botones--->
        <div>

                <div class="col-md-4 d-grid">
                    <asp:Button ID="btnConsultar"
                        runat="server"
                        Text="Consultar"
                        CssClass="btn btn-primary"/>
                </div>

                <div class="col-md-4 d-grid">
                    <asp:Button ID="btnLimpiar"
                        runat="server"
                        Text="Limpiar"
                        CssClass="btn btn-secondary"/>
                </div>

                <div class="col-md-4 d-grid">
                    <asp:Button ID="btnFiltrar"
                        runat="server"
                        Text="Filtrar por Fechas"
                        CssClass="btn btn-success"/>
                </div>
        </div>
        
        <!---Tabla de datos-->
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"> 
                    <asp:Button ID="bntListarM" runat="server" Text="Listar Mascota" />
                </td>
                <td class="auto-style3"></td>
                <td>

                    <asp:Label ID="lblMensaje" runat="server" CssClass="labelErrores"></asp:Label>

                </td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
        </table>
       
        <asp:GridView ID="grvHistorialMascotas" runat="server"></asp:GridView>
    </div>
</asp:Content>
