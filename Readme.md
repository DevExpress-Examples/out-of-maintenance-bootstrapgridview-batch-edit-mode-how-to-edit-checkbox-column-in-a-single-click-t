<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128548983/17.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T520290)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))

<!-- default file list end -->
# BootstrapGridView - Batch Edit mode - How to edit CheckBox column in a single click
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t520290/)**
<!-- run online end -->


**Starting with v17.1.4 and v17.2.3**, BootstrapGridView provides the AlwaysShowCheckboxesInCheckColumns property. To achieve the desired behavior, use the following code:

```
  <SettingsEditing>
            <BatchEditSettings AlwaysShowCheckboxesInCheckColumns="true" />
  </SettingsEditing>
```
