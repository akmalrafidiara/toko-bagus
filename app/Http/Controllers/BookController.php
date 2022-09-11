<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\BookResource;
use App\Book;
use App\Review;
use App\Rating;

class BookController extends Controller
{
    public function index(Request $request)
    {
        $last_id = $request->last_id;
        if($last_id == null) {
            $book = Book::paginate(20);
        } else {
            $book = Book::paginate($last_id);
        }
        $data['book'] = $book;
        return view('index', $data);
    }

    public function show($id)
    {
        $book = Book::find($id);
        if($book == null) {
            return response()->json([
                'message' => 'Book Not Found'
            ], 404);
        }
        $data['book'] = $book;
        // return BookResource::collection($book);
        return view('book', $data);
    }

    public function store(Request $request)
    {
        // $isbn 
        // str_split array_map
        $isbn = array_map('intval', str_split($request->isbn));
        $num = [10,9,8,7,6,5,4,3,2,1];
        $cek = [];
        for($i = 0;$i < 10; $i++) {
            $cek[] = $isbn[$i]*$num[$i];
        }
        $cekisbn = array_sum($cek);
        if($cekisbn%11 != 0) {
            return response()->json([
                'message' => 'invalid field'
            ], 422);
        }
        $validator = validator($request->all(), [
            'title' => 'required',
            'pages' => 'required',
            'isbn' => 'required|min:10|max:10',
            'authors' => 'required',
        ]);

        if($validator->fails()) {
            return response()->json([
                'message' => 'invalid field'
            ], 422);
        }

        Book::create([
            'title' => $request->title,
            'pages' => $request->pages,
            'isbn' => $request->isbn,
            'authors' => $request->authors,
            'added_by' => auth()->user()->id,
        ]);

        return response()->json([
            'message' => 'add book success'
        ], 201);
    }

    public function storeRating(Request $request, $id)
    {
        $book = Book::find($id);
        if($book == null) {
            return response()->json([
                'message' => 'Book Not Found'
            ], 404);
        }

        $validator = validator($request->all(), [
            'rating' => 'required|min:1|max:5|',
        ]);
        
        if($validator->fails()) {
            return response()->json([
                'message' => 'invalid field'
            ], 422);
        }

        Rating::create([
            'book_id' => $book->id,
            'user_id' => auth()->user()->id,
            'rating' => $request->rating
        ]);

        return response()->json([],204);
    }

    public function storeReview(Request $request, $id)
    {
        
        $validator = validator($request->all(), [
            'review' => 'required',
        ]);
        
        if($validator->fails()) {
            return response()->json([
                'message' => 'invalid field'
            ], 422);
        }

        $book = Book::find($id);
        if($book == null) {
            return response()->json([
                'message' => 'Book Not Found'
            ], 404);
        }

        Review::create([
            'book_id' => $book->id,
            'user_id' => auth()->user()->id,
            'review' => $request->review
        ]);

        return response()->json([],204);
    }
}
