<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>SAK Online Railway Booking System</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/shorthandcss@1.1.1/dist/shorthand.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:200,300,400,500,600,700,800,900&display=swap" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css" />
    <link rel="stylesheet"   href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
    <link rel="stylesheet" href="css/homepage.css" />

    <style>
        body {
            background: linear-gradient(to right, #d7d2cc 0%, #304352 100%);
            font-family: 'Muli', sans-serif; display: flex; margin: 0;
            justify-content: center; align-items: center; min-height: 100vh; 
        }
        .login-container {
            width: 550px; padding: 40px; background-color: #ffffff;
            border-radius: 10px; box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }
        .login-container h2 {
            font-size: 24px; font-weight: 500; color: #304352; text-align: center;
            margin-bottom: 20px; font-family: 'American Typewriter', sans-serif;
        }
        .login-container input, .login-container button {
            width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ddd;
            border-radius: 5px; font-family: 'American Typewriter', sans-serif;
        }
        .login-container button {
            background-color: #4CAF50; color: white; font-size: 16px; border: none; 
            cursor: pointer;
        }
        .login-container button:hover { background-color: #45a049; }
        
        .login-container .message { text-align: center; color: #304352; }
        
        .login-container .message a { color: #4CAF50; text-decoration: none; }
        
        .error { color: red; font-size: 0.9em; margin-top: 5px; }
    </style>
</head>

<body>

    <div class="login-container"> <h2>SAK Online Railway Booking System</h2>

        <form class="register-form" method="post" action="signUp.jsp" style="display: none;">
        
            <input type="text" placeholder="Username" name="username" required />
            <input type="email" placeholder="Email" name="email" required />
            <input type="password" placeholder="Password" name="password" required />
            
            <button type="submit">Create Account</button> 
            <p class="message">Already registered? <a href="#">Sign In</a> </p>
        </form>

        <form class="login-form" method="post" action="signIn.jsp">
        
		    <input type="text" placeholder="Username" name="username" required />
		    
		    <% if (session.getAttribute("usernameError") != null) { %>
		        <div class="error"><%= session.getAttribute("usernameError") %></div>
		        <% session.removeAttribute("usernameError"); %>
		    <% } %>
		
		    <input type="password" placeholder="Password" name="password" required />
		    
		    <% if (session.getAttribute("passwordError") != null) { %>
		        <div class="error"><%= session.getAttribute("passwordError") %></div>
		        <% session.removeAttribute("passwordError"); %>
		    <% } %>
		
		    <% if (session.getAttribute("generalError") != null) { %>
		        <div class="error"><%= session.getAttribute("generalError") %></div>
		        <% session.removeAttribute("generalError"); %>
		    <% } %>
		
		    <button type="submit">Sign In</button>
		    <p class="message">New user? <a href="#">Create an account</a></p>
		</form>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script>
        $('.message a').click(function() { $('form').animate({ height: "toggle", opacity: "toggle" }, "slow"); });
    </script>

</body>
</html>