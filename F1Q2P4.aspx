<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="F1Q2P4.aspx.cs" Inherits="SmartDegreeChoice.F1Q2P4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container container-fluid">
    <div class="card">
        <div class="card-body">

        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-3"><asp:Button ID="btnTerminate" class="btn btn-lg btn-danger" runat="server" Text="Terminate" OnClick="btnTerminate_Click" OnClientClick="return confirm('Are You Sure? You want to End Test without any result?'); " /></div>
            <div class="col-md-2"></div>
            <div class="col-md-3"> <asp:Button ID="btnRestart" class="btn btn-lg btn-warning" runat="server" Text="&nbsp;Restart&nbsp;&nbsp;" OnClick="btnRestart_Click" OnClientClick="return confirm('Are You Sure? You want to Restart your test?'); " /></div>
            <div class="col-md-2"></div>
            <br />
        </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <asp:Label id="lblQ1CS1" runat="server"> <h4>Do you have an interest in problem solving and how things work?</h4></asp:Label>
                </div>
                <div class="col-md-3"></div>
            </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <asp:RadioButton runat="server" ID="rdbtnAlways" Text="&nbsp; &nbsp;Almost Always " GroupName="Question"></asp:RadioButton> &nbsp; <br />
                    <asp:RadioButton runat="server" ID="rdbtnOften" Text="&nbsp; &nbsp; Often " GroupName="Question"></asp:RadioButton> &nbsp; <br />
                    <asp:RadioButton runat="server" ID="rdbtnSome" Text="&nbsp; &nbsp; Sometimes " GroupName="Question"></asp:RadioButton> &nbsp; <br />
                    <asp:RadioButton runat="server" ID="rdbtnRarely" Text="&nbsp; &nbsp; Rarely " GroupName="Question"></asp:RadioButton>&nbsp; <br />
                    <asp:RadioButton runat="server" ID="rdbtnNever" Text="&nbsp; &nbsp; Almost Never " GroupName="Question"></asp:RadioButton>
                </div>
                <div class="col-md-3"></div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-1">
                    <asp:Button ID="btnBack" class="btn btn-lg btn-info" runat="server" Text="&emsp;Back&emsp;" OnClick="btnBack_Click"/>
                </div>
                <div class="col-md-2">
                    
                </div>
                <div class="col-md-2"></div>
                <div class="col-md-2">
                  <asp:Button ID="btnNext" class="btn btn-lg btn-success" runat="server" Text="&emsp;Next&emsp;" OnClick="btnNext_Click"/>
                </div>
                <div class="col-md-2"></div>

            </div>
             <br />
        <br />
        <br />
        <br />
        
        </div>
    </div>
       

</div>
</asp:Content>
