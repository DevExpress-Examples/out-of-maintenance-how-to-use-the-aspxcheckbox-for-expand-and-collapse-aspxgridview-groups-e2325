Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Sub ASPxCheckBox1_Init(ByVal sender As Object, ByVal e As EventArgs)
		Dim cb As ASPxCheckBox = TryCast(sender, ASPxCheckBox)
		Dim container As GridViewGroupRowTemplateContainer = TryCast(cb.NamingContainer, GridViewGroupRowTemplateContainer)
		If ASPxGridView1.IsRowExpanded(container.VisibleIndex) Then
			cb.Checked = True
		End If
		cb.ClientSideEvents.CheckedChanged = String.Format("function (s, e) {{ ExpandCollapse(s, {0}); }}", container.VisibleIndex)
	End Sub
End Class
