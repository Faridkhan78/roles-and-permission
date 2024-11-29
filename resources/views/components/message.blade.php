@if(Session::has('success'))
<div class="bg-green-200 border-green-600 p-4 rounded-sm shadow-sm">
    {{-- Permission updated successfully --}}
    {{Session::get('success')}}
</div>
 @endif

 @if(Session::has('error'))
<div class="bg-red-200 border-red-600 p-4 rounded-sm shadow-sm">
    {{-- Permission updated failed --}}
    {{Session::get('error')}}
</div>
 @endif