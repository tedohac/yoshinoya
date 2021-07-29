<?php

namespace App\Http\Middleware;

use App\Master_role_menu;
use App\User;
use Auth;
use DB;
use Closure;

class CekRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $url_link)
    {
        if (Auth::check())
        {
            DB::enableQueryLog();
            $roles = Master_role_menu::join('master_roles', 'master_roles.role_id', '=', 'master_role_menus.role_id')
                        ->join('master_users', 'master_users.role_id', '=', 'master_roles.role_id')
                        ->join('master_list_menus', 'master_list_menus.id_menu', '=', 'master_role_menus.menu_id')
                        ->where('username_email', Auth::User()->username_email)
                        ->where('url_link', $url_link)->get();
            // dd(DB::getQueryLog());
            if(empty($roles)) return abort(403, 'Unauthorized');
            return $next($request);
        }
        else return abort(403, 'Unauthorized');
    }
}
