<%@page session="false"%>








<html>
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body id="myPage">
<jsp:include page="menu.jsp" />
   <!-- pop up style-->

  <style>
   
    {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>
<!-- end pop up style-->


  <style>
  h1 {
  display: block;
  font-size: 2em;
  margin-top: 0.67em;
  margin-bottom: 0.67em;
  background-color: #ddd;
  margin-left: 0;
  margin-right: 0;
  font-weight: bold;
}
 h4 {
  display: block;
  margin-top: 0.67em;
  margin-bottom: 0.67em;
  background-color: #ddd;
  margin-left: 0;
  margin-right: 0;
}
    body {background-color: WhiteSmoke;
    background-size:     cover;                      /* <------ */
    background-repeat:   no-repeat;
    background-position: center center; 
    background-image: url("https://miro.medium.com/max/3000/1*cRjevzZSKByeCrwjFmBrIg.jpeg");
  

    }
    .main {
  margin-top: 50px;

  margin-left: 150px;
  margin-right: 150px; /* Same as the width of the sidenav */
}

    .sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
}
    .sidenav a {
  padding: 6px 6px 6px 32px;
  text-decoration: none;
  font-size: 18px;
  color: #818181;
  display: block;
}

.sidenav a:hover {
  color: #f1f1f1;
  
}
</style>

<!--pop up code-->
  <script>
    // Show a half-transparent DIV to "shadow" the page
    // (the form is not inside, but near it, because it shouldn't be half-transparent)
    function showCover() {
      let coverDiv = document.createElement('div');
      coverDiv.id = 'cover-div';

      // make the page unscrollable while the modal form is open
      document.body.style.overflowY = 'hidden';

      document.body.append(coverDiv);
    }

    function hideCover() {
      document.getElementById('cover-div').remove();
      document.body.style.overflowY = '';
    }

    function showPrompt(text, callback) {
      showCover();
      let form = document.getElementById('prompt-form');
      let container = document.getElementById('prompt-form-container');
      document.getElementById('prompt-message').innerHTML = text;
      form.text.value = '';

      function complete(value) {
        hideCover();
        container.style.display = 'none';
        document.onkeydown = null;
        callback(value);
      }

      form.onsubmit = function() {
        let value = form.text.value;
        if (value == '') return false; // ignore empty submit

        complete(value);
        return false;
      };

      form.cancel.onclick = function() {
        complete(null);
      };

      document.onkeydown = function(e) {
        if (e.key == 'Escape') {
          complete(null);
        }
      };

      let lastElem = form.elements[form.elements.length - 1];
      let firstElem = form.elements[0];

      lastElem.onkeydown = function(e) {
        if (e.key == 'Tab' && !e.shiftKey) {
          firstElem.focus();
          return false;
        }
      };

      firstElem.onkeydown = function(e) {
        if (e.key == 'Tab' && e.shiftKey) {
          lastElem.focus();
          return false;
        }
      };

      container.style.display = 'block';
      form.elements.text.focus();
    }

    document.getElementById('show-button').onclick = function() {
      showPrompt("Enter employee id :)", function(value) {
        alert("You entered: " + value);
      });
    };
  </script>



<!--

<div class="form-popup" id="myForm">
  <form action="/action_page.php" class="form-container">
    <h1>Login</h1>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit" class="btn">Login</button>
    <button type="submit" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>

<script>
function openForm() {
  var txt;
  prompt();
  
   document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}

</script>-->

<!-- pop up end-->

  <div class="main">
<div class="w3-container w3-padding-left-400 w3-center" id="team">
<h1 style>Work_Bench</h1>

<div class="w3-row w3-padding-left-600"><br>
<div class="w3-quarter">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP_dIBHiqdHfvcfoI_y1QpSMBsVyZut8ikH7ku-VX3KG2KU-z5&s"
  alt="Boss" style="width:75%" class="w3-circle w3-hover-opacity">
  <h4>ADD</h4>
  <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button" title="Notifications">SELECT<i class="fa fa-caret-down"></i></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
      <a href="/addNewEmployee" id="show-button" class="w3-bar-item w3-button" >Employee</a><!-- pop up to enter id-->
      <a href="/addNewDepartment" class="w3-bar-item w3-button">Department</a><!-- pop up to enter id-->
    </div>
  </div>
  <p id="demo"></p>
</div>



<div class="w3-quarter">
  <img src=" https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6zVrG7xJF3MbM-0AtB6x0hrQimNMU3tmwxNEdBN5N16REewEzAQ&s"  alt="Boss" style="width:75%" class="w3-circle w3-hover-opacity">
  <h4>SEARCH</h4>
  <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button" title="Notifications">SELECT <i class="fa fa-caret-down"></i></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
      <a href="/getEmployees" class="w3-bar-item w3-button">Employee</a><!-- pop up to enter id-->
      <a href="/getDepartments" class="w3-bar-item w3-button">Department</a><!-- pop up to enter name-->
    </div>
  </div>
  
</div>

<div class="w3-quarter">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7ePEo1op7LV3gAgJUWbxECVxZHOZlNs7L2qPi0cb0ke3Gleks&s" alt="Boss" style="width:75%" class="w3-circle w3-hover-opacity">
  <h4>UPDATE</h4>
  <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button" title="Notifications">SELECT <i class="fa fa-caret-down"></i></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
      <a href="/updateEmployee" class="w3-bar-item w3-button">Employee</a>
      <a href="/updateDepartment" class="w3-bar-item w3-button">Department</a>
      
    </div>
  </div>
  
</div>

<div class="w3-quarter">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHg5Dy9Nn_PhKV02k-qW3nmxc9ushTnu-r3_LJniWjYpzIu-zk&s" alt="Boss" style="width:75%" class="w3-circle w3-hover-opacity">
  <h4>DELETE</h4>
  <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button" title="Notifications">SELECT<i class="fa fa-caret-down"></i></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block">
      <a href="/deleteEmployee" class="w3-bar-item w3-button">Employee</a>
      <a href="/deleteDepartment" class="w3-bar-item w3-button">Department</a>
      
    </div>
  </div>
  
</div>

</div>
</div>
</div>
</body>
</html>
