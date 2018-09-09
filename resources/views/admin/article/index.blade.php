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
<p style="margin-top:50px">Tagged as</p>
<div class="tag tag-lg">
      @foreach ($article->tags as $tag)
        <span class="badge badge-secondary">{{$tag->name}}</span>
      @endforeach
</div>
<hr>
<p> <b>Type</b> </p>
<div class="">
  {{$article->type}}
</div>
<hr>
<p> <b>Category</b> </p>
<div class="">
  {{$article->category->name}}
</div>

</div>

<div class="col-md-8">
  <h1>{{ $article->title }}</h1><br>

  <ul class="list-unstyled">
    <li class="media">
      @if ($article->user->image==null )
          <img class="mr-3 user" src="/icon/man.png" >
      @else
        <img class="mr-3 user" src="/images/{{$article->user->image}}" alt="Generic placeholder image">
      @endif
      <div class="media-body">
        <p class="mt-0 mb-1" style="color:orange"><b>{{$article->user->name}}</b> </p>
        <p>{{ date('F dS, Y ' ,strtotime($article->created_at)) }} , <b style="color:gray">Posted On:-</b> {{$article->category->name}}</p>

      </div>
    </li>
  </ul>




  <p> <b>{!!$article->dis!!}</b> </p>
  <p class="lead"> {!! $article->body !!} </p>
  <hr>
  <h3 class="comments-title orange"><span class="fas fa-comments"></span> {{$article->comments()->count()}}
  @if ($article->comments()->count() < 2)
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
     						@foreach($article->comments as $comment)
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
                    <a href="{{ route('comments.edit', $comment->id) }}"
                            class="btn btn-xs btn-primary"><span class="fas fa-pencil-alt"></span></a></td>
                    <td>
                            {{ Form::open(['route' => ['comments.destroy', $comment->id], 'method' => 'DELETE']) }}
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
      <a href="{{route('article.edit',$article->id)}}" class="btn btn-secondary"><span class="far fa-edit" ></span>Edit</a>
<hr>
  </div>

</div>
    </div>

  </div>
</div>
</div>




@endsection
