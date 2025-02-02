<x-app-layout>
    <x-slot name="header">


        <div class="flex justify-between">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Permissions') }}

            </h2>
            {{-- @can('create permissions') --}}
                <a href="{{ route('permissions.create') }}"
                    class="bg-slate-700 text-sm rounded-md text-white px-3 py-2">Create</a>
            {{-- @endcan --}}
        </div>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            <x-message></x-message>

            {{-- @if (Session::has('success'))
            <div class="bg-green-200 border-green-600 p-4 rounded-sm shadow-sm">
                {{-- Permission updated successfully --}}
            {{-- {{Session::get('success')}}
            </div>
             @endif  --}}

            {{-- @if (Session::has('error'))
            <div class="bg-red-200 border-red-600 p-4 rounded-sm shadow-sm">
                {{-- Permission updated successfully --}}
            {{-- {{Session::get('error')}}
            </div>
             @endif  --}}

            {{-- <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">

                </div>
            </div> --}}
            {{-- <input type="hidden" name="_token" value="{{ csrf_token() }}"> --}}

            <table class="w-full">
                <thead class="bg-gray-50">
                    <tr class="border-b">
                        <th class="px-6 py-3 text-left" width="60">#</th>
                        <th class="px-6 py-3 text-left">Name</th>
                        <th class="px-6 py-3 text-left" width="180">Created</th>
                        <th class="px-6 py-3 text-center" width="180">Action</th>
                    </tr>
                </thead>
                <tbody class="bg-white">
                    @if ($permissions->isNotEmpty())
                        @foreach ($permissions as $permission)
                            <tr class="border-b">
                                <td class="px-6 py-3 text-left">{{ $permission->id }}</td>
                                <td class="px-6 py-3 text-left">{{ $permission->name }} </td>
                                <td class="px-6 py-3 text-left">
                                    {{ \Carbon\Carbon::parse($permission->created_at)->format('d M,Y') }}</td>
                                <td class="px-6 py-3 text-center">

                                    {{-- @can('edit permissions') --}}
                                        <a href="{{ route('permissions.edit', $permission->id) }}"
                                            class="bg-slate-700 text-sm rounded-md text-white px-3 py-2 hover:bg-slate-600">Edit</a>
                                    {{-- @endcan --}}


                                    {{-- @can('delete permissions') --}}
                                        <a href="javascript:void(0);" onclick="deletePermissions({{ $permission->id }})"
                                            class="bg-red-600 text-sm rounded-md text-white px-3 py-2 hover:bg-red-500">Delete</a>
                                    {{-- @endcan --}}
                                </td>

                            </tr>
                        @endforeach
                    @endif

                    {{-- <tr class="border-b">
                    <td class="px-6 py-3 text-left"></td>
                    <td class="px-6 py-3 text-left"> </td>
                    <td class="px-6 py-3 text-left"></td>
                    <td class="px-6 py-3 text-left"></td>

                </tr> --}}
                </tbody>
            </table>
            <div class="my-3">
                {{ $permissions->links() }}
            </div>
        </div>
    </div>
    <x-slot name="script">
        <script>
            function deletePermissions(id) {
                if (confirm('Are you sure you want to delete?')) {
                    $.ajax({
                        type: 'DELETE', // Use 'DELETE' as the HTTP method
                        url: "{{ route('permissions.destroy') }}", // Ensure this route accepts DELETE requests
                        data: {
                            id: id,
                            _token: '{{ csrf_token() }}'
                        }, // Data to be sent to the server
                        success: function(response) {
                            window.location.href = '{{ route('permissions.index') }}';
                        }
                    });
                }
            }
        </script>
    </x-slot>
</x-app-layout>
