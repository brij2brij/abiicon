@extends('admin')
@section('title',"| Edit Tag")

@section('content')
<div class="row">
  <h1><span class="far fa-thumbs-up"></span>All Published Article</h1>
  <div class="col-md-12">
    <table class="table">
      <thead>
        <tr>
          <th>#</th>
          <th>Author</th>
          <th>Title</th>
          <th>Posted At</th>
          <th>View</th>
          <th>Delete</th>
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
          <a href="{{route('article.show',$article->id)}}"
                          class="btn btn-default btn-sn btn-primary"><span class="fas fa-eye"></span> View</a>

                  </th>
                  <th>
          {!! Form::open(['route'=>['article.destroy', $article->id],'method'=>'DELETE'] ) !!}

        {!! Form::submit('Delete',['class'=>'btn btn-danger']) !!}

        {!!Form::close() !!}

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
