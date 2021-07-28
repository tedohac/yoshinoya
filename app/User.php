<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    protected $table = 'master_users';
    protected $primaryKey = 'username_email';
    protected $hidden = array('user_password');
    protected $fillable = [
        'username_email', 'user_password', 'role_id'
    ];
    
    public function getAuthPassword()
    {
        return $this->user_password;
    }

    public function getRoleIdAttribute($value)
    {
        return $value;
    }

    public function getUsernameEmailAttribute($value)
    {
        return $value;
    }
}
