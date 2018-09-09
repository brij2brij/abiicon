<!doctype html>
<html @lang('en')>
<head>
  @include('apartials/_head')
  @include('apartials/_css')

</head>

<body>
@include('apartials/_nav')
<div class="container">
@yield('content')
</div>
@include('apartials/_footer')
@include('apartials/_script')

      @yield('script')
  </body>
</html>
