<%@ Page Title="Calculadora Iva" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


  <div>
  <br>
  <form class="form"><br>
       <script type="text/javascript" language="javascript">
    function numeric(evt)
    {
   var charCode = (evt.which) ? evt.which : event.keyCode
   if(charCode > 31 && ((charCode >= 48 && charCode <= 57) || charCode == 46))
   return true;
   else
   {
    alert('El campo Valor del producto es Numerico.');
    return false;
   }
}
       </script>
 
    <p>Ingrese el nombre del producto</p>
      <asp:TextBox ID="NP" runat="server" OnTextChanged="TextBox1_TextChanged" ValidationGroup="Iva"></asp:TextBox>

      <asp:RequiredFieldValidator ID="reqName" ControlToValidate="NP" ValidationGroup="Iva"
 runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
      <br>
      <p>Ingrese el valor del producto</p>
      <asp:TextBox ID="VP" runat="server" ValidationGroup="Iva" onkeypress="return numeric(event)"></asp:TextBox>

      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="VP" ValidationGroup="Iva" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
      <br>
      <br>
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calcular" ValidationGroup="Iva"/>
   
      <br>
      <br><p>El valor del Iva es: </p>
      <asp:TextBox ID="IVA" runat="server"></asp:TextBox>
      <br>
      <p>El valor total del producto es:</p>
      <asp:TextBox ID="TP" runat="server"></asp:TextBox>
  </form>
</div>


</asp:Content>
