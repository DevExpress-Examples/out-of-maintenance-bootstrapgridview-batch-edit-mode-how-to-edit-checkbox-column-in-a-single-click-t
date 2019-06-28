<%@ Page Language="vb" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <dx:BootstrapGridView runat="server" ID="GridView1" ClientInstanceName="GridView1" OnRowUpdating="GridView1_RowUpdating" OnRowInserting="GridView1_RowInserting" OnRowDeleting="GridView1_RowDeleting"
    KeyFieldName="ProductID" DataSourceID="AccessDataSource1">
    <SettingsEditing Mode="Batch">
        <BatchEditSettings AlwaysShowCheckboxesInCheckColumns="true"  StartEditAction="Click" />
    </SettingsEditing>
    <SettingsDataSecurity AllowEdit="True" />
    <Columns>
        <dx:BootstrapGridViewDataColumn FieldName="ProductName" HorizontalAlign="Left"/>
        <dx:BootstrapGridViewDataColumn FieldName="Discontinued" Width="75"/>
    </Columns>
</dx:BootstrapGridView>

<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
    SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [Discontinued] FROM [Products]"
    InsertCommand="INSERT INTO [Products] ([ProductName], [UnitPrice], [Discontinued]) VALUES (?, ?, ?)"
    UpdateCommand="UPDATE [Products] SET [ProductName] = ?, [UnitPrice] = ?, [Discontinued] = ? WHERE [ProductID] = ?"
    DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = ?">
    <DeleteParameters>
        <asp:Parameter Name="ProductID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="UnitPrice" Type="Decimal" />
        <asp:Parameter Name="Discontinued" Type="Boolean" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="UnitPrice" Type="Decimal" />
        <asp:Parameter Name="Discontinued" Type="Boolean" />
        <asp:Parameter Name="ProductID" Type="Int32" />
    </UpdateParameters>
</asp:AccessDataSource>
</asp:Content>