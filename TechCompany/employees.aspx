<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="employees.aspx.cs" Inherits="TechCompany.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
               <div>
            <div class="col-md-12">
                <div class="card " style="background-color: #f2f7ff; margin-top: -7.5rem">
                    <div class="card-body">
                        <div class="cloumn">
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="EMP_ID" DataSourceID="SqlDataSource1" Style="margin-left: 23rem; margin-top: 20px; display: flex; flex-direction: row;" Width="131px">

                                <InsertItemTemplate>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMP_ID&quot; FROM &quot;EMPLOYEE&quot;"></asp:SqlDataSource>
                                    <div class="row">
                                        <div class="col-md-6">
                                            EMP_ID:
                       <asp:TextBox ID="EMP_IDTextBox" CssClass="form-control" runat="server" Text='<%# Bind("EMP_ID") %>' Style="width: 150px;" />

                                        </div>

                                        <div class="col-md-6">
                                            NAME:
            <asp:TextBox ID="NAMETextBox" CssClass="form-control" runat="server" Text='<%# Bind("NAME") %>' Style="width: 250px;" />
                                        </div>

                                    </div>
                                    <br />
                                    <div class="cloumn">
                                        <div class="row">
                                            <div class="col-md-6">
                                                SALARY:
            <asp:TextBox ID="SALARYTextBox" CssClass="form-control" runat="server" Text='<%# Bind("SALARY") %>' Style="width: 150px;" />
                                            </div>
                                            <div class="col-md-6">
                                                DOB:
            <asp:TextBox ID="DOBTextBox" CssClass="form-control" runat="server" Text='<%# Bind("DOB") %>' Style="width: 300px; margin-left: 10px;" />
                                            </div>
                                        </div>
                                        <br />

                                        <div class="cloumn">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    ROLE_ID:
            <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="ROLE_NAME" DataValueField="ROLE_ID" Width="180px" AutoPostBack="True" Text='<%# Bind("ROLE_ID") %>'>
            </asp:DropDownList>

                                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ROLE_ID&quot;, &quot;ROLE_NAME&quot; FROM &quot;ROLE&quot;"></asp:SqlDataSource>
                                                    <br />

                                                </div>
                                                <div class="col-md-4" style="margin-left:80px">
                                                    DEPT_ID:
            <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server" DataSourceID="SqlDataSource4" DataTextField="DEPT_NAME" DataValueField="DEPT_ID" Width="180px" AutoPostBack="True" Text='<%# Bind("DEPT_ID") %>'>
            </asp:DropDownList>
                                                 <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DEPT_ID&quot;, &quot;DEPT_NAME&quot; FROM &quot;DEPARTMENT&quot;"></asp:SqlDataSource>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                            
                                                <br />
                                                HIRE_DATE:
            <asp:TextBox ID="HIRE_DATETextBox" CssClass="form-control" runat="server"  Width="180px" Text='<%# Bind("HIRE_DATE") %>' />
                                            </div>
                                            <br />
                                        </div>

                                    </div>


                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" Style="padding: 8px; color: white; background-color: green;" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" Style="padding: 8px; color: white; background-color: red;" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Employee" Style="margin-top: 10px; padding: 8px; color: white; background-color: green; margin-bottom: 2rem;" />
                                </ItemTemplate>
                            </asp:FormView>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="EMP_ID" DataSourceID="SqlDataSource1" Height="451px" Width="1090px" Style="margin-left: 23rem; margin-top: -20px">
            <Columns>

               

                <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" SortExpression="ROLE_ID" />
                <asp:BoundField DataField="DEPT_ID" HeaderText="DEPT_ID" SortExpression="DEPT_ID" />
                <asp:BoundField DataField="HIRE_DATE" HeaderText="HIRE_DATE" SortExpression="HIRE_DATE" />
                 <asp:CommandField  HeaderText="Actions" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>


        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ROLE_ID&quot; FROM &quot;ROLE&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DEPT_ID&quot; FROM &quot;DEPARTMENT&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;EMPLOYEE&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;EMPLOYEE&quot; (&quot;EMP_ID&quot;, &quot;NAME&quot;, &quot;SALARY&quot;, &quot;DOB&quot;, &quot;ROLE_ID&quot;, &quot;DEPT_ID&quot;, &quot;HIRE_DATE&quot;) VALUES (:EMP_ID, :NAME, :SALARY, :DOB, :ROLE_ID, :DEPT_ID, :HIRE_DATE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEE&quot;" UpdateCommand="UPDATE &quot;EMPLOYEE&quot; SET &quot;NAME&quot; = :NAME, &quot;SALARY&quot; = :SALARY, &quot;DOB&quot; = :DOB, &quot;ROLE_ID&quot; = :ROLE_ID, &quot;DEPT_ID&quot; = :DEPT_ID, &quot;HIRE_DATE&quot; = :HIRE_DATE WHERE &quot;EMP_ID&quot; = :EMP_ID">
            <DeleteParameters>
                <asp:Parameter Name="EMP_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EMP_ID" Type="String" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="SALARY" Type="Decimal" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="ROLE_ID" Type="String" />
                <asp:Parameter Name="DEPT_ID" Type="String" />
                <asp:Parameter Name="HIRE_DATE" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="SALARY" Type="Decimal" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="ROLE_ID" Type="String" />
                <asp:Parameter Name="DEPT_ID" Type="String" />
                <asp:Parameter Name="HIRE_DATE" Type="DateTime" />
                <asp:Parameter Name="EMP_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>





    </div>



</asp:Content>
