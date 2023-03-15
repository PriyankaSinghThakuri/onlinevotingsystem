<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="TechCompany.WebForm2" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="display: flex; flex-direction: column; margin-top: -4rem;">
            <div style="display: flex; flex-direction: row; margin-left: 20rem; margin-right: 1rem">
                <div class="card" style="width: 17rem; margin: 1rem">
                    <div class="card-body">
                        <h5 class="card-title">Employees<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select COUNT(*) as Total from Employee"></asp:SqlDataSource>
                            <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource4" Height="50px" Width="150px" Style="font-size: 15px; border: 0;">
                                <Fields>
                                    <asp:BoundField DataField="TOTAL" HeaderText="Total Employees: " SortExpression="TOTAL" />
                                </Fields>
                            </asp:DetailsView>
                        </h5>
                    </div>
                </div>
                <div class="card" style="width: 17rem; margin: 1rem;">
                    <div class="card-body">
                        <h5 class="job-title">Jobs<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select COUNT(*) as Total from Job"></asp:SqlDataSource>
                            <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource3" Height="50px" Width="120px" Style="font-size: 15px; border: 0;">
                                <Fields>
                                    <asp:BoundField DataField="TOTAL" HeaderText="Total Jobs:" SortExpression="TOTAL" />
                                </Fields>
                            </asp:DetailsView>
                        </h5>

                    </div>
                </div>
                <div class="card" style="width: 17rem; margin: 1rem">
                    <div class="card-body">
                        <h5 class="role-title">Roles<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select COUNT(*) as Total from Role"></asp:SqlDataSource>
                            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="50px" Width="120px" Style="font-size: 15px; border: 0;">
                                <Fields>
                                    <asp:BoundField DataField="TOTAL" HeaderText="Total Roles: " SortExpression="TOTAL" />
                                </Fields>
                            </asp:DetailsView>

                        </h5>
                    </div>
                </div>
                <div class="card" style="width: 17rem; margin: 1rem">
                    <div class="card-body">
                        <h5 class="department-title">Departments<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select COUNT(*) as Total from Department"></asp:SqlDataSource>

                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="150px" Style="font-size: 15px; border: 0;">
                                <Fields>
                                    <asp:BoundField DataField="TOTAL" HeaderText="Total Departments: " SortExpression="TOTAL" />
                                </Fields>
                            </asp:DetailsView>

                        </h5>
                    </div>
                </div>
            </div>


        </div>
        <div style="margin-left: 20rem; margin-top: 5rem; height: 15rem;">
            <h5>Number of Employees in Department</h5>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource5" Width="500px">
                <Series>
                    <asp:Series Name="Series1" XValueMember="DEPT_NAME" YValueMembers="COUNT(E.EMP_ID)">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select d.dept_name, count(e.emp_id) from employee e JOIN department d ON e.dept_id=d.dept_id group by d.dept_name"></asp:SqlDataSource>
        </div>

        <div style="margin-left: 58rem; margin-top: -15rem">
            <h5>Employees of the Month</h5>
            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource6" Width="500px">
                <Series>
                    <asp:Series Name="Series1" ChartType="Doughnut" XValueMember="name" YValueMembers="totalvotes"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <div style="margin-top:2rem">
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;VOTING_YEAR&quot;, &quot;VOTING_MONTH&quot; FROM &quot;EMPLOYEE_VOTES&quot;"></asp:SqlDataSource>
                <div class="col-md-2">
                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="VOTING_MONTH" DataValueField="VOTING_MONTH" Style="margin-left: 1rem">
                </asp:DropDownList>
                </div>
                <div class="col-md-2" style="margin-top:-2.3rem; margin-left:8rem;">
                     <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="VOTING_YEAR" DataValueField="VOTING_YEAR">
                </asp:DropDownList>
                </div>
                
               

            </div>

            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select e.name, evc.* from 
(select evc.candidate_id, evc.voting_month, evc.voting_year, COUNT(*) totalvotes
from employee_votes evc
GROUP BY evc.candidate_id, evc.voting_month, evc.voting_year 
HAVING evc.voting_year= :year and evc.voting_month = :month 
ORDER BY Count(*) DESC) evc
JOIN employee e on evc.candidate_id = e.emp_id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="2021" Name="year" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList2" DefaultValue="Sep" Name="month" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>



</asp:Content>
