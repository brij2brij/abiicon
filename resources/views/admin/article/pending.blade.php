@extends('admin')
@section('title',"| Edit Tag")

@section('content')
<div class="row">
  <h1><span class="far fa-clock"></span> Pendning Article</h1>
  <div class="col-md-12">
    <table class="table">
      <thead>
        <tr>
          <th>#</th>
          <th>Author</th>
          <th>Title</th>
          <th>Posted At</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        @foreach ($articles as $article)
                   <tr>
                     <th>{{$article->id}}</th>
                      <td>{{$article->user_id}}</td>
                     <td>{{$article->title}}</td>
                     <td>{{$article->created_at}}</td>
                     <th>
                       <a href="{{route('article.show',$article->id)}}" class="btn btn-default btn-sn btn-primary"><span class="fas fa-eye"></span> View</a>


                      </th>
                   </tr>
        @endforeach

      </tbody>
    </table>
  </div>
  <div class="text-center">

     {!! $articles->links(); !!}
   </div>
</div>
@endsection
