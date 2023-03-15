<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="employeeofmonth.aspx.cs" Inherits="TechCompany.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 23rem;">
        <div class="col-md-1">
                <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="VOTING_MONTH" DataValueField="VOTING_MONTH" style="margin-bottom:1rem;">
        </asp:DropDownList>
            </div>
        <div class="col-md-1" style="margin-top:-3.2rem; margin-left:8rem;">
        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="VOTING_YEAR" DataValueField="VOTING_YEAR" style="margin-bottom:1rem;">
        </asp:DropDownList>
        </div>
      
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;VOTING_YEAR&quot;, &quot;VOTING_MONTH&quot; FROM &quot;EMPLOYEE_VOTES&quot;">
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT e.name, vr.* FROM
(SELECT vr.candidate_id, vr.voting_month, vr.voting_year, COUNT(*) Total
FROM employee_votes vr 
GROUP BY vr.candidate_id, vr.voting_month, vr.voting_year
HAVING vr.voting_year= :year and vr.voting_month = :month
ORDER BY COUNT(*) DESC) vr
JOIN employee e on e.emp_id = vr.candidate_id where rownum &lt;=3">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="year" PropertyName="SelectedValue" DefaultValue="2021" />
                <asp:ControlParameter ControlID="DropDownList2" DefaultValue="Sep" Name="month" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" DataSourceID="SqlDataSource1" Height="266px" Width="676px">
        </asp:GridView>
      
    </div>
</asp:Content>
