<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [Global.asax](./CS/Global.asax) (VB: [Global.asax](./VB/Global.asax))
* [Site.master.cs](./CS/Site.master.cs) (VB: [Site.master.vb](./VB/Site.master.vb))
<!-- default file list end -->
# BootstrapGridView - Batch Edit mode - How to edit CheckBox column in a single click


<p>At the moment, BootstrapGridView displays cells in CheckBox columns as images which makes it impossible to edit these cells in a single click. First, you have to click the cell to enter the edit mode and the second click actually changes the value. It is not very convenient, so we created a workaround that allows editing such columns in a single click.<br><br>For this, define a data item template for the CheckBox column and place an actual check box there. Synchronize this check box with the item collection - obtain the value using the Eval (or Bind) method and set a new value with <a href="https://documentation.devexpress.com/AspNet/DevExpressWebScriptsASPxClientGridViewBatchEditApi_SetCellValuetopic.aspx">SetCellValue</a>.</p>

<br/>


