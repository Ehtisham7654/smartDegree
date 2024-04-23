<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DegSearch.aspx.cs" Inherits="SmartDegreeChoice.DegSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            // $('.table').DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <div class="row">
                    <div class="col">
                        <center>
                            <h4>Degrees List</h4>
                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <hr>
                    </div>
                </div>
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartDegreeConnectionString %>" SelectCommand="SELECT * FROM [tblDegree]"></asp:SqlDataSource>
                    <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="grdUniSearch" runat="server" AutoGenerateColumns="False" DataKeyNames="Deg_ID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Deg_ID" HeaderText="Deg_ID" ReadOnly="True" SortExpression="Deg_ID" />
                                <asp:TemplateField>

                                    <ItemTemplate>
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-8">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <asp:Label runat="server" ID="lblUniName" Text='<%# Eval("Deg_Name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <span>Department- </span>
                                                            <asp:Label ID="lblType" runat="server" Font-Bold="True" Text='<%# Eval("Department") %>'></asp:Label>
                                                            &nbsp;| <span><span>&nbsp;

                                                            </span>Duration - </span>
                                                            <asp:Label ID="lblCampus" runat="server" Font-Bold="True" Text='<%# Eval("Duration") %>'></asp:Label>
                                                            &nbsp;|
                                                                            <span>Fee -<span>&nbsp;</span>
                                                                                <asp:Label ID="lblDept" runat="server" Font-Bold="True" Text='<%# Eval("Fee") %>'></asp:Label>
                                                                            </span>
                                                            </span>University - </span>
                                                                            <asp:Label ID="lblLocation" runat="server" Font-Bold="True" Text='<%# Eval("Uni_Name") %>'></asp:Label>
                                                            &nbsp;|
                                                                            <span></span>Description - </span>
                                                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text='<%# Eval("Description") %>'></asp:Label>
                                                            &nbsp;|
                                                                            <span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>

                                </asp:TemplateField>
                            </Columns>

                        </asp:GridView>
                    </div>
                </div>
                    </div>
                    <div class="col-md-2"></div>
                </div>

                


            </div>

        </div>
    </div>
</asp:Content>
