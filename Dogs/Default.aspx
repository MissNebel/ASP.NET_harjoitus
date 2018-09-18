<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Dogs._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div class="col-md-4">
            <h2>&nbsp;List of dogs</h2>
            <div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DogsConnectionString2 %>" ProviderName="<%$ ConnectionStrings:DogsConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Table1]"></asp:SqlDataSource>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                    <AlternatingItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="BREEDLabel" runat="server" Text='<%# Eval("BREED") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DOGLabel" runat="server" Text='<%# Eval("DOG") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="BREEDTextBox" runat="server" Text='<%# Bind("BREED") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="DOGTextBox" runat="server" Text='<%# Bind("DOG") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="BREEDTextBox" runat="server" Text='<%# Bind("BREED") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="DOGTextBox" runat="server" Text='<%# Bind("DOG") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="BREEDLabel" runat="server" Text='<%# Eval("BREED") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DOGLabel" runat="server" Text='<%# Eval("DOG") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server">ID</th>
                                            <th runat="server">BREED</th>
                                            <th runat="server">DOG</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style=""></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="BREEDLabel" runat="server" Text='<%# Eval("BREED") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DOGLabel" runat="server" Text='<%# Eval("DOG") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
&nbsp;&nbsp;&nbsp;
            </div>
            

        </div>
        <div class="col-md-4">
            <h2>Delete dog</h2>
            <div>

                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DogsConnectionString2 %>" ProviderName="<%$ ConnectionStrings:DogsConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Table1]"></asp:SqlDataSource>
                <br />
                Enter ID:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Delete dog" OnClick="Button2_Click" />

            </div>
        
        </div>
        <div class="col-md-4">
            <h2>Add dog</h2>
            <div>

                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DogsConnectionString2 %>" ProviderName="<%$ ConnectionStrings:DogsConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Table1]"></asp:SqlDataSource>

                Enter name:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                Enter breed:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add dog" />

                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>

            </div>

        </div>
    </div>

</asp:Content>
