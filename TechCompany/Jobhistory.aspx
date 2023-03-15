<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Jobhistory.aspx.cs" Inherits="TechCompany.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="col-md-3" style="margin-bottom:1rem;">
            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="E.NAME||''||E.EMP_ID" DataValueField="EMP_ID" Height="45px" Width="170px" Style="margin-left: 23rem; margin-bottom:1rem;" AutoPostBack="True">
    </asp:DropDownList>
        </div>
           
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select distinct e.emp_id, e.name || ' ' || e.emp_id from employee e
JOIN job_history jh on e.emp_id = jh.emp_id where jh.end_date IS NOT NULL


"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand=" SELECT E.EMP_ID, E.NAME, E.ROLE_ID, E.DEPT_ID, J.START_DATE, J.END_DATE, (J.END_DATE - J.START_DATE) AS DURATION FROM &quot;EMPLOYEE&quot; E, &quot;JOB_HISTORY&quot;J WHERE E.EMP_ID = J.EMP_ID AND END_DATE IS NOT NULL  AND E.EMP_ID = :EMPLOYEE">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="EMPLOYEE" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" DataSourceID="SqlDataSource1" Height="211px" Width="1080px" Style="margin-left: 23rem; margin-top:2rem" AutoGenerateColumns="False" DataKeyNames="EMP_ID">
        <Columns>
            <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" SortExpression="EMP_ID" ReadOnly="True" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" SortExpression="ROLE_ID" />
            <asp:BoundField DataField="DEPT_ID" HeaderText="DEPT_ID" SortExpression="DEPT_ID" />
            <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
            <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" />
            <asp:BoundField DataField="DURATION" HeaderText="DURATION" SortExpression="DURATION" />
        </Columns>
    </asp:GridView>

    </div>
     
    <p>
    </p>
</asp:Content>
