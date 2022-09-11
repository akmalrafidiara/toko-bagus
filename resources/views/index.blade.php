@extends('layouts.master')

@section('content')
<div class="books">
<a href="{{route('add_book')}}">Add Book</a>
<table>
<thead>
<tr>
<th>title</th>
<th>author</th>
<th>avg rating</th>
<th></th>
</tr>
</thead>
@foreach($book as $data)
<tbody>
	<tr>
		<td>{{$data->title}}</td>
		<td>{{$data->authors}}</td>
		<td>4.15</td>
		<td><a href="{{route('book', $data->id)}}">Open</a></td>
	</tr>
</tbody>
@endforeach
</table>
</div>
@endsection