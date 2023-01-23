<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="EntityTask2.WebForm8" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<style>
			    .card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid transparent;
    border-radius: .25rem;
    margin-bottom: 1.5rem;
    box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
}
				.card-body{
					height:335px;
				}
.me-2 {
    margin-right: .5rem!important;
}
			</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <div class="container">
		<div class="main-body">
			<div class="row">
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<asp:Image ID="Image1" alt="Admin" class="rounded-circle p-1 bg-primary" width="110" runat="server" />	
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="card">
						<div class="card-body">
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Full Name</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<asp:Label ID="Name" runat="server" Text=""></asp:Label>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Email</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<asp:Label ID="Email" runat="server" Text=""></asp:Label>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Phone</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<asp:Label ID="Phone" runat="server" Text=""></asp:Label>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Age</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<asp:Label ID="Age" runat="server" Text=""></asp:Label>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">City</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<asp:Label ID="City" runat="server" Text=""></asp:Label>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-9 text-secondary">
									

									<asp:Button ID="Delete" class="btn btn-primary px-4" runat="server" Text="Delete" OnClick="Delete_Click"  />

								</div>
							</div>
						</div>
					</div>
					
						
					
				</div>
			</div>
		</div>
	</div>
        
	</asp:Content>        				
