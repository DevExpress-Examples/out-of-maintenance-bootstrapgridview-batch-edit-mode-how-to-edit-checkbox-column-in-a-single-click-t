<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128548983/17.1.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T520290)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [Global.asax](./CS/Global.asax) (VB: [Global.asax](./VB/Global.asax))
* [Site.master.cs](./CS/Site.master.cs) (VB: [Site.master.vb](./VB/Site.master.vb))
<!-- default file list end -->
# [OBSOLETE] BootstrapGridView - Batch Edit mode - How to edit CheckBox column in a single click
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t520290/)**
<!-- run online end -->


**Starting with v17.1.4 and v17.2.3**, the BootstrapGridView control supports this functionality out of the box. To get the desired behavior, enable the AlwaysShowCheckboxesInCheckColumns property:

```
  <SettingsEditing>
            <BatchEditSettings AlwaysShowCheckboxesInCheckColumns="true" />
  </SettingsEditing>
```
 **The approach demonstrated in this example is OBSOLETE. It should be used with old versions only.**


In old versions, BootstrapGridView displayed cells in CheckBox columns as images which makes it impossible to edit these cells in a single click. First, you have to click the cell to enter the edit mode and the second click actually changes the value. It is not very convenient, so we created a workaround that allows editing such columns in a single click.


<p>At the moment, BootstrapGridView displays cells in CheckBox columns as images which makes it impossible to edit these cells in a single click. First, you have to click the cell to enter the edit mode and the second click actually changes the value. It is not very convenient, so we created a workaround that allows editing such columns in a single click.<br><br>For this, define a data item template for the CheckBox column and place an actual check box there. Synchronize this check box with the item collection - obtain the value using the Eval (or Bind) method and set a new value with <a href="https://documentation.devexpress.com/AspNet/DevExpressWebScriptsASPxClientGridViewBatchEditApi_SetCellValuetopic.aspx">SetCellValue</a>.</p>

<br/>


