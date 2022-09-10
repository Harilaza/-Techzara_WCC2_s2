<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Toy
 * 
 * @property int $toy_id
 * @property string|null $toy_name
 * @property int $status
 * @property string|null $exchange_to
 * @property int $user_id
 * 
 * @property User $user
 * @property Collection|Image[] $images
 *
 * @package App\Models
 */
class Toy extends Model
{
	protected $table = 'toys';
	protected $primaryKey = 'toy_id';
	public $timestamps = false;

	protected $casts = [
		'status' => 'int',
		'user_id' => 'int'
	];

	protected $fillable = [
		'toy_name',
		'status',
		'exchange_to',
		'user_id'
	];

	public function user()
	{
		return $this->belongsTo(User::class);
	}

	public function images()
	{
		return $this->hasMany(Image::class);
	}
}
