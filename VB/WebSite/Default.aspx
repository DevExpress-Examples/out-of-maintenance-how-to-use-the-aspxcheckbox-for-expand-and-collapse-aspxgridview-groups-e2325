<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>How to use the ASPxCheckBox for expand and collapse ASPxGridView groups</title>

	<script type="text/javascript">
		function ExpandCollapse(sender, index) {
			if (sender.GetChecked())
				grid.ExpandRow(index);
			else
				grid.CollapseRow(index);
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<dx:ASPxGridView ID="ASPxGridView1" runat="server" ClientInstanceName="grid" AutoGenerateColumns="False" DataSourceID="AccessDataSource1"
				KeyFieldName="ProductID">
				<Columns>
					<dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
						<EditFormSettings Visible="False" />
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="2" GroupIndex="0" SortIndex="0" SortOrder="Ascending">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="3">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="4">
					</dx:GridViewDataTextColumn>
				</Columns>
				<Templates>
					<GroupRowContent>
						<dx:ASPxCheckBox ID="ASPxCheckBox1" runat="server" OnInit="ASPxCheckBox1_Init">
						</dx:ASPxCheckBox>
						<%#Container.GroupText + Container.KeyValue%>
					</GroupRowContent>
				</Templates>
				<Settings ShowGroupButtons="False" ShowGroupPanel="True" />
			</dx:ASPxGridView>
			<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
				SelectCommand="SELECT [ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock] FROM [Products]">
			</asp:AccessDataSource>
			&nbsp;&nbsp;
		</div>
	</form>
</body>
</html>