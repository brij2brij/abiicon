@extends('admin')

@section('title','| Article Edit')
@section('style')
  {!! Html::style('css/select2.min.css') !!}
@endsection
@section('content')
<div class="row">
  <div class="col-md-8">
      {!! Form::model($article,['route'=>['article.update',$article->id],'method'=>'PUT']) !!}

      <div class="row">
        <div class="col-md-6">
          {{ Form::label('type', 'Select type:') }}
          {{ Form::text('type', null, array('class' => 'form-control', 'required' => '', 'minlength' => '5', 'maxlength' => '255') ) }}
        </div>
        <div class="col-md-6">
          {{Form::label('category_id','Category:',['class'=>'form-spacing-top'])}}
          {{Form::select('category_id',$categories,null,['class'=>'form-control'])}}
        </div>
      </div>

      {{Form::label('title','Title:')}}
      {{Form::text('title',null,["class"=> 'form-control input-lg'])}}

      {{Form::label('slug','Slug:',['class'=>'form-spacing-top'])}}
      {{form::text('slug',null,["class"=>'form-control'])}}

      {{Form::label('tag','Tag',['class'=>'form-spacing-top'])}}
      {{Form::select('tags[]',$tags,null,['class'=>'select2-multi form-control','multiple'=>'multiple'])}}

      <span class="glyphicon glyphicon-align-justify"></span>
      {{ Form::label('dis', 'Please Add 2 Line description  for your Article:') }}
      {{ Form::textarea('dis', null, array('class' => 'form-control','rows'=>'2', 'required' => '', 'minlength' => '5', 'maxlength' => '150') ) }}



      {{Form::label('body','Body',['class'=>'form-spacing-top'])}}
      {{Form::textarea('body',null,["class"=> 'form-control'])}}


  </div>
<div class="col-md-4">
  <div class="well">
    <dl class="dl-horizontal">
      <dt>Created At:</dt>
      <dd>{{date('M j-Y, H:ia',strtotime($article->created_at))}}</dd>
    </dl>

    <dl class="dl-horizontal">
      <dt>Updated At:</dt>
      <dd>{{date('M j-Y ,H:ia',strtotime($article->updated_at))}}</dd>
    </dl>
    <hr>
    <div class="row">
      <div class="col-sm-6">
          {!!Html::linkRoute('article.show','Cancel',array($article->id),array('class'=>'btn btn-danger btn-block'))!!}
      </div>
      <div class="col-sm-6">
        {{Form::submit('Save Change',['class'=>'btn btn-warning btn-block',
          'name' => 'pending', 'value' => 'pending'])}}

      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        {{Form::submit( 'Save Change & Publish', ['class' => 'btn btn-success btn-lg btn-block',
          'style' => 'margin-top: 20px;', 'name' => 'publish', 'value' => 'publish']) }}
      </div>
    </div>
  </div>
</div>

</div>
      {!! form::close() !!}
    </div>
@endsection
@section('script')

 {!! Html::script('js/select2.min.js')!!}
 <script type="text/javascript">
   $('.select2-multi').select2();

 </script>
@endsection
