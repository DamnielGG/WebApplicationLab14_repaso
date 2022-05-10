<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationLab14_repaso._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more</a></p>
        <p>&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <p>Codigo de producto:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxCodProducto" runat="server"></asp:TextBox>
            </p>
            <p>Nombre del producto:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxNameProduc" runat="server"></asp:TextBox>
            </p>
            <p>Descripción del producto:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxDescProduc" runat="server"></asp:TextBox>
            </p>
            <p>Precio de compra:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxPrecioCompra" runat="server"></asp:TextBox>
            </p>
            <p>Precio de venta:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxPrecioVenta" runat="server"></asp:TextBox>
            </p>
            <p>Editorial:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxEditorial" runat="server"></asp:TextBox>
            </p>
            <p>Categoria:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxCategoria" runat="server"></asp:TextBox>
            </p>
            <p>Autor:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxAutor" runat="server"></asp:TextBox>
            </p>
            <p>&nbsp;</p>
            <p>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </p>
            <p>
                <asp:Button ID="ButtonIngreso" runat="server" Height="56px" OnClick="ButtonIngreso_Click" Text="Ingreso de datos" Width="133px" />
                <asp:Button ID="ButtonIngresoLibros" runat="server" Height="56px" OnClick="ButtonIngresoLibros_Click" Text="Ingreso de libros" Width="135px" />
            </p>
        </div>
    </div>

</asp:Content>
