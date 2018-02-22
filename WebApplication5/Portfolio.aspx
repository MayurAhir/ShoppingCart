<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Portfolio.aspx.cs" Inherits="WebApplication5.Portfolio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
   <style>
       body {
  padding-top: 54px;
}

@media (min-width: 992px) {
  body {
    padding-top: 56px;
  }
}

.portfolio-item {
  margin-bottom: 30px;
}

.pagination {
  margin-bottom: 30px;
}

img
{
    border-style: none;
    border-color: inherit;
    border-width: 0;
    max-width: 100%;
    height: 150px;
    width: 250px; /* ie8 */
}

       </style> 
    <div class="container">

      <!-- Page Heading -->
      <h1 class="my-4">Some Background Details
        <small></small>
      </h1>

      <div class="row">
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
          
            <a href="https://www.lambtoncollege.ca/"><img  src="/files/lambton.png" alt="Lambton College"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="https://www.lambtoncollege.ca/custom/LambtonApps/Programs/International.aspx?id=2147507191&location=Toronto">Computer Software and Database Development</a>
              </h4>
              <p class="card-text">Studid Computer software and database development course at lambton college in toronto<br>learnt C#,Java,Asp.net programming,HTML5,CSS3,Jquery,Xml,Json etc </p>
            </div>
          </div>
        </div>
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
      
            <a href="https://www.west.com/"><img class="card-img-top" src="/files/west.png" alt="West Corporation"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">west corporation</a>
              </h4>
              <p class="card-text">Worked as Web-Analyst Co-op student.Performed QA testing of school messager project sites.</p>
            </div>
          </div>
        </div>
           <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
         
            <a href="https://www.linkedin.com/in/mayur-ahir-22a75a123/"><img class="card-img-top" src="/files/linkedIn.png" alt="LinkedIn"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="https://www.linkedin.com/in/mayur-ahir-22a75a123/">LinkedIn Profile</a>
              </h4>
              <p class="card-text">LinkedIn profile</p>
            </div>
          </div>
        </div>
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
          
            <a href="https://github.com/MayurAhir/AirlineReservationSystem"><img class="card-img-top" src="/files/AirLine.png" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="https://github.com/MayurAhir/AirlineReservationSystem">Airline Reservation Desktop App</a>
              </h4>
              <p class="card-text">Airline Reservation system is desktop application devloped in c#.net and used sql server as storage</p>
            </div>
          </div>
        </div>
       
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
          
            <a href="https://www.youracclaim.com/badges/efd77391-c9db-4869-b55d-c1ed09aecbb1/public_url"><img class="card-img-top" src="/files/microsoft.png" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="https://www.youracclaim.com/badges/efd77391-c9db-4869-b55d-c1ed09aecbb1/public_url"">Microsoft Certified C# Programmer</a>
              </h4>
              <p class="card-text">Having Microsoft certification in C# Programming. Implementable knowldge of Data Access,Create and Use types,Security Implementation</p>
            </div>
          </div>
        </div>
        
     
    </div>
    </div>
</asp:Content>
