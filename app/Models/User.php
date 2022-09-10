<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class User
 * 
 * @property int $user_id
 * @property string $user_name
 * @property int|null $contact
 * 
 * @property Collection|Toy[] $toys
 *
 * @package App\Models
 */
class User extends Model
{
	protected $table = 'users';
	protected $primaryKey = 'user_id';
	public $timestamps = false;

	protected $casts = [
		'contact' => 'int'
	];

	protected $fillable = [
		'user_name',
		'contact'
	];

	public function toys()
	{
		return $this->hasMany(Toy::class);
	}
}
