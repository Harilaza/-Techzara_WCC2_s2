<?php



namespace App\Services\User;

use App\Models\User;

class userServices
{
    public function create($name, $contact)
    {
        $user = new User();
        $user->user_name = $name;
        $user->contact = $contact;

        $user->save();

        return $user;
    }

    public function searchUser($contact)
    {
        $user = User::where('contact', $contact)
            ->get();

        if($user->count() == 0){
            return "";
        }else{
            return $user;
        }
    }
}
