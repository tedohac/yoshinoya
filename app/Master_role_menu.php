<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Master_role_menu extends Model
{
    public static function getMenu($role_id)
    {
        $roles = Master_role_menu::join('master_list_menus', 'master_list_menus.id_menu', '=', 'master_role_menus.menu_id')
                                ->where('role_id', $role_id)->get();
        return $roles;
    }
}
