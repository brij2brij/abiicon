@extends('admin')

@section('title','All Category')


@section('content')
  <div class="row">
    <div class="col-md-8">
      <h1>Category</h1>
      <table class="table">
        <thead>
          <tr>
            <th>#</th>
            <th>Name</th>
          </tr>
        </thead>
        <tbody>
          @foreach ($categories as $category)
                     <tr>
                       <th>{{$category->id}}</th>
                       <td>{{$category->name}}</td>
                     </tr>
                   @endforeach
        </tbody>
      </table>
    </div>
    <div class="col-md-4">
      <div class="well">
        {!!Form::open(['route'=>'category.store','method'=>'POST']) !!}
        <h2>New Category</h2>
        {{Form::label('name','Name')}}
        {{Form::text('name',null,['class'=>'form-control'])}}

        {{Form::label('slug','Slug')}}
        {{Form::text('slug',null,['class'=>'form-control'])}}

        {{Form::submit('Create New Category',['class'=>'btn btn-success btn-block form-spacing-top'])}}

        {!!Form::close()!!}
      </div>
    </div>
  </div>
@endsection
