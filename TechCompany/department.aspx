<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="department.aspx.cs" Inherits="TechCompany.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>
            <div class="col-md-12">
                <div class="card " style="background-color: #f2f7ff; margin-top: -7.5rem">
                    <div class="card-body">
                        <div class="cloumn">
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="DEPT_ID" DataSourceID="SqlDataSource1" Style="margin-left: 23rem; margin-top: 1rem">
                                <InsertItemTemplate>
                                    <div class="row">
                                        <div class="col-md-6">
                                            DEPT_ID:
            <asp:TextBox ID="DEPT_IDTextBox" CssClass="form-control" runat="server" Text='<%# Bind("DEPT_ID") %>' />
                                        </div>
                                        <div class="col-md-6">
                                            DEPT_NAME:
            <asp:TextBox ID="DEPT_NAMETextBox" CssClass="form-control" runat="server" Text='<%# Bind("DEPT_NAME") %>' />
                                        </div>
                                    </div>
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" Style="padding: 8px; color: white; background-color: green;"/>
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" Style="padding: 8px; color: white; background-color: red;"/>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add department" Style="color: white; background-color: green; padding: 8px; margin-top: 5px;" />
                                </ItemTemplate>
                            </asp:FormView>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DEPT_ID" DataSourceID="SqlDataSource1" Height="313px" Width="663px" Style="margin-left: 23rem; margin-top:-2rem;">
            <Columns>
                <asp:BoundField DataField="DEPT_ID" HeaderText="DEPT_ID" ReadOnly="True" SortExpression="DEPT_ID" />
                <asp:BoundField DataField="DEPT_NAME" HeaderText="DEPT_NAME" SortExpression="DEPT_NAME" />
                <asp:CommandField HeaderText="Actions" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPT_ID&quot; = :DEPT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPT_ID&quot;, &quot;DEPT_NAME&quot;) VALUES (:DEPT_ID, :DEPT_NAME)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPT_NAME&quot; = :DEPT_NAME WHERE &quot;DEPT_ID&quot; = :DEPT_ID">
            <DeleteParameters>
                <asp:Parameter Name="DEPT_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DEPT_ID" Type="String" />
                <asp:Parameter Name="DEPT_NAME" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="DEPT_NAME" Type="String" />
                <asp:Parameter Name="DEPT_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
