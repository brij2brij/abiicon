@extends('admin')
@section('title',"| Edit Tag")

@section('content')
<div class="row">
  <h1><span class="far fa-clock"></span> All News</h1>
  <div class="col-md-12">
    <table class="table">
      <thead>
        <tr>
          <th>#</th>

          <th>Title</th>
          <th>Status</th>
          <th>Posted At</th>
          <th>View</th>
          <th>Delete</th>
        </tr>
      </thead>
      <tbody>
        @foreach ($allnews as $allnew)
                   <tr>
                     <th>{{$allnew->id}}</th>
                     <td>{{$allnew->title}}</td>
                     <td>{{$allnew->status}}</td>
                     <td>{{$allnew->created_at}}</td>
                     <th>
                       <a href="{{route('news.view',$allnew->id)}}" class="btn btn-sn btn-primary"><span class="fas fa-eye"></span> View</a>
                      </th>
                      <th>
                        {!! Form::open(['route'=>['newpost.destroy', $allnew->id],'method'=>'DELETE'] ) !!}

                      {!! Form::submit('Delete',['class'=>'btn btn-danger']) !!}

                      {!!Form::close() !!}
                      </th>
                   </tr>
        @endforeach

      </tbody>
    </table>
  </div>
  <div class="text-center">

     {!! $allnews->links(); !!}
   </div>
</div>
@endsection
