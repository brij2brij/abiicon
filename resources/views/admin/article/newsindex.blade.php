@extends('admin')

@section('title','| View Post')

@section('style')
<link rel="stylesheet" href="/css/admincss.css">
<script type="text/javascript" src="/js/prism.js"></script>
<link rel="stylesheet" href="/css/prism.css">
<link rel="stylesheet" href="/css/comment.css">
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">

@endsection

@section('content')

  <div class="row">
  <div class="col-md-2">

  </div>

  <div class="col-md-8">
  <h1>{{ $news->title }}</h1><br>

  <ul class="list-unstyled">
    <li class="media">

          <img class="mr-3 user" src="/icon/man.png" >

      <div class="media-body">
        <p class="mt-0 mb-1" style="color:orange"><b>{{$news->user}}</b> </p>
        <p> <b>Posted on:</b>  {{ date('F dS, Y ' ,strtotime($news->created_at)) }}</p>

      </div>
    </li>
  </ul>
  <p> <b>{!!$news->dis!!}</b> </p>
  <p class="lead"> {!! $news->body !!} </p>
  <hr>
  <hr>
  <h3 class="comments-title orange"><span class="fas fa-comments"></span> {{$news->ncomments()->count()}}
  @if ($news->ncomments()->count() < 2)
    Comment
  @else
    Comments
  @endif
     </h3>
     <hr>
     <table class="table">
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Profile</th>
                  <th>Date</th>
                  <th>Comment</th>
                  <th>Edit</th>
                  <th>Delete</th>
                  <th width="70px"></th>
                </tr>
              </thead>

              <tbody>
                @foreach($news->ncomments as $comment)
                <tr>
                  <th>{{ $comment->user->name }}</th>

                  <td>
                    @if ($comment->user->image==null )
                      <img src="/icon/man.png" class="img-circle avatar" alt="user profile image">

                    @else
                      <img src="/images/{{$comment->user->image}}" style="width:50px;height:50px"  class="img-circle avatar" alt="user profile image">
                    @endif
                  </td>

                  <td>{{ date('F dS, Y' ,strtotime($comment->created_at)) }}</td>
                  <td>{{ $comment->comment }}</td>
                  <td>
                    <a href="{{ route('news_comment.edit', $comment->id) }}"
                            class="btn btn-xs btn-primary"><span class="fas fa-pencil-alt"></span></a></td>
                    <td>
                            {{ Form::open(['route' => ['news_comments.destroy', $comment->id], 'method' => 'DELETE']) }}
                            {{ Form::submit( 'delete',['class'=>'btn btn-xs btn-danger']) }}
                            {{ Form::close() }}
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>

                <hr>



</div>
  <div class="col-md-2">
  <div class="">
  <hr>
      <a href="{{route('newpost.edit',$news->id)}}" class="btn btn-secondary"><span class="far fa-edit" ></span>Edit</a>
  <hr>
  </div>

  </div>
    </div>

  </div>
  </div>
  </div>
@endsection
