<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UniSearch.aspx.cs" Inherits="SmartDegreeChoice.UniSearch" %>

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
                            <h4>Universities List</h4>
                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <hr>
                    </div>
                </div>
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartDegreeConnectionString %>" SelectCommand="SELECT * FROM [tblUni]"></asp:SqlDataSource>
                    <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="grdUniSearch" runat="server" AutoGenerateColumns="False" DataKeyNames="Uni_ID" DataSourceID="SqlDataSource1">
                            <columns>
                                <asp:BoundField DataField="Uni_ID" HeaderText="Uni_ID" ReadOnly="True" SortExpression="Uni_ID" />
                                <asp:TemplateField>

                                    <itemtemplate>
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-8">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <asp:Label runat="server" ID="lblUniName" Text='<%# Eval("Uni_Name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <span>Type - </span>
                                                            <asp:Label ID="lblType" runat="server" Font-Bold="True" Text='<%# Eval("Type") %>'></asp:Label>
                                                            &nbsp;| <span><span>&nbsp;

                                                            </span>Campus - </span>
                                                            <asp:Label ID="lblCampus" runat="server" Font-Bold="True" Text='<%# Eval("Campus") %>'></asp:Label>
                                                            &nbsp;|
                                                                            <span>No. Of Department -<span>&nbsp;</span>
                                                                                <asp:Label ID="lblDept" runat="server" Font-Bold="True" Text='<%# Eval("No_Of_Dept") %>'></asp:Label>
                                                                            </span>
                                                            </span>Location - </span>
                                                                            <asp:Label ID="lblLocation" runat="server" Font-Bold="True" Text='<%# Eval("Location") %>'></asp:Label>
                                                            &nbsp;|
                                                                            <span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </itemtemplate>

                                </asp:TemplateField>
                            </columns>

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
