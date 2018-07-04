<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="franceWeb.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register page</title>
    <link rel="stylesheet" type="text/css" href="Style/RegistrationStyle.css"/>  
</head>
<body>
    <div class="registration-box">
    <img src="img/avatar.png" class="avatar"/>
        <h1>Register Here</h1>
            <form runat="server">
            <p>First name</p>
            <asp:TextBox runat="server" id="tbFname" name="FirstName" placeholder="First name"></asp:TextBox>
            <p>Last name</p>
            <asp:TextBox runat="server" id="tbLname" name="LastName" placeholder="Last name"></asp:TextBox>
            <p>E-mail</p>
            <asp:TextBox runat="server" id="tbEmail" name="username" placeholder="e-mail"></asp:TextBox>
            <p>Password</p>
            <asp:TextBox runat="server" id="tbPassword" name="password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:button runat="server" type="submit" name="submit" ID="submit" Text="Register" OnClick="RegistrationSubmit_Click"/> 
            </form>
    </div>  
</body>
</html>