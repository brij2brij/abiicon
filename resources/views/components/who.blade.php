@if (Auth::guard('web')->check())
<p class="text-success">
  you are login in as <strong>users</strong>
</p>
@else
<p class="text-danger">
  you are logged out as a <strong>users</strong>
</p>
@endif

@if (Auth::guard('admin')->check())
<p class="text-success">
  you are login in as <strong>admin</strong>
</p>
@else
<p class="text-danger">
  you are logged out as a <strong>admin</strong>
</p>
@endif
