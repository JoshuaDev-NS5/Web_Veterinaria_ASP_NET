<%@ Page Title="Inicio INUPETS" Language="C#" MasterPageFile="~/Veterinaria.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Veterinaria.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Inicio INUPETS
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Cabecera" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Contenido_De_consulta" runat="server">

    <section class="hero-section" style="background-image: url('imagenes/Img1.png'); background-size: cover; background-position: center 30%;">
        <div class="hero-content">
            <h1>Todo lo que tu mascota necesita, en un solo lugar</h1>
            <p>Atencion veterinaria de calidad disponible para el cuidado integral de tus animales. Profesionales especializados listos para ayudarte.</p>
            <a href="ConsVeterinario.aspx" class="hero-btn">
                <i class="fa-solid fa-stethoscope"></i> Ver nuestros veterinarios
            </a>
        </div>
    </section>

    <section class="servicios-section">
        <h2>Nuestros Servicios</h2>
        <p class="subtitulo">Contamos con especialistas en diversas areas para el cuidado de tu mascota</p>
        <div class="cards-servicios">
            <div class="card-servicio">
                <div class="icono"><i class="fa-solid fa-stethoscope"></i></div>
                <h3>Medicina General</h3>
                <p>Consultas, diagnosticos y tratamientos para todo tipo de mascotas.</p>
            </div>
            <div class="card-servicio">
                <div class="icono"><i class="fa-solid fa-scissors"></i></div>
                <h3>Cirugia</h3>
                <p>Procedimientos quirurgicos con equipos modernos y especialistas certificados.</p>
            </div>
            <div class="card-servicio">
                <div class="icono"><i class="fa-solid fa-tooth"></i></div>
                <h3>Odontologia</h3>
                <p>Limpieza dental, extracciones y cuidado bucal para tu mascota.</p>
            </div>
            <div class="card-servicio">
                <div class="icono"><i class="fa-solid fa-eye"></i></div>
                <h3>Oftalmologia</h3>
                <p>Diagnostico y tratamiento de enfermedades oculares en animales.</p>
            </div>
            <div class="card-servicio">
                <div class="icono"><i class="fa-solid fa-syringe"></i></div>
                <h3>Vacunacion</h3>
                <p>Calendario completo de vacunas para mantener a tu mascota protegida.</p>
            </div>
            <div class="card-servicio">
                <div class="icono"><i class="fa-solid fa-bone"></i></div>
                <h3>Traumatologia</h3>
                <p>Atencion de fracturas, lesiones y problemas musculoesqueleticos.</p>
            </div>
        </div>
    </section>

    <section class="stats-section">
        <div class="stat-item">
            <div class="numero">+21</div>
            <div class="etiqueta">Veterinarios especializados</div>
        </div>
        <div class="stat-item">
            <div class="numero">+500</div>
            <div class="etiqueta">Mascotas atendidas</div>
        </div>
        <div class="stat-item">
            <div class="numero">+10</div>
            <div class="etiqueta">Especialidades</div>
        </div>
        <div class="stat-item">
            <div class="numero">24/7</div>
            <div class="etiqueta">Atencion disponible</div>
        </div>
    </section>

</asp:Content>