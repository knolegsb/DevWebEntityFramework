<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormTaskListsDelete.aspx.cs" Inherits="DevWebEntityFramework.FormTaskListsDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="ctlTaskLists" runat="server"></asp:GridView>
        Number : <asp:TextBox ID="txtListId" runat="server"></asp:TextBox><br />
        Task : <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
        Priority : <asp:DropDownList ID="listPriority" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                   </asp:DropDownList>
        <br />
        Completed : <asp:CheckBox ID="checkIsCompleted" runat="server" /><br />
        <asp:Button ID="btnDelete" runat="server" Text="Task Delete" OnClick="btnDelete_Click"/><br />
        <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
    </div>
    </form>
</body>
</html>
