<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="University.aspx.cs" Inherits="SmartDegreeChoice.University" %>

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
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Universities</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="images/Uni.png" />

                                </center>
                            </div>
                        </div>

                        

                        <div class="row">
                            <div class="col-md-6">
                                <label>University ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="txtUniID" runat="server" placeholder="ID"></asp:TextBox>


                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtUniName" runat="server" placeholder="University Name"></asp:TextBox>


                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Type</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:DropDownList runat="server" ID="ddlType" CssClass="form-control">
                                            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                            <asp:ListItem Text="Government" Value="Government"></asp:ListItem>
                                            <asp:ListItem Text="Semi-Government" Value="Semi-Government"></asp:ListItem>
                                            <asp:ListItem Text="Private" Value="Private"></asp:ListItem>
                                            <asp:ListItem Text="International" Value="International"></asp:ListItem>

                                        </asp:DropDownList>

                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Campus</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:DropDownList runat="server" ID="ddlCampus" CssClass="form-control">
                                            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                            <asp:ListItem Text="Main" Value="Main"></asp:ListItem>
                                            <asp:ListItem Text="Sub" Value="Sub"></asp:ListItem>
                                            <asp:ListItem Text="PPP" Value="PPP"></asp:ListItem>

                                        </asp:DropDownList>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>No of Department</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="txtDept" runat="server" placeholder="No of Department"></asp:TextBox>


                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Location</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtLocation" runat="server" placeholder="Location"></asp:TextBox>


                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-6">
                                <asp:Button ID="btnAdd" class="btn btn-lg  btn-success" runat="server" Text="Add" OnClick="btnAdd_Click" />
                                <asp:Label runat="server" ID="lblAddMsg" ForeColor="Green"></asp:Label>
                            </div>
                            <div class="col-6">
                                <a href="University.aspx" class="btn btn-lg btn-primary">Clear</a>
                            </div>

                        </div>


                    </div>
                </div>

                <a href="Home.aspx"><< Back to Home</a><br>
                <br>
            </div>
            <div class="col-md-2"></div>
            

        </div>

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

                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="grdUni" runat="server" AutoGenerateColumns="False" DataKeyNames="Uni_ID" OnRowCommand="grdUni_RowCommand" OnRowDeleting="grdUni_RowDeleting" OnRowEditing="grdUni_RowEditing">
                                    <Columns>
                                        <asp:BoundField DataField="Uni_ID" HeaderText="Uni_ID" ReadOnly="True" />
                                        <asp:BoundField DataField="Uni_Name" HeaderText="Uni_Name" />
                                        <asp:BoundField DataField="Type" HeaderText="Type" />
                                        <asp:BoundField DataField="Campus" HeaderText="Campus" />
                                        <asp:BoundField DataField="No_Of_Dept" HeaderText="No_Of_Dept" />
                                        <asp:BoundField DataField="Location" HeaderText="Location" />
                                        <asp:TemplateField HeaderText="Actions">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" CssClass="btn btn-warning" ID="lnkbtnEdit" Text="Edit" CommandName="Edit" CommandArgument='<%# Bind("Uni_ID") %>'></asp:LinkButton>
                                                /
                                           <asp:LinkButton runat="server" CssClass="btn btn-danger" ID="lnkbtnDelete" Text="Delete" CommandName="Delete" CommandArgument='<%# Bind("Uni_ID") %>' OnClientClick="return confirm('Are You Sure? You want to delete this record?'); "></asp:LinkButton>
                                            </ItemTemplate>

                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                <br />
                <a href="Home.aspx"><< Back to Home</a><br>
                <br>


            </div>
        </div>
    </div>
</asp:Content>
