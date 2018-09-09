<!doctype html>
<html @lang('en')>
<head>
  @include('partials/_head')
  @include('partials/_css')

</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
@include('partials/_nav')

<div class="container">
  <div class="" style="margin-top:50px">

  </div>
    @include('partials._message')

    @yield('content')
</div>
@include('partials/_footer')
@include('partials/_script')

      @yield('script')
  </body>
</html>
