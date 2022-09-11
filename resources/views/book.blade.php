@extends('layouts.master')

@section('content')
<div class="book-title">
  {{$book->title}}
  </div>
  <div class="book-author">
  by {{$book->authors}}
  </div>
  <div class="book-rating">
  <div>Average Rating: 4,08 &#8901; 180.854 ratings &#8901; 2.785 reviews</div>
  <table>
  <tr><td>&#x2605;&#x2605;&#x2605;&#x2605;&#x2605;</td><td>43% (78.067)</td></tr>
  <tr><td>&#x2605;&#x2605;&#x2605;&#x2605;</td><td>32% (59.269)</td></tr>
  <tr><td>&#x2605;&#x2605;&#x2605;</td><td>16% (29.118)</td></tr>
  <tr><td>&#x2605;&#x2605;</td><td>4% (8.084)</td></tr>
  <tr><td>&#x2605;</td><td>3% (6.316)</td></tr>
  </tr>
  </table>
  </div>
  <div>ISBN {{$book->isbn}}</div>
  <div>{{$book->pages}} pages</div>
  
  <div class="review">
  <form>
  <div>
  <select>
    <option value="none" selected>none</option>
    <option value="5">&#x2605;&#x2605;&#x2605;&#x2605;&#x2605;</option>
    <option value="4">&#x2605;&#x2605;&#x2605;&#x2605;</option>
    <option value="3">&#x2605;&#x2605;&#x2605;</option>
    <option value="2">&#x2605;&#x2605;</option>
    <option value="1">&#x2605;</option>
  </select>
  <input type="submit"/>
  </div>
  </form>
  <form>
  <div>
  <textarea placeholder="Write Review..." cols="75" rows="5"></textarea>
  </div>
  <div>
  <input type="submit"/>
  </div>
  </form>
  </div>
  
  <div class="review-container">
  <div>
  <span class="reviewer-name"></span>
  <span class="reviewer-rating">
  rated it &#x2605;&#x2605;&#x2605;&#x2605;
  </span>
  <span style="float:right">4 Nov 2019 13:13</span>
  </div>
  <div class="review">Really good book</div>
  </div>
@endsection
