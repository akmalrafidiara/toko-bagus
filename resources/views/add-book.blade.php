@extends('layouts.master')

@section('content')
<form action="" class="form">
  <input type="text" placeholder="book title">
  <input type="text" placeholder="ISBN">
  <input type="number" min=1 placeholder="number of pages">
  <input type="text" placeholder="author" value="Jane Doe">
  <input type="text" placeholder="author">
  <button>add another author</button>
  <input type="submit" value="Add Book">
</form>
@endsection