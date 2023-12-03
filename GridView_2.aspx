<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView_2.aspx.cs" Inherits="Demo_2.GridView_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div>
             <table>
                <tr style="background-color:cornflowerblue">
                    <td>Register Employee</td>
                </tr>
                 <tr>
                     <td>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" ForeColor="Red" Text="*"></asp:Label>
&nbsp;&nbsp; Fields are Mandatory.<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Employee Name"></asp:Label>&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="*" ForeColor="Red"></asp:Label>
       
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Employee Name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
            
            
            <br />
            <br />
             <asp:Label ID="Label2" runat="server" Text="Designation"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="177px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>CEO</asp:ListItem>
                <asp:ListItem>Project Manager</asp:ListItem>
                <asp:ListItem>Team Lead</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Salary"></asp:Label>&nbsp;
            <asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red"></asp:Label>
       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Salary" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>&nbsp;
            <asp:Label ID="Label10" runat="server" Text="*" ForeColor="Red"></asp:Label>
       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Mobile"></asp:Label>&nbsp;<asp:Label ID="Label11" runat="server" Text="*" ForeColor="Red"></asp:Label>
       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Mobile Number" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Valid Mobile Number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Qualification"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" Height="18px" Width="177px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>MBA</asp:ListItem>
                <asp:ListItem>M.Tech</asp:ListItem>
                <asp:ListItem>B.Tech</asp:ListItem>
            </asp:DropDownList>
             <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Manager"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="Blue" OnClick="Button1_Click" Text="Insert" />

                         &nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />

                         </td>
                     </tr>
                
            
           
                <tr style="background-color:cornflowerblue">
                    <td>Register Employee</td>
                </tr>
                 <tr>
                     <td>             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" AutoGenerateSelectButton="True" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                <Columns>
                    <asp:TemplateField HeaderText="Employee Name" HeaderStyle-BackColor="SteelBlue" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("empname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("empname") %>'></asp:Label>
                        </ItemTemplate>

<HeaderStyle BackColor="SteelBlue" ForeColor="White"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Designation" HeaderStyle-BackColor="SteelBlue" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("designation") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("designation") %>'></asp:Label>
                        </ItemTemplate>

<HeaderStyle BackColor="SteelBlue" ForeColor="White"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Salary" HeaderStyle-BackColor="SteelBlue" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("salary") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("salary") %>'></asp:Label>
                        </ItemTemplate>

<HeaderStyle BackColor="SteelBlue" ForeColor="White"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" HeaderStyle-BackColor="SteelBlue" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                        </ItemTemplate>

<HeaderStyle BackColor="SteelBlue" ForeColor="White"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile" HeaderStyle-BackColor="SteelBlue" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("mobile") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("mobile") %>'></asp:Label>
                        </ItemTemplate>

<HeaderStyle BackColor="SteelBlue" ForeColor="White"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Qualification" HeaderStyle-BackColor="SteelBlue" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("qualification") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("qualification") %>'></asp:Label>
                        </ItemTemplate>

<HeaderStyle BackColor="SteelBlue" ForeColor="White"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Manager" HeaderStyle-BackColor="SteelBlue" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("manager") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("manager") %>'></asp:Label>
                        </ItemTemplate>

<HeaderStyle BackColor="SteelBlue" ForeColor="White"></HeaderStyle>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView >
                         </td>
   
                     </tr>
                </table>

 </div>
    </form>
</body>
</html>
