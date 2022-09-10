<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Toy;
use App\Models\User;
use App\Services\Image\ImageServices as ImageServices;
use App\Services\Toy\ToyServices as ToyServices;
use App\Services\User\userServices as UserServices;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class exchangeController extends Controller
{

    public function createToy(Request $request)
    {
        $validated = $request->validate([
            'user_name' => 'required',
            'contact' => 'required|digits:12',
            'toy_name' => 'required',
            'exchange_to' => 'required',
            'toy_images.*' => 'mimes:jpg,png,jpeg,gif,webp'
        ]);

        if ($request->hasFile('toy_images') == false) {
            return response()->json([
                'message' => "You must upload at least one image"
            ], 500);
        }
        $checkUser = (new UserServices)->searchUser($validated['contact']);

        DB::beginTransaction();
        try {

            if ($checkUser == "") {

                $user = (new UserServices)->create($validated['user_name'], $validated['contact']);
                $toy = (new ToyServices)->create($validated['toy_name'], $validated['exchange_to'], $user->user_id);
                (new ImageServices)->create($validated['toy_name'], $request->file('toy_images'), $toy->toy_id);

                DB::commit();
                return response()->json([
                    'message' => 'You and your toy are succesfully added',
                ], 200);
            } else {
                $toy = (new ToyServices)->create($validated['toy_name'], $validated['exchange_to'], $checkUser[0]->user_id);
                (new ImageServices)->create($validated['toy_name'], $request->file('toy_images'), $toy->toy_id);
                DB::commit();
                return response()->json([
                    'message' => 'Toy added succesfully into your collection',
                ], 201);
            }
        } catch (\Throwable $th) {
            DB::rollBack();
            throw $th;
        }
    }

    public function deactivate($id)
    {
        try {
            $toy = (new ToyServices)->update($id, 0);

            if ($toy == "same") {

                return response()->json([
                    'message' => "this item is already disabled"
                ], 400);
            } else {
                return response()->json([
                    'message' => $toy->toy_name . " is disable for exchange"
                ], 200);
            }
        } catch (\Throwable $th) {
            return response()->json([
                'message' => "Can't disabled this toy",
                'error' => $th
            ], 500);
        }
    }

    public function reactivate($id)
    {
        try {
            $toy = (new ToyServices)->update($id, 1);
            if ($toy == "same") {

                return response()->json([
                    'message' => "this item is already enabled"
                ], 400);
            } else {
                return response()->json([
                    'message' => $toy->toy_name . " is enable for exchange"
                ], 200);
            }
        } catch (\Throwable $th) {
            return response()->json([
                'message' => "Can't enabled this toy",
                'error' => $th
            ], 500);
        }
    }

    public function listAlltoy()
    {
        $toys = (new toyServices)->getAllToy();
        foreach ($toys as $toy) {
            if ($toy[0]->status == 1) {
                $toy[0]->toy_status = "actif";
                $toy[0]->image_uri = (new ToyServices)->uriArray($toy[0]->toy_id);
            } else {
                $toy[0]->toy_status = "inactif";
                $toy[0]->image_uri = (new ToyServices)->uriArray($toy[0]->toy_id);
            }
        }

        return response()->json($toys, 200);
    }
    public function listAllToyPerPage($per_page)
    {
        $toys = (new toyServices)->getAllToyPerPage($per_page);
        foreach ($toys as $toy) {
            if ($toy[0]->status == 1) {
                $toy[0]->toy_status = "actif";
                $toy[0]->image_uri = (new ToyServices)->uriArray($toy[0]->toy_id);
            } else {
                $toy[0]->toy_status = "inactif";
                $toy[0]->image_uri = (new ToyServices)->uriArray($toy[0]->toy_id);
            }
        }

        return response()->json($toys, 200);
    }


    public function listActiveToy()
    {
        $toys = (new ToyServices)->getListToy(1);

        foreach ($toys as $toy) {
            $toy[0]->toy_status = "actif";
            $toy[0]->image_uri = (new ToyServices)->uriArray($toy[0]->toy_id);
        }

        return response()->json($toys, 200);
    }

    public function listDeactiveToy()
    {
        $toys = (new ToyServices)->getListToy(0);

        foreach ($toys as $toy) {
            $toy[0]->toy_status = "inactif";
            $toy[0]->image_uri = (new ToyServices)->uriArray($toy[0]->toy_id);
        }

        return response()->json($toys, 200);
    }

    public function listPerPageActive($per_page)
    {
        $toys = (new ToyServices)->getListPerPage($per_page, 1);

        foreach ($toys as $toy) {
            $toy[0]->toy_status = "actif";
            $toy[0]->image_uri = (new ToyServices)->uriArray($toy[0]->toy_id);
        }

        return response()->json($toys, 200);
    }

    public function listPerPageDeactive($per_page){

        $toys = (new ToyServices)->getListPerPage($per_page, 0);

        foreach ($toys as $toy) {
            $toy[0]->toy_status = "in(actif";
            $toy[0]->image_uri = (new ToyServices)->uriArray($toy[0]->toy_id);
        }

        return response()->json($toys, 200);
    }
}
