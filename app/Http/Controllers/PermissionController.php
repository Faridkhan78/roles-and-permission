<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Validator;
use Illuminate\Routing\Controllers\HasMiddleware;
use Illuminate\Routing\Controllers\Middleware;
// use Spatie\Permission\Contracts\Permission;

class PermissionController extends Controller implements HasMiddleware
{
    public static function middleware(): array
    {
        return[
            new Middleware('permission:view permission',only:['index']),
            new Middleware('permission:edit permission',only:['edit']),
            new Middleware('permission:create permission',only:['create']),
            new Middleware('permission:delete permission',only:['destroy']),
        ];

    }
    // This method will show the permissions page 
    public function index()
    {
        $permissions = Permission::orderBy('created_at', 'DESC')->paginate(25);
        return view('permissions.list', [
            'permissions' => $permissions
        ]);
    }

    // This method will show  create  permission page
    public function create()
    {
        return view('permissions.create');
    }
    // This method will show insert permission in DB
    public function store(Request $request)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:permissions|min:3',
        ]);
        if ($validator->passes()) {
            Permission::create([
                'name' => $request->name
            ]);
            return redirect()->route('permissions.index')->with('success', 'Permission added successfully!');
        } else {
            return redirect()->route('permissions.create')->withInput()->withErrors($validator);
        }
    }
    // This method will show edit permission page
    public function edit($id)
    {
        $permissions = Permission::findOrFail($id);
        return view('permissions.edit', [
            'permission' => $permissions
        ]);
    }
    // This method will update permission 
    public function update($id, Request $request)
    {
        $permission = Permission::findOrFail($id);

        $validator = Validator::make($request->all(), [
            'name' => 'required|min:3|unique:permissions,name,' . $id . ',id'
        ]);
        if ($validator->passes()) {
            // Permission::create([
            //     'name' => $request->name
            // ]);
            $permission->name = $request->name;
            $permission->save();
            return redirect()->route('permissions.index')->with('success', 'Permission updated successfully!');
        } else {
            return redirect()->route('permissions.edit', $id)->withInput()->withErrors($validator);
        }
    }

    // This method will delete permission in DB 
    public function destroy(Request $request)
    {
        $id = $request->id;
        $permission =  Permission::find($id);

        if ($permission == null) {
            session()->flash('error', 'Permission not found!');
            return response()->json([
                'status' => false
            ]);
        }
        
        $permission->delete();
        session()->flash('success', 'Permission deleted successfully!');
        return response()->json([
            'status' => true
        ]);
    }
}
