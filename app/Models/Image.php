<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Image
 * 
 * @property int $image_id
 * @property string|null $toy_uri
 * @property int $toy_id
 * 
 * @property Toy $toy
 *
 * @package App\Models
 */
class Image extends Model
{
	protected $table = 'images';
	protected $primaryKey = 'image_id';
	public $timestamps = false;

	protected $casts = [
		'toy_id' => 'int'
	];

	protected $fillable = [
		'toy_uri',
		'toy_id'
	];

	public function toy()
	{
		return $this->belongsTo(Toy::class);
	}
}
