@extends('main')
@section('title','| Contact Us')
@section('content')
<div class="row">
      <div class="col-md-8">
        <h1>Contact Us</h1>
        <hr>
        <form action="{{url('contact')}}" method="POST">
          {{ csrf_field() }}
      <div class="form-group">
        <label name="email">Email address</label>
        <input id="email" name="email" class="form-control" placeholder="name@example.com">
      </div>
      <div class="form-group">
        <label name="subject">subject</label>
        <input id="subject" name="subject" class="form-control" placeholder="Subject">
      </div>


      <div class="form-group">
        <label name="message" >Your Message</label>
        <textarea id="message" name="message" class="form-control"  placeholder="Your Message" rows="3"></textarea>
      </div>


  <input type="submit" value="Send Message" class="btn btn-primary">
    </form>
      </div>
      <div class="col-md-4">

      </div>
</div>
@endsection
