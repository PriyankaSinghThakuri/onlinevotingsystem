<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="roledetails.aspx.cs" Inherits="TechCompany.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>
            <div class="col-md-12">
                <div class="card " style="background-color: #f2f7ff; margin-top: -7.5rem">
                    <div class="card-body">
                        <div class="cloumn">
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ROLE_ID" DataSourceID="SqlDataSource1" Style="margin-left: 23rem; margin-top: 1rem;">

                                <InsertItemTemplate>
                                    <div class="row">
                                        <div class="col-md-4">
                                            ROLE_ID:
            <asp:TextBox ID="ROLE_IDTextBox" CssClass="form-control" runat="server" Text='<%# Bind("ROLE_ID") %>' />
                                        </div>
                                        <div class="col-md-4">
                                            ROLE_NAME:
            <asp:TextBox ID="ROLE_NAMETextBox" CssClass="form-control" runat="server" Text='<%# Bind("ROLE_NAME") %>' />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-4">
                                            JOB_ID:
            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="JOB_ID" DataValueField="JOB_ID" Text='<%# Bind("JOB_ID") %>'>
            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;JOB_ID&quot; FROM &quot;JOB&quot;"></asp:SqlDataSource>

                                            MIN_SALARY:
            <asp:TextBox ID="MIN_SALARYTextBox" CssClass="form-control" runat="server" Text='<%# Bind("MIN_SALARY") %>' />
                                        </div>
                                        <br />
                                      

                                        <div class="row" style="margin-top:10px;">
                                            <div class="col-md-4">
                                                MAX_SALARY:
            <asp:TextBox ID="MAX_SALARYTextBox" CssClass="form-control" runat="server" Text='<%# Bind("MAX_SALARY") %>' />
                                            </div>

                                        </div>
                                        <br />
                                        </div>
                                    <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" Style="padding: 5px; color: white; background-color: green;"/>
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" Style="padding: 5px; color: white; background-color: red;"/>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Role" Style="color: white; background-color: green; padding: 8px; margin-top: 5px;"/>
                                </ItemTemplate>
                            </asp:FormView>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ROLE_ID" DataSourceID="SqlDataSource1" Height="375px" Width="1088px" Style="margin-left: 23rem;  margin-top:-2rem;">
            <Columns>
               
                <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" ReadOnly="True" SortExpression="ROLE_ID" />
                <asp:BoundField DataField="ROLE_NAME" HeaderText="ROLE_NAME" SortExpression="ROLE_NAME" />
                <asp:BoundField DataField="JOB_ID" HeaderText="JOB_ID" SortExpression="JOB_ID" />
                <asp:BoundField DataField="MIN_SALARY" HeaderText="MIN_SALARY" SortExpression="MIN_SALARY" />
                <asp:BoundField DataField="MAX_SALARY" HeaderText="MAX_SALARY" SortExpression="MAX_SALARY" />
                 <asp:CommandField ShowDeleteButton="True" HeaderText="Actions" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ROLE&quot; WHERE &quot;ROLE_ID&quot; = :ROLE_ID" InsertCommand="INSERT INTO &quot;ROLE&quot; (&quot;ROLE_ID&quot;, &quot;ROLE_NAME&quot;, &quot;JOB_ID&quot;, &quot;MIN_SALARY&quot;, &quot;MAX_SALARY&quot;) VALUES (:ROLE_ID, :ROLE_NAME, :JOB_ID, :MIN_SALARY, :MAX_SALARY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ROLE&quot;" UpdateCommand="UPDATE &quot;ROLE&quot; SET &quot;ROLE_NAME&quot; = :ROLE_NAME, &quot;JOB_ID&quot; = :JOB_ID, &quot;MIN_SALARY&quot; = :MIN_SALARY, &quot;MAX_SALARY&quot; = :MAX_SALARY WHERE &quot;ROLE_ID&quot; = :ROLE_ID">
            <DeleteParameters>
                <asp:Parameter Name="ROLE_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ROLE_ID" Type="String" />
                <asp:Parameter Name="ROLE_NAME" Type="String" />
                <asp:Parameter Name="JOB_ID" Type="String" />
                <asp:Parameter Name="MIN_SALARY" Type="Decimal" />
                <asp:Parameter Name="MAX_SALARY" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ROLE_NAME" Type="String" />
                <asp:Parameter Name="JOB_ID" Type="String" />
                <asp:Parameter Name="MIN_SALARY" Type="Decimal" />
                <asp:Parameter Name="MAX_SALARY" Type="Decimal" />
                <asp:Parameter Name="ROLE_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>

</asp:Content>
