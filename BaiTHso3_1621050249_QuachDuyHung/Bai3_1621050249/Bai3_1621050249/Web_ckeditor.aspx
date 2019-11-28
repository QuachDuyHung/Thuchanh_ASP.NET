<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web_ckeditor.aspx.cs" Inherits="Bai3_1621050249.Web_ckeditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CKEditor</title>    
    <script src="//cdn.ckeditor.com/4.11.3/standard/ckeditor.js"></script>
    <script type="text/javascript" src="~/ckfinder/ckfinder.js"></script>
    <style type="text/css">
        #editor {
            width: 420px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="address-email">
                Địa chỉ Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Width="242px"></asp:TextBox>
            </div>
            <br />
            <div class="content-email">
                Nội dung Email:&nbsp;&nbsp;&nbsp;
                <textarea rows="4" id="editor"></textarea>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Gửi Email" BackColor="#00CC00" BorderStyle="None" Font-Size="13pt" Height="42px" />
        </div>
    </form>
</body>
</html>
<script>        
    var editor = CKEDITOR.replace("editor");
    CKFinder.setupCKEditor(editor);
</script>
