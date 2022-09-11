<html>
<head>
<title>Buku Bagus</title>
<link rel="stylesheet" href="{{asset('css/style.css')}}">
</head>

<body>
<div class="header">
	<a href="{{route('home')}}">
	<span class="buku">Buku</span><span class="bagus">Bagus</span>
	</a>
	<div class="right">
		<a href="">John Doe</a>
    <a href="{{route('login_v')}}">Logout</a>
	</div>
</div>
<div class="container">
    @yield('content')
</body>
</html>