<?php



namespace App\Services\Toy;

use App\Models\Toy;

class ToyServices
{
    public function create($name, $exchangeTo, $userId)
    {
        $toy = new Toy();

        $toy->toy_name = $name;
        $toy->status = 1;
        $toy->exchange_to = $exchangeTo;
        $toy->user_id = $userId;

        $toy->save();

        return $toy;
    }
    public function update($id, $status)
    {
        $toy = Toy::find($id);

        if($toy->status == $status){
            return 'same';
        }else {
            $toy->status = $status;
            $toy->update();

            return $toy;
        }

    }
    public function uriArray($id)
    {
        $toys = Toy::join('images', 'toys.toy_id', 'images.toy_id')
            ->where('toys.toy_id', $id)
            ->get();

        $image = array();
        foreach ($toys as $toy) {
            array_push($image, $toy->toy_uri);
        }
        return $image;
    }
    public function getListToy($status)
    {
        return Toy::select('users.user_name', 'users.contact', 'toys.toy_id', 'toys.toy_name', 'toys.exchange_to', 'toys.created_at')
            ->join('users', 'users.user_id', 'toys.user_id')
            ->where('status', $status)
            ->paginate(10)->groupBy('toy_id');

    }
    public function getListPerPage($per_page, $status)
    {
        return Toy::select('users.user_name', 'users.contact', 'toys.toy_id', 'toys.toy_name', 'toys.exchange_to', 'toys.created_at')
            ->join('users', 'users.user_id', 'toys.user_id')
            ->where('status', $status)
            ->paginate($per_page)->groupBy('toy_id');
    }
    public function getAllToy()
    {
        return Toy::select('users.user_name', 'users.contact', 'toys.toy_id', 'toys.toy_name', 'toys.exchange_to', 'toys.created_at', 'toys.status')
            ->join('users', 'users.user_id', 'toys.user_id')
            ->paginate(10)->groupBy('toy_id');
    }
    public function getAllToyPerPage($per_page)
    {
        return Toy::select('users.user_name', 'users.contact', 'toys.toy_id', 'toys.toy_name', 'toys.exchange_to', 'toys.created_at', 'toys.status')
            ->join('users', 'users.user_id', 'toys.user_id')
            ->paginate($per_page)->groupBy('toy_id');
    }
}
