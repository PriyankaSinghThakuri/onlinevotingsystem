<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="votingRecord.aspx.cs" Inherits="TechCompany.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select  evc.voter_id, ev.name as &quot;Voter Name&quot;, evc.voting_year, evc.voting_month, ec.name as &quot;Candidate name&quot;, d.dept_name,r.role_name from 
employee_votes evc JOIN 
employee ev ON evc.voter_id=ev.emp_id JOIN
employee ec ON evc.candidate_id = ec.emp_id
JOIN department d ON ec.dept_id = d.dept_id 
JOIN role r ON ec.role_id = r.role_id 
where ev.emp_id = :employee">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="employee" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select emp_id, name || ' ' || emp_id from employee"></asp:SqlDataSource>
        <div style="margin-top:1rem;">
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="NAME||''||EMP_ID" DataValueField="EMP_ID" Style="margin-left: 23rem; margin-top:-5rem; margin-bottom:1rem;" Height="37px" Width="182px">
    </asp:DropDownList>
        </div>

    <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive"  runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="VOTER_ID,VOTING_YEAR,VOTING_MONTH" DataSourceID="SqlDataSource1" Style="margin-left: 23rem;" Height="329px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="980px">
        <Columns>
            <asp:BoundField DataField="VOTER_ID" HeaderText="VOTER_ID" ReadOnly="True" SortExpression="VOTER_ID" />
            <asp:BoundField DataField="Voter Name" HeaderText="Voter Name" SortExpression="Voter Name" />
            <asp:BoundField DataField="VOTING_YEAR" HeaderText="VOTING_YEAR" ReadOnly="True" SortExpression="VOTING_YEAR" />
            <asp:BoundField DataField="VOTING_MONTH" HeaderText="VOTING_MONTH" ReadOnly="True" SortExpression="VOTING_MONTH" />
            <asp:BoundField DataField="Candidate name" HeaderText="Candidate name" SortExpression="Candidate name" />
            <asp:BoundField DataField="DEPT_NAME" HeaderText="DEPT_NAME" SortExpression="DEPT_NAME" />
            <asp:BoundField DataField="ROLE_NAME" HeaderText="ROLE_NAME" SortExpression="ROLE_NAME" />
        </Columns>
    </asp:GridView>
    </div>
   

</asp:Content>
