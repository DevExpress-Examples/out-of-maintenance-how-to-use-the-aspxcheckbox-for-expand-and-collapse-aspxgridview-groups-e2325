<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to use the ASPxCheckBox for expand and collapse ASPxGridView groups


<p>This example demonstrates how to expand/collapse grid groups on selecting/unselecting ASPxCheckBox.</p><p>First, place ASPxCheckBox and ASPxLabel into the Grid.Templates.<a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewGridViewTemplates_GroupRowContenttopic">GroupRowContent</a> template.<br />
Second, set the ASPxCheckBox.Checked property and the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsScriptsASPxClientCheckBox_CheckedChangedtopic">ASPxCheckBox.ClientSideEvents.CheckedChanged</a> event in the ASPxCheckBox.Init event handler.</p>

<br/>


