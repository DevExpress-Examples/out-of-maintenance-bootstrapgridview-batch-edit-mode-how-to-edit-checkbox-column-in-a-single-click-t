<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))

<!-- default file list end -->
# BootstrapGridView - Batch Edit mode - How to edit CheckBox column in a single click


**Starting with v17.1.4 and v17.2.3**, BootstrapGridView provides the AlwaysShowCheckboxesInCheckColumns property. To achieve the desired behavior, use the following code:

```
  <SettingsEditing>
            <BatchEditSettings AlwaysShowCheckboxesInCheckColumns="true" />
  </SettingsEditing>
```
