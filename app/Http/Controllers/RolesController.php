<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Validator;
use Illuminate\Routing\Controllers\HasMiddleware;
use Illuminate\Routing\Controllers\Middleware;

class RolesController extends Controller  implements HasMiddleware
{
    public static function middleware(): array
    {
        return [
            new Middleware('permission:view rols', only: ['index']),
            new Middleware('permission:edit rols', only: ['edit']),
            new Middleware('permission:create roles', only: ['create']),
            new Middleware('permission:	delete rols', only: ['destroy']),
        ];
    }
    // This method will show  the rols page
    public function index()
    {
        $roles = Role::orderBy('name', 'ASC')->paginate(10);

        return view('roles.list', [
            'roles' => $roles
        ]);
    }

    // This method will show the form to create a new role
    public function create()
    {
        $permissions = Permission::orderBy('name', 'ASC')->get();

        return view('roles.create', [
            'permissions' => $permissions
        ]);
    }
    // This method will insert a new role  in DB
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:roles|min:3',
        ]);
        if ($validator->passes()) {
            // dd($request->permission);
            $role = Role::create([
                'name' => $request->name
            ]);

            if (!empty($request->permission)) {
                foreach ($request->permission as $name) {
                    $role->givePermissionTo($name);
                }
            }
            return redirect()->route('roles.index')->with('success', 'Role added successfully!');
        } else {
            return redirect()->route('roles.create')->withInput()->withErrors($validator);
        }
    }
    public function edit($id)
    {
        $role = Role::findOrFail($id);
        // $hasPermissions = $role->permission->pluck('name');
        // dd($role);
        $permissions = $role->permissions;
        //dd($hasPermissions);
        $hasPermissions = $role->permissions->pluck('name');

        $permissions = Permission::orderBy('name', 'ASC')->get();

        return view('roles.edit', [
            'permissions' => $permissions,
            'hasPermissions' => $hasPermissions,
            'role' => $role
        ]);
    }
    public function update($id, Request $request)
    {
        $role = Role::findOrFail($id);

        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:roles,name,' . $id . ',id'
        ]);
        if ($validator->passes()) {

            $role->name = $request->name;
            $role->save();

            if (!empty($request->permission)) {
                $role->syncPermissions($request->permission);
            } else {
                $role->syncPermissions([]);
            }
            return redirect()->route('roles.index')->with('success', 'Role upteded successfully!');
        } else {
            return redirect()->route('roles.edit', $id)->withInput()->withErrors($validator);
        }
    }
    public function destroy(Request $request)
    {
        $id = $request->id;
        $role = Role::find($id);
        if ($role == null) {
            session()->flash('error', 'Role not found!');
            return response()->json([
                'status' => false
            ]);
        }
        $role->delete();
        session()->flash('success', 'Role deleted successfully');
        return response()->json([
            'status' => true
        ]);
        // return redirect()->route('roles.index')->with('success', 'Role deleted successfully!');
    }
}
