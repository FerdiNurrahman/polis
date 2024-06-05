<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="Header.ascx.vb"
Inherits="polis.Header" %>

<%--Navbar & Hero Start--%>
<div class="container-fluid position-relative p-0">
    <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
        <a href="BerandaPub.aspx" class="navbar-brand p-0">
            <h1 class="m-0">POLIS</h1>
            <%--<img src="img/logo.png" alt="Logo">--%>
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="fa-solid fa-bars"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
                <a href="BerandaPub.aspx" class="nav-item nav-link active">Beranda</a>
                <a href="KoleksiPub.aspx" class="nav-item nav-link">Koleksi</a>
                <a href="" class="nav-item nav-link">Layanan</a>
                <a href="" class="nav-item nav-link">Profil</a>
                <a href="" class="nav-item nav-link">Kontak Kami</a>
            </div>

            <a href="" class="btn btn-primary rounded-pill py-2 px-4 ms-lg-4">Login</a>
        </div>
    </nav>
</div>
<%--Navbar & Hero End--%>
