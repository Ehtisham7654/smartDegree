<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="SmartDegreeChoice.SignUp1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8 d-flex justify-content-center align-items-center">


                                <img src="images/SignUp2.png" width="150" />
                            </div>
                            <div class="col-md-2"></div>

                        </div>

                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8 d-flex justify-content-center align-items-center">

                                <h3>Sign Up</h3>


                            </div>
                            <div class="col-md-2"></div>

                        </div>
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8">

                                <h3>
                                    <br />
                                    <br />

                                </h3>
                                <hr />


                            </div>
                            <div class="col-md-2"></div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Full Name:</label>
                                    <asp:TextBox runat="server" ID="txtFullName" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RFVFullName" ControlToValidate="txtFullName" SetFocusOnError="true" ErrorMessage="Please Enter Your Full Name!" ForeColor="Red"></asp:RequiredFieldValidator>

                                </div>
                            </div>
                            <div class="col-md-6">

                                <div class="form-group">
                                    <label>User Name:</label>
                                    <asp:TextBox runat="server" ID="txtUserName" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RFVUserName" ControlToValidate="txtUserName" SetFocusOnError="true" ErrorMessage="Please Enter Your User Name!" ForeColor="Red"></asp:RequiredFieldValidator>


                                </div>

                            </div>

                        </div>

                        <div class="row">
                            
                            <div class="col-md-12">

                                <div class="form-group">
                                    <label>Email:</label>
                                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                                    <asp:RegularExpressionValidator runat="server" ID="REVEmail" ControlToValidate="txtEmail" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="Enter Valid Email" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>

                                <div class="form-group">
                                    <label>Password:</label>
                                    <asp:TextBox runat="server" ID="txtPasswordSign" CssClass="form-control" TextMode="Password"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label>Confirm Password:</label>
                                    <asp:TextBox runat="server" ID="txtConfirm" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    <asp:CompareValidator runat="server" ID="CVpassword" ControlToValidate="txtConfirm" ControlToCompare="txtPasswordSign" SetFocusOnError="true" Text="Password Didn't match" ForeColor="red"></asp:CompareValidator>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">

                                        <div class="form-group">
                                            <label>Address:</label>
                                            <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control"></asp:TextBox>

                                        </div>

                                    </div>
                                    <div class="col-md-6">

                                        <div class="form-group">
                                            <label>Phone:</label>
                                            <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control" ></asp:TextBox>

                                        </div>

                                    </div>
                                </div>

                            </div>
                            

                        </div>
                        <div class="row">
                            <div class="col-md-4"></div>
                                    <div class="col-md-4">
                                        <div class="form-group">

                                    <asp:Button runat="server" ID="butnSign" CssClass="btn btn-lg btn-success  " Text="Sign-Up" OnClick="butnSign_Click"></asp:Button>

                                </div>
                                    </div>
                                <div class="col-md-4"></div>
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <a href="Home.aspx">Back to Home<br />
                            </a>
                        </div>
                        <div class="col-md-2">
                            <a href="UserLogin.aspx">Log-In<br />
                            </a>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>
</asp:Content>
