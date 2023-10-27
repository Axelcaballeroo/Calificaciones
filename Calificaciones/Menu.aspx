<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Calificaciones.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>INSTITUTO SECUNDARIO CARLOS PELLEGRINI</h1>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CargaAlumnos.aspx">CARGA DE ALUMNOS</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Calificaciones.aspx">CALIFICACIONES</asp:HyperLink>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
