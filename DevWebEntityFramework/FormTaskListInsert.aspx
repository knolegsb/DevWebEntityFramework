<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormTaskListInsert.aspx.cs" Inherits="DevWebEntityFramework.FormTaskListInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Task : <asp:TextBox ID="txtName" runat="server" />
        <br />
    Priority :  <asp:DropDownList ID="ListPriority" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
        
        <asp:Button ID="BtnAdd" runat="server" Text="Task Input" OnClick="BtnAdd_Click" />
    </div>
    </form>
</body>
</html>
