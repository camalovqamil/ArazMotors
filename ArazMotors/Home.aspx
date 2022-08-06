<%@ Page Title="" Language="C#" MasterPageFile="Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ArazMotors.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="modal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Modal body text goes here.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <asp:ScriptManager EnablePartialRendering="true"
        ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Oid" DataSourceID="SqlDataSource1" Width="100%" AllowSorting="True">
                <Columns>

                    <asp:TemplateField HeaderText="Səbət">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkSebet" runat="server" UseSubmitBehavior="False" CommandArgument='<%# Eval("Oid") %>' ForeColor="HotPink" Text="Əlavə et" ata-toggle="modal" data-target="#exampleModal"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="Oid" HeaderText="Oid" ReadOnly="True" SortExpression="Oid" />
                    <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                </Columns>
            </asp:GridView>

        <%--</ContentTemplate>

        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>--%>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ArazMotorsDBConnectionString %>" SelectCommand="SELECT [Oid], [Street], [City], [Country] FROM [Address]"></asp:SqlDataSource>
</asp:Content>
