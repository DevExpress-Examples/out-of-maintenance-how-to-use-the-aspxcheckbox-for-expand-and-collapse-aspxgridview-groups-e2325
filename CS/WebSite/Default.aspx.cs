using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ASPxCheckBox1_Init(object sender, EventArgs e)
    {
        ASPxCheckBox cb = sender as ASPxCheckBox;
        GridViewGroupRowTemplateContainer container = cb.NamingContainer as GridViewGroupRowTemplateContainer;
        if (ASPxGridView1.IsRowExpanded(container.VisibleIndex))
            cb.Checked = true;
        cb.ClientSideEvents.CheckedChanged = string.Format("function (s, e) {{ ExpandCollapse(s, {0}); }}", container.VisibleIndex);
    }
}
