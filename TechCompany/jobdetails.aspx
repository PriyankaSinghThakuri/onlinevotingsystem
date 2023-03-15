<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="jobdetails.aspx.cs" Inherits="TechCompany.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>
            <div class="col-md-12">
                <div class="card " style="background-color: #f2f7ff; margin-top: -7.5rem">
                    <div class="card-body">
                        <div class="cloumn">
                            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" Style="margin-left: 23rem; margin-top: 1rem;">
                                <InsertItemTemplate>
                                    <div class="row">
                                        <div class="col-md-4">
                                            JOB_ID:
            <asp:TextBox ID="JOB_IDTextBox" CssClass="form-control" runat="server" Text='<%# Bind("JOB_ID") %>' />
                                        </div>
                                        <div class="col-md-4">
                                            JOB_NAME:
            <asp:TextBox ID="JOB_NAMETextBox" CssClass="form-control" runat="server" Text='<%# Bind("JOB_NAME") %>' />

                                        </div>
                                        <div class="col-md-4">
                                            SALARY:
            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("SALARY") %>' />

                                        </div>
                                    </div>
                                    <br />


                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" Style="padding: 8px; color: white; background-color: green;"/>
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" Style="padding: 8px; color: white; background-color: red;"/>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Job" Style="color: white; background-color: green; padding: 8px; margin-top: 5px;" />
                                </ItemTemplate>
                            </asp:FormView>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="JOB_ID" DataSourceID="SqlDataSource1" Height="518px" Width="839px" Style="margin-left: 23rem; margin-top: -2rem;">
            <Columns>
                <asp:BoundField DataField="JOB_ID" HeaderText="JOB_ID" SortExpression="JOB_ID" />
                <asp:BoundField DataField="JOB_NAME" HeaderText="JOB_NAME" SortExpression="JOB_NAME" />
                <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
                <asp:CommandField HeaderText="Actions" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;JOB&quot; WHERE &quot;JOB_ID&quot; = :JOB_ID" InsertCommand="INSERT INTO &quot;JOB&quot; (&quot;JOB_ID&quot;, &quot;JOB_NAME&quot;, &quot;SALARY&quot;) VALUES (:JOB_ID, :JOB_NAME, :SALARY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;JOB&quot;" UpdateCommand="UPDATE &quot;JOB&quot; SET &quot;JOB_NAME&quot; = :JOB_NAME, &quot;SALARY&quot; = :SALARY WHERE &quot;JOB_ID&quot; = :JOB_ID">
            <DeleteParameters>
                <asp:Parameter Name="JOB_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="JOB_ID" Type="String" />
                <asp:Parameter Name="JOB_NAME" Type="String" />
                <asp:Parameter Name="SALARY" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="JOB_NAME" Type="String" />
                <asp:Parameter Name="SALARY" Type="Decimal" />
                <asp:Parameter Name="JOB_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>



</asp:Content>
