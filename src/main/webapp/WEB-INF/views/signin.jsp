<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>The Cube Factory</title>
  <style>
	body {
	  font-family: Arial, sans-serif;
	  background-color: #805AD5;
	  margin: 0;
	  padding: 0;
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  height: 100vh;
	}

	.container {
	  background-color: #fff;
	  padding: 40px;
	  border-radius: 10px;
	  box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	  width: 400px;
	}

	.logo {
	    font-size: 20px; /* Corrected 'text' to 'font-size' */
	    font-weight: bold;
	    text-align: center;
	    margin-bottom: 20px;
	    color: #333; /* Added color for better contrast */
	}

	.logo img {
	  max-width: 150px;
	}

	h1 {
	  text-align: center;
	  margin-bottom: 10px;
	}

	form {
	  display: flex;
	  flex-direction: column;
	}

	label {
	  font-weight: bold;
	  margin-bottom: 5px;
	}

	input {
	  padding: 10px;
	  margin-bottom: 20px;
	  border: 1px solid #ccc;
	  border-radius: 5px;
	}

	.remember-password {
	  display: flex;
	  align-items: center;
	  margin-bottom: 20px;
	}

	.remember-password input {
	  margin-right: 5px;
	}

	.sign-in-btn {
	  background-color: #805AD5;
	  color: #fff;
	  padding: 10px;
	  border: none;
	  border-radius: 5px;
	  cursor: pointer;
	  margin-bottom: 20px;
	}

	.forgot-password {
	  color: #805AD5;
	  text-decoration: none;
	  font-size: 14px;
	  margin-bottom: 20px;
	}

	.google-sign-in {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  background-color: #805AD5;
	  color: #fff;
	  padding: 10px;
	  border-radius: 5px;
	  cursor: pointer;
	  margin-bottom: 20px;
	  font-size: 14px;
	}

	.google-sign-in img {
	  width: 20px;
	  margin-right: 10px;
	}

	.sign-up {
	  color: #805AD5;
	  text-decoration: none;
	  font-size: 14px;
	  text-align: center;
	}
	.google-logo {
	      width: 20px;
	      height: 20px;
	      margin-right: 20px;
	 }
	
  </style>
</head>
<body>
  <div class="container">
    
    <h1>Welcome back</h1>
    <form method="post" action="/login">
      <label for="username">Username</label>
      <input type="text" id="username" name="username" placeholder="Enter your username">
      <label for="password">Password</label>
      <input type="password" id="password" name="password" placeholder="Enter your password">
      <div class="remember-password">
        <input type="checkbox" id="remember" name="remember">
        <label for="remember">Remember for 30 days</label>
      </div>
      <button type="submit" class="sign-in-btn">Sign in</button>
      <a href="#" class="forgot-password">Forgot password</a>
	  <a href="/oauth2/authorization/google" class="google-link" style="text-decoration: none;">
	    <div class="google-sign-in">
	      <img src="https://imgs.search.brave.com/V7sgagRATLlWoAL9kKkWlvM1Lymxxb-2sk6dz3LnYrk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy9j/L2MxL0dvb2dsZV8l/MjJHJTIyX2xvZ28u/c3Zn" alt="Google Logo" class="google-logo">
	      <span>Sign in with Google</span>
	    </div>
	  </a>
      <a href="/register" class="sign-up">Don't have an account? Sign up</a>
    </form>
  </div>
</body>
</html>