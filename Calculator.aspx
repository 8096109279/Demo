<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="Demo_2.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
</head>
<body>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("[id*=ItemQty]").val("0");
        });
        $("body").on("change keyup", "[id*=ItemQty]", function () {
            var qty = parsefloat($.trim($(this).val()));
            if (isNaN(qty)) {
                qty = 0;
            }
            $(this).val(qty);
            var row = $(this).closest("tr");
            $("[id*=ItemAmount]", row).html(parseFloat($(".ItemPrice", row).html()) * parseFloat($(this).val()));


            var billedTotal = 0;
            $("[id*=ItemTotal]").each(function () {
                billedTotal = billedTotal + parseFloat($(this).html());
            });
            $("[id*=Label1]").html(billedTotal.toString());
        });
    </script>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:BoundField DataField="ItemPrice" HeaderText="Product Name" />
                    <asp:BoundField DataField="ItemPrice" HeaderText="Product Price" ItemStyle-HorizontalAlign="Right" ItemStyle-CssClass="ItemPrice" />
                   <asp:TemplateField HeaderText="Qty">
                       <ItemTemplate>
                           <asp:TextBox ID="ItemQty" runat="server" Style="text-align:right" Width="50px" Text="0"></asp:TextBox>
                       </ItemTemplate>
                   </asp:TemplateField>
                    <asp:TemplateField HeaderText="Amount">
                       <ItemTemplate>
                           <asp:Label ID="ItemAmount" runat="server" Style="text-align:right" Width="50px" Text="0"></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField> 
                    
                    
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <br />
            <br />
              <asp:Label ID="ItemTotal" runat="server" Text="Grand Total :  " Style="font-weight:bold"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text="0" Style="font-weight:bold;background-color:yellow"></asp:Label>
        </div>
    </form>
</body>
</html>
