<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="SmartDegreeChoice.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8 d-flex justify-content-center align-items-center">
                                <img src="images/AdminLogin.jpg" width="200" height="200" />
                            </div>
                            <div class="col-md-2"></div>
                        </div>

                         <div class="row">
                             <div class="col-md-2"></div>
                            <div class="col-md-8 d-flex justify-content-center align-items-center">
                                <h3>Admin Log-In</h3>
                            </div>
                             <div class="col-md-2"></div>
                        </div>

                        <div class="row">
                            <div class="col d-flex justify-content-center align-items-center">
                                <br />
                                 <br />
                                <hr />
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-10">
                                <div class="form-group">
                                    <label>Email Address:</label>
                                        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>

                                </div>


                                 <div class="form-group">
                                        <label>Password:</label>
                                        <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password"></asp:TextBox>

                                    </div>

                                <div class="form-group">

                                        <asp:Button runat="server" ID="btnLoginAdm" CssClass="btn btn-lg btn-success btn-block " Text="Log-In" OnClick="btnLoginAdm_Click" ></asp:Button>
                                         <div>
                                            <asp:Label runat="server" ID="lblmsg2" ForeColor="red" ></asp:Label>
                                        </div>
                                    </div>
                            </div>
                            <div class="col-md-1"></div>
                        </div>


                    </div>
                        
                    <div class="row">
                        <div class="col-md-8">
                            <a href="Home.aspx">Back to Home<br />
                            </a>
                        </div>

                        <div class="col-md-4">
                            <a href="UserLogin.aspx">Log-In as User?<br /><br />
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    



</asp:Content>
