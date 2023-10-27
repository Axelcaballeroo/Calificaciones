<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CargaAlumnos.aspx.cs" Inherits="Calificaciones.CargaAlumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h5>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">VOLVER AL MENU</asp:HyperLink>
            </h5>
            <h2>CARGAR ALUMNO</h2>
            <br />
            <strong><span class="auto-style1">NOMBRE</span></strong><br />
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="196px"></asp:TextBox>
            <br />
            <br />
            <strong><span class="auto-style1">APELLIDO</span></strong><br />
            <asp:TextBox ID="TextBox2" runat="server" Width="198px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" OnClick="Button1_Click" Text="Agregar Alumno" Width="205px" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="751px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="apellido" HeaderText="APELLIDO" SortExpression="apellido" />
                    <asp:BoundField DataField="nombre" HeaderText="NOMBRE" SortExpression="nombre" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True">
                    <ControlStyle Font-Bold="True" ForeColor="#FF6666" />
                    </asp:CommandField>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" DeleteCommand="DELETE FROM [Estudiantes] WHERE [id] = @id" InsertCommand="INSERT INTO [Estudiantes] ([apellido], [nombre]) VALUES (@apellido, @nombre)" SelectCommand="SELECT * FROM [Estudiantes]" UpdateCommand="UPDATE [Estudiantes] SET [apellido] = @apellido, [nombre] = @nombre WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="apellido" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="nombre" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
