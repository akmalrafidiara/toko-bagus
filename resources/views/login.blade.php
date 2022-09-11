<html>
<head>
<title>Buku Bagus</title>
<link rel="stylesheet" href="{{asset('css/style.css')}}">

</head>

<body>
<div class="header"><span class="buku">Buku</span><span class="bagus">Bagus</span></div>
<div class="container">
<div class="form">
  <header>Login</header>
<form action="{{route('login')}}" method="post">
    {{csrf_field()}}
    <input type="text" placeholder="Username" name="username">
    <input type="password" placeholder="Password" name="password">
    <input type="submit" value="Login">
  </form>
</div>
<div class="form">
  <header>Register</header>
<form action="{{route('register')}}" method="post">
    {{csrf_field()}}
    <input type="text" placeholder="First Name" name="first_name">
    <input type="text" placeholder="Last Name" name="last_name">
    <input type="text" placeholder="Username" name="username">
    <input type="password" placeholder="Password" name="password">
    <input type="password" placeholder="Confirm Password" name="con_password">
    <input type="submit" value="Register">
  </form>
</div>
</body>
</html>