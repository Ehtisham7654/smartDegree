<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Degree.aspx.cs" Inherits="SmartDegreeChoice.Degree" %>

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
                                    <h4>Degrees</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="images/Deg2.png" />

                                    <br /><br />

                                </center>
                            </div>
                        </div>

                        

                        <div class="row">
                            <div class="col-md-6">
                                <label>Degree ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="txtDegID" runat="server" placeholder="ID"></asp:TextBox>


                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtDegName" runat="server" placeholder="Degree Name"></asp:TextBox>


                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Department</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:DropDownList runat="server" ID="ddlDept" CssClass="form-control">
                                            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                            <asp:ListItem Text="CS and IT" Value="CSIT"></asp:ListItem>
                                            <asp:ListItem Text="Physics" Value="Physics"></asp:ListItem>
                                            <asp:ListItem Text="Bussiness School" Value="Bussiness"></asp:ListItem>
                                            <asp:ListItem Text="Mathmathics" Value="Mathmatics"></asp:ListItem>

                                        </asp:DropDownList>

                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Duration</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="txtDuration" runat="server" placeholder="Degree Duration"></asp:TextBox>


                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Fee</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="txtFee" runat="server" placeholder="Fee "></asp:TextBox>


                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>University</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtUniversity" runat="server" placeholder="Uni Name"></asp:TextBox>


                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label>Description</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="txtDescription" runat="server" placeholder="Description "></asp:TextBox>

                                    </div>
                                </div>
                            </div>


                        </div>

                        <div class="row">

                            <div class="col-6">
                                <asp:Button ID="btnAdd" class="btn btn-lg btn-success" runat="server" Text="Add" OnClick="btnAdd_Click" />
                                <asp:Label runat="server" ID="lblAddMsg" ForeColor="Green"></asp:Label>

                            </div>
                            <div class="col-6">
                                <a href="Degree.aspx" class="btn btn-lg btn-primary">Clear</a>
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

                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="grdDeg" runat="server" AutoGenerateColumns="False" DataKeyNames="Deg_ID" OnRowCommand="grdDeg_RowCommand" OnRowDeleting="grdDeg_RowDeleting" OnRowEditing="grdDeg_RowEditing">
                                    <Columns>
                                        <asp:BoundField DataField="Deg_ID" HeaderText="Deg_ID" ReadOnly="True" />
                                        <asp:BoundField DataField="Deg_Name" HeaderText="Deg_Name" />
                                        <asp:BoundField DataField="Department" HeaderText="Department" />
                                        <asp:BoundField DataField="Duration" HeaderText="Duration" />
                                        <asp:BoundField DataField="Fee" HeaderText="Fee" />
                                        <asp:BoundField DataField="Uni_Name" HeaderText="Uni_Name" />
                                        <asp:BoundField DataField="Description" HeaderText="Description" />

                                        <asp:TemplateField HeaderText="Actions">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" CssClass="btn btn-warning" ID="lnkbtnEdit" Text="Edit" CommandName="Edit" CommandArgument='<%# Bind("Deg_ID") %>'></asp:LinkButton>
                                                /
                                           <asp:LinkButton runat="server" CssClass="btn btn-danger" ID="lnkbtnDelete" Text="Delete" CommandName="Delete" CommandArgument='<%# Bind("Deg_ID") %>' OnClientClick="return confirm('Are You Sure? You want to delete this record?'); "></asp:LinkButton>
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
