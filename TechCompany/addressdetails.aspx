<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="addressdetails.aspx.cs" Inherits="TechCompany.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>
            <div class="col-md-12">
                <div class="card " style="background-color: #f2f7ff; margin-top: -7.5rem">
                    <div class="card-body">
                        <div class="cloumn">
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" Style="margin-left: 23rem; margin-top: 1rem;">

                                <InsertItemTemplate>
                                    <div class="row">
                                        <div class="col-md-4">
                                            ADDRESS_ID:
            <asp:TextBox ID="ADDRESS_IDTextBox" CssClass="form-control" runat="server" Text='<%# Bind("ADDRESS_ID") %>' />
                                        </div>
                                        <div class="col-md-4">
                                            COUNTRY:
            <asp:TextBox ID="COUNTRYTextBox" CssClass="form-control" runat="server" Text='<%# Bind("COUNTRY") %>' />
                                        </div>
                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-md-4">
                                            CITY:
            <asp:TextBox ID="CITYTextBox" CssClass="form-control" runat="server" Text='<%# Bind("CITY") %>' />
                                        </div>
                                        <div class="col-md-4">
                                            STREET:
            <asp:TextBox ID="STREETTextBox" CssClass="form-control" runat="server" Text='<%# Bind("STREET") %>' />
                                        </div>
                                    </div>

                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" Style="color: white; background-color: green; padding: 8px; margin-top: 5px;"/>
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" Style="color: white; background-color: red; padding: 8px; margin-top: 5px;"/>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Address" Style="color: white; background-color: green; padding: 8px; margin-top: 15px;"/>
                                </ItemTemplate>
                            </asp:FormView>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-responsive" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" Height="461px" Width="945px" Style="margin-left: 23rem;">
            <Columns>
                <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
                <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
                <asp:CommandField ShowDeleteButton="True" HeaderText="Actions" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;COUNTRY&quot;, &quot;CITY&quot;, &quot;STREET&quot;) VALUES (:ADDRESS_ID, :COUNTRY, :CITY, :STREET)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;COUNTRY&quot; = :COUNTRY, &quot;CITY&quot; = :CITY, &quot;STREET&quot; = :STREET WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
            <DeleteParameters>
                <asp:Parameter Name="ADDRESS_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ADDRESS_ID" Type="String" />
                <asp:Parameter Name="COUNTRY" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="STREET" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="COUNTRY" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="STREET" Type="String" />
                <asp:Parameter Name="ADDRESS_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
