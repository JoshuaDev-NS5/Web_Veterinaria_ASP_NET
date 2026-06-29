<%@ Page Title="" Language="C#" MasterPageFile="~/Veterinaria.Master" AutoEventWireup="true" CodeBehind="Historial_de_Mascota.aspx.cs" Inherits="Veterinaria.Consultas.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cabecera" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contenido_De_consulta" runat="server">
    <div class="hm-page">
        <!-- Encabezado -->
        <div class="hm-page-header">
            <div class="hm-icon-header">
                <i class="fa-solid fa-clock-rotate-left"></i>
            </div>
            <div>
                <h2>Historial de Mascotas</h2>
                <p>Consulta el historial de citas y atenciones de cada mascota</p>
            </div>
        </div>

        <!-- Barra de búsqueda + filtros -->
        <div class="hm-search-bar">

            <div class="hm-field">
                <label for="ID_Mascota"><i class="fa-solid fa-magnifying-glass"></i> ID Mascota</label>
                <input type="text" id="ID_Mascota" placeholder="Ej: MAS001" />
            </div>

            <div class="hm-separator"></div>

            <div class="hm-field">
                <label>
                    <i class="fa-solid fa-calendar-day"></i> Fecha Inicio
                </label>
                <asp:TextBox ID="txtFechaInicio" runat="server" CssClass="form-control" TextMode="Date" />
            </div>

            <div class="hm-field">
                <label>
                    <i class="fa-solid fa-calendar-check"></i> Fecha Final
                </label>
                <asp:TextBox ID="txtFechaFinal" runat="server" CssClass="form-control" TextMode="Date" />
            </div>

            <div class="hm-btn-actions">

                <asp:Button ID="btnConsultar" runat="server" Text="Consultar" CssClass="hm-btn-consultar"/>
                <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar por Fechas" CssClass="hm-btn-filtrar" />
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" CssClass="hm-btn-limpiar"/>
            </div>
        </div>


        <!-- Layout principal -->
        <div class="hm-main-layout">

            <!-- ── Ficha de la mascota ── -->
            <div class="hm-ficha">
                <div class="hm-ficha-header">
                    <div class="hm-ficha-avatar">
                        <i class="fa-solid fa-paw"></i>
                    </div>
                    <div class="hm-ficha-nombre">
                        <asp:Label ID="HM_Dato_Nombre" runat="server" Text="—" />
                    </div>
                    <div class="hm-ficha-id">ID: <asp:Label ID="lblIdMascota" runat="server" Text="—" /></div>
                </div>

                <div class="hm-ficha-body">

                    <div class="hm-dato-row">
                        <span class="hm-dato-label">Cliente</span>
                        <span class="hm-dato-valor">
                            <asp:Label ID="HM_Dato_Cliente" runat="server" Text="—" />
                        </span>
                    </div>

                    <div class="hm-dato-row">
                        <span class="hm-dato-label">Teléfono</span>
                        <span class="hm-dato-valor">
                            <asp:Label ID="HM_Dato_Telefono" runat="server" Text="—" />
                        </span>
                    </div>

                    <div class="hm-dato-row">
                        <span class="hm-dato-label">Tipo</span>
                        <span class="hm-dato-valor">
                            <span class="hm-badge-tipo">
                                <asp:Label ID="HM_Dato_TipoMascota" runat="server" Text="—" />
                            </span>
                        </span>
                    </div>

                    <div class="hm-dato-row">
                        <span class="hm-dato-label">Raza</span>
                        <span class="hm-dato-valor">
                            <asp:Label ID="HM_Dato_Raza" runat="server" Text="—" />
                        </span>
                    </div>

                    <div class="hm-dato-row">
                        <span class="hm-dato-label">Edad</span>
                        <span class="hm-dato-valor">
                            <asp:Label ID="HM_Dato_Edad" runat="server" Text="—" />
                        </span>
                    </div>

                    <div class="hm-dato-row">
                        <span class="hm-dato-label">Peso</span>
                        <span class="hm-dato-valor">
                            <asp:Label ID="HM_Dato_Peso" runat="server" Text="—" />
                        </span>
                    </div>

                </div>
            </div>


            <!-- ── Tabla de citas ── -->
            <div class="hm-tabla-section">
                <div class="hm-tabla-card">

                    <div class="hm-tabla-card-header">
                        <h3><i class="fa-solid fa-table-list"></i> Citas y Atenciones</h3>
                        <asp:Label ID="lblMensaje" runat="server" CssClass="labelErrores" />
                    </div>

                    <!-- GridView con clase personalizada -->
                    <asp:GridView ID="grvHistorialMascotas" runat="server" CssClass="hm-gridview" AutoGenerateColumns="True" GridLines="None" EmptyDataText="" Width="100%">
                        <HeaderStyle CssClass="hm-gridview-header" />
                        <RowStyle CssClass="hm-gridview-row" />
                        <AlternatingRowStyle CssClass="hm-gridview-alt" />
                        <EmptyDataTemplate>
                            <div class="hm-tabla-empty">
                                <div class="hm-tabla-empty-icon">
                                    <i class="fa-solid fa-folder-open"></i>
                                </div>
                                <strong>Sin resultados</strong>
                                <p>Ingresa un ID de mascota y presiona <b>Consultar</b> para ver su historial.</p>
                            </div>
                        </EmptyDataTemplate>
                    </asp:GridView>

                </div>
            </div>
        </div>
    </div>
</asp:Content>