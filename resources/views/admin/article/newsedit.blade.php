@extends('admin')

@section('title','| Article Edit')
@section('style')
  {!! Html::style('css/select2.min.css') !!}
@endsection
@section('content')
<div class="row">
  <div class="col-md-8">
      {!! Form::model($post,['route'=>['newpost.update',$post->id],'method'=>'PUT']) !!}


      {{Form::label('title','Title:')}}
      {{Form::text('title',null,["class"=> 'form-control input-lg'])}}

      {{Form::label('slug','Slug:',['class'=>'form-spacing-top'])}}
      {{form::text('slug',null,["class"=>'form-control'])}}


      <span class="glyphicon glyphicon-align-justify"></span>
      {{ Form::label('dis', 'Please Add 2 Line description  for your Article:') }}
      {{ Form::textarea('dis', null, array('class' => 'form-control','rows'=>'2', 'required' => '', 'minlength' => '5', 'maxlength' => '150') ) }}


      {{Form::label('body','Body',['class'=>'form-spacing-top'])}}
      {{Form::textarea('body',null,["class"=> 'form-control my-editor'])}}


  </div>
<div class="col-md-4">
  <div class="well">
    <dl class="dl-horizontal">
      <dt>Created At:</dt>
      <dd>{{date('M j-Y, H:ia',strtotime($post->created_at))}}</dd>
    </dl>

    <dl class="dl-horizontal">
      <dt>Updated At:</dt>
      <dd>{{date('M j-Y ,H:ia',strtotime($post->updated_at))}}</dd>
    </dl>
    <hr>
    <div class="row">
      <div class="col-sm-6">
          {!!Html::linkRoute('news.view','Cancel',array($post->id),array('class'=>'btn btn-danger btn-block'))!!}
      </div>
      <div class="col-sm-6">
        {{Form::submit('Save Change',['class'=>'btn btn-warning btn-block',
          'name' => 'draft', 'value' => 'draft'])}}

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

 <script src="{{URL::to('tinymce/js/tinymce/tinymce.min.js')}}"></script>

  <script>
 var editor_config = {
  path_absolute : "{{URL::to('/')}}/",
  selector: "textarea.my-editor",
  plugins: [
    "advlist autolink lists link image charmap print preview hr anchor pagebreak",
    "searchreplace wordcount visualblocks visualchars code fullscreen",
    "insertdatetime media nonbreaking save table contextmenu directionality",
    "emoticons template paste textcolor colorpicker textpattern codesample"
  ],
  codesample_languages: [
       {text: 'HTML/XML', value: 'markup'},
       {text: 'JavaScript', value: 'javascript'},
       {text: 'CSS', value: 'css'},
       {text: 'PHP', value: 'php'},
       {text: 'Ruby', value: 'ruby'},
       {text: 'Python', value: 'python'},
       {text: 'Java', value: 'java'},
       {text: 'C', value: 'c'},
       {text: 'C#', value: 'csharp'},
       {text: 'C++', value: 'cpp'}
   ],

  toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media | codesample",
  relative_urls: false,
  file_browser_callback : function(field_name, url, type, win) {
    var x = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName('body')[0].clientWidth;
    var y = window.innerHeight|| document.documentElement.clientHeight|| document.getElementsByTagName('body')[0].clientHeight;

    var cmsURL = editor_config.path_absolute + 'laravel-filemanager?field_name=' + field_name;
    if (type == 'image') {
      cmsURL = cmsURL + "&type=Images";
    } else {
      cmsURL = cmsURL + "&type=Files";
    }

    tinyMCE.activeEditor.windowManager.open({
      file : cmsURL,
      title : 'Filemanager',
      width : x * 0.8,
      height : y * 0.8,
      resizable : "yes",
      close_previous : "no"
    });
  }
 };

 tinymce.init(editor_config);
 </script>
{!! Html::script('js/select2.min.js')!!}
<script type="text/javascript">
  $('.select2-multi').select2();

</script>
@endsection
