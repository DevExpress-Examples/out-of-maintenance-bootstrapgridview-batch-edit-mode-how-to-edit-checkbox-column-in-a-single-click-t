<%@ Page Language="vb" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <script>
        function initCheckboxes(s, e) {
            var checkboxes = s.GetMainElement().querySelectorAll("[data-toggle=display-cb]");
            for (var i = 0, cb; cb = checkboxes[i]; i++) {
                onCheckboxClick(s, cb);
            }
        }
        function onCheckboxClick(grid, cb) {
            cb.addEventListener("change", function(e) {
                var rowIndex = parseInt(cb.getAttribute("data-ri"));
                var colIndex = parseInt(cb.getAttribute("data-ci"));
                grid.batchEditApi.SetCellValue(rowIndex, colIndex, !!cb.checked);
            });
        }
        function onBatchEditStartEditing(s, e) {
            if (e.focusedColumn.fieldName == 'Discontinued') e.cancel = true;
        }
</script>
    <dx:BootstrapGridView runat="server" ID="GridView1" ClientInstanceName="GridView1" OnRowUpdating="GridView1_RowUpdating" OnRowInserting="GridView1_RowInserting" OnRowDeleting="GridView1_RowDeleting"
        KeyFieldName="ProductID" DataSourceID="AccessDataSource1">
        <ClientSideEvents Init="initCheckboxes" BatchEditStartEditing="onBatchEditStartEditing" EndCallback="initCheckboxes" />
        <SettingsEditing Mode="Batch" BatchEditSettings-StartEditAction="Click"></SettingsEditing>
        <SettingsDataSecurity AllowEdit="True" />
        <Columns>
            <dx:BootstrapGridViewDataColumn FieldName="ProductName" HorizontalAlign="Left"></dx:BootstrapGridViewDataColumn>
            <dx:BootstrapGridViewDataColumn FieldName="Discontinued" Width="75">
                <DataItemTemplate>
                    <input type="checkbox" <%#If(Container.VisibleIndex> -1 AndAlso DirectCast(Eval("Discontinued"), Boolean), "checked", "")%> data-toggle="display-cb" data-ri="<%#Container.VisibleIndex%>" data-ci="<%#Container.Column.VisibleIndex%>" />
                </DataItemTemplate>
            </dx:BootstrapGridViewDataColumn>
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