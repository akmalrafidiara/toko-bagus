<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BookResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'title' => $this->title,
            'author(s)' => $this->authors,
            'ISBN' => $this->isbn,
            'pages' => $this->pages,
            'avarage_rating' => $this->rating->rating,
            'total_ratings' => count($this->rating->rating),
            'total_reviews' => count($this->review),
            'persentage' => $this->rating->rating,
            'book_review' => $this->review->review
        ];
    }
}
