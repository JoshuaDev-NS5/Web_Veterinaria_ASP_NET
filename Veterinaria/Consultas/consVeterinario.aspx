<%@ Page Title="Consulta Veterinarios" Language="C#" MasterPageFile="~/Veterinaria.Master" AutoEventWireup="true" CodeFile="consVeterinario.aspx.cs" Inherits="Veterinaria.ConsVeterinario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Veterinarios
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Cabecera" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Contenido_De_consulta" runat="server">

    <link href="../CSS/DemoCSS.css" rel="stylesheet" />
    <link href="../CSS/consVeterinaria.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" />

    <div class="cons-wrapper">

        <div class="cons-header">
            <h1><i class="fas fa-stethoscope"></i> CONSULTA DE VETERINARIOS</h1>
            <p>Busca y filtra veterinarios por especialidad y estado</p>
        </div>

        <div class="stats-cards">
            <div class="stat-card">
                <div class="stat-icon"><i class="fas fa-stethoscope"></i></div>
                <div>
                    <div class="stat-num"><asp:Label ID="lblTotal" runat="server" Text="0"></asp:Label></div>
                    <div class="stat-label">Veterinarios registrados</div>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon"><i class="fas fa-check-circle"></i></div>
                <div>
                    <div class="stat-num"><asp:Label ID="lblActivos" runat="server" Text="0"></asp:Label></div>
                    <div class="stat-label">Veterinarios activos</div>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon"><i class="fas fa-award"></i></div>
                <div>
                    <div class="stat-num"><asp:Label ID="lblEspecialidades" runat="server" Text="0"></asp:Label></div>
                    <div class="stat-label">Especialidades</div>
                </div>
            </div>
        </div>

        <div class="filtros-box">
            <label>Especialidad:</label>
            <asp:DropDownList ID="ddlEspecialidad" runat="server">
                <asp:ListItem Value="">Todos</asp:ListItem>
                <asp:ListItem Value="Cirugía">Cirugía</asp:ListItem>
                <asp:ListItem Value="Dermatología">Dermatología</asp:ListItem>
                <asp:ListItem Value="Cardiología">Cardiología</asp:ListItem>
                <asp:ListItem Value="Nutrición">Nutrición</asp:ListItem>
                <asp:ListItem Value="Oftalmología">Oftalmología</asp:ListItem>
            </asp:DropDownList>

            <label>Estado:</label>
            <asp:DropDownList ID="ddlEstado" runat="server">
                <asp:ListItem Value="">Todos</asp:ListItem>
                <asp:ListItem Value="Activo">Activo</asp:ListItem>
                <asp:ListItem Value="Inactivo">Inactivo</asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="btnConsultar" runat="server" Text="Consultar"
                CssClass="btn-consultar" OnClick="btnConsultar_Click" />
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar"
                CssClass="btn-limpiar" OnClick="btnLimpiar_Click" />
        </div>

        <div class="tabla-box">
            <div class="tabla-titulo">
                Resultado de la consulta —
                <asp:Label ID="lblConteo" runat="server" Text="0"></asp:Label> registros
            </div>

            <asp:GridView ID="gvVeterinarios" runat="server"
                CssClass="tabla-vet"
                AutoGenerateColumns="false"
                GridLines="None"
                OnRowDataBound="gvVeterinarios_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="ID_vet"             HeaderText="ID"           />
                    <asp:BoundField DataField="nomVeterinario"      HeaderText="Nombre"       />
                    <asp:BoundField DataField="apellidoVeterinario" HeaderText="Apellido"     />
                    <asp:BoundField DataField="especialidad"        HeaderText="Especialidad" />
                    <asp:BoundField DataField="telefonoVeterinario" HeaderText="Teléfono"    />
                    <asp:BoundField DataField="email"               HeaderText="Email"        />
                    <asp:TemplateField HeaderText="Estado">
                        <ItemTemplate>
                            <asp:Label ID="lblEstado" runat="server"
                                Text='<%# Eval("Estado_Veterinario") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div class="empty-msg">No se encontraron veterinarios.</div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>

    </div>

</asp:Content>
