<?php


namespace App\Services\Image;

use App\Models\Image;

class ImageServices
{
    public function create($toyName, $files, $toyId)
    {
        foreach ($files as $file) {
            $image_ext = $file->getClientOriginalExtension();
            $image_name = $toyName . rand(0, 10) . "." . $image_ext;


            $image_uri = "http://localhost:8000/storage/toy/" . $image_name;

            $file->storeAs("public/toy/", $image_name);

            $image = new Image();
            $image->toy_uri = $image_uri;
            $image->toy_id = $toyId ;

            $image->save();
        }
    }
}
