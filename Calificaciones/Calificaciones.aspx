<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calificaciones.aspx.cs" Inherits="Calificaciones.Calificaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .nuevoEstilo1 {
            font-family: "Arial Black";
            font-size: large;
        }
        .nuevoEstilo2 {
            font-family: "arial black";
        }
        .nuevoEstilo3 {
            font-family: "Arial Black";
        }
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            font-size: large;
            color: #33CC33;
        }
        .auto-style4 {
            font-size: large;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h5>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">VOLVER AL MENU</asp:HyperLink>
            </h5>
            <h2>CARGAR CALIFICACION</h2>
            <br />
            <span class="nuevoEstilo1"><strong>ALUMNO</strong></span>&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="apellido" DataValueField="id" Height="20px" Width="182px">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <span class="nuevoEstilo1">MATERIA</span>&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="nombre" DataValueField="id" Height="23px" Width="182px">
            </asp:DropDownList>
            <br />
            <br />
            <span class="nuevoEstilo3">CALIFICACION</span>&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <strong><span class="auto-style2">CONDICION: (SE APROBARA LA MATERIA CON NOTA DE 6 O MÁS)</span></strong><br />
            <span class="auto-style3"><strong>COLOR VERDE: ALUMNO APROBADO</strong></span><br />
            <span class="auto-style4"><strong>COLOR ROJO: ALUMNO DESAPROBADO</strong></span><br />
            <br />
            <asp:Button ID="Button1" runat="server" BorderColor="Red" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click" Text="CARGAR CALIFICACION" Width="296px" />
            <br />
            <br />
            <span class="auto-style1">***********************************************************************************</span><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="968px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="idEstudiante" HeaderText="ID ESTUDIANTE" SortExpression="idEstudiante" />
                    <asp:BoundField DataField="apellido" HeaderText="APELLIDO" SortExpression="apellido" />
                    <asp:BoundField DataField="nombre" HeaderText="NOMBRE" SortExpression="nombre" />
                    <asp:BoundField DataField="Expr1" HeaderText="MATERIA" SortExpression="Expr1" />
                    <asp:BoundField DataField="nota" HeaderText="NOTA" SortExpression="nota" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" DeleteCommand="DELETE FROM Estudiantes FROM Estudiantes INNER JOIN Calificaciones ON Estudiantes.id = Calificaciones.idEstudiante INNER JOIN Materias ON Calificaciones.idMateria = Materias.id WHERE (Estudiantes.id = @id)" InsertCommand="INSERT INTO [Estudiantes] ([apellido], [nombre]) VALUES (@apellido, @nombre)" SelectCommand="SELECT Materias.nombre AS Expr1, Calificaciones.nota, Calificaciones.idEstudiante, Estudiantes.apellido, Estudiantes.nombre FROM Materias INNER JOIN Calificaciones ON Materias.id = Calificaciones.idMateria INNER JOIN Estudiantes ON Calificaciones.idEstudiante = Estudiantes.id" UpdateCommand="UPDATE [Estudiantes] SET [apellido] = @apellido, [nombre] = @nombre WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" DeleteCommand="DELETE FROM [Estudiantes] WHERE [id] = @id" InsertCommand="INSERT INTO [Estudiantes] ([apellido], [nombre]) VALUES (@apellido, @nombre)" SelectCommand="SELECT * FROM [Estudiantes]" UpdateCommand="UPDATE [Estudiantes] SET [apellido] = @apellido, [nombre] = @nombre WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" DeleteCommand="DELETE FROM [Materias] WHERE [id] = @id" InsertCommand="INSERT INTO [Materias] ([nombre]) VALUES (@nombre)" SelectCommand="SELECT * FROM [Materias]" UpdateCommand="UPDATE [Materias] SET [nombre] = @nombre WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" DeleteCommand="DELETE FROM Calificaciones FROM Calificaciones INNER JOIN Estudiantes ON Calificaciones.idEstudiante = Estudiantes.id INNER JOIN Materias ON Calificaciones.idMateria = Materias.id WHERE (Calificaciones.id = @id)" InsertCommand="INSERT INTO [Calificaciones] ([idEstudiante], [idMateria], [nota]) VALUES (@idEstudiante, @idMateria, @nota)" SelectCommand="SELECT * FROM [Calificaciones]" UpdateCommand="UPDATE [Calificaciones] SET [idEstudiante] = @idEstudiante, [idMateria] = @idMateria, [nota] = @nota WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="idEstudiante" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="idMateria" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox1" Name="nota" PropertyName="Text" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="idEstudiante" Type="Int32" />
                    <asp:Parameter Name="idMateria" Type="Int32" />
                    <asp:Parameter Name="nota" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
