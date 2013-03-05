<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ItaliaMasterPage.Master" CodeBehind="Dagverslagen.aspx.vb" Inherits="Italia_1213.Dagverslagen" %>
<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<h2> Dagverslagen</h2>
                 <br />

 
               
     <br />

     <asp:GridView ID="dgvOverzicht" runat="server" AllowSorting="True" 
                        AutoGenerateColumns="False" DataKeyNames="Datum" 
                        DataSourceID="dtsOverzicht" 
        Font-Size="25pt" ForeColor="black" 
        CellPadding="4" GridLines="None" Height="25px" Width="748px" 
        CssClass="nieuwsgrid1">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField SelectText="Lees verslag van " ShowSelectButton="True" />
                            <asp:BoundField DataField="Datum" HeaderText="Datum" ReadOnly="True" 
                                SortExpression="Datum" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="black" Font-Bold="false" ForeColor="White"/>
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="black" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
          
                 <br />
           <asp:FormView ID="frvDetail" runat="server" DataKeyNames="Datum" 
                        DataSourceID="dtsDetail" RenderOuterTable="False">
                        <EditItemTemplate>
                           
                           
                            <asp:Label ID="DatumLabel1" runat="server" Text='<%# Eval("Datum") %>' />
                            <br />

                            <asp:TextBox ID="NieuwsTextBox" runat="server" ForeColor="black" Text='<%# Bind("Nieuws") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            
                            <asp:TextBox ID="DatumTextBox" runat="server"  Text='<%# Bind("Datum") %>' />
                            <br />
                         
                            <asp:TextBox ID="NieuwsTextBox" runat="server" Text='<%# Bind("Nieuws") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                          
                            <asp:Label ID="DatumLabel" runat="server" forecolor="black" Text='<%# Eval("Datum") %>' />
                            <br /><br />
                            
                       
                                
                  
                            <asp:Label ID="NieuwsLabel" runat="server" ForeColor="Black"  Text='<%# Eval("Nieuws").ToString().replace(Chr(13), "<br />") %>' />
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                 <br />
                 <br />
                 <br />
                  <asp:SqlDataSource ID="dtsOverzicht" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionStringDatabaseItalië %>" 
                        SelectCommand="SELECT Datum FROM tblNieuws">
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="dtsDetail" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionStringDatabaseItalië %>" 
                        
                        SelectCommand="SELECT [Datum], [Nieuws] FROM [tblNieuws] WHERE ([Datum] = @Datum)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dgvOverzicht" Name="Datum" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                 
                 <br />
                 <br />
                       
                                <br />
                             <div>
    <asp:LinkButton ID="btnLogin" runat="server">Log in</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="btnBeheer" runat="server">Beheer</asp:LinkButton> 
    </div>
</asp:Content>
