<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="franceWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>
    <link rel="stylesheet" type="text/css" href="Style/LoginStyle.css"/>  
</head>
<body>
    <div class="login-box">
    <img src="img/avatar.png" class="avatar"/>
        <h1>Login Here</h1>
            <form runat="server">
            <p>Username</p>
            <asp:TextBox runat="server" name="username" placeholder="Enter Username"></asp:TextBox>
            <p>Password</p>
            <asp:TextBox  runat="server" name="password" placeholder="Enter Password"></asp:TextBox>
            <asp:button runat="server" type="submit" name="submit" ID="submit" Text="Login" OnClick="Submit_Click"/>
            <a href="#">Forget Password</a>    
            </form>
        </div>  
</body>
</html>
