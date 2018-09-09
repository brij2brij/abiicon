@extends('admin')
@section('title',"| Edit Tag")

@section('style')
{!! Html::style('css/parsley.css') !!}
{!! Html::style('css/select2.min.css') !!}
@endsection

@section('content')
    <div class="row">
      <div class="col-md-10">

        <h1> <span class="fas fa-pencil-alt"></span> Article Submission Wizard</h1>&nbsp;

      {!! Form::open(array('route' => 'newpost.store', 'data-parsley-validate' => '', 'files' => true,'method'=>'post')) !!}
        <div class="row">
          <div class="col-md-6">



          </div>
          <div class="col-md-6">


          </div>
        </div>
  {{ Form::label('title', 'Your Title:') }}
  {{ Form::text('title', null, array('class' => 'form-control form-control-lg', 'required' => '',
     'maxlength' => '255','minlength' => '5')) }}


        <span class="glyphicon glyphicon-align-justify"></span>
            {{ Form::label('dis', 'Please Add 2 Line discription for your Article:') }}
     				{{ Form::textarea('dis', null, array('class' => 'form-control','rows'=>'2', 'required' => '', 'minlength' => '5', 'maxlength' => '150') ) }}


     				{{ Form::label('body', "Post Body:") }}
     				{!! Form::textarea('body', null, array('class' => 'form-control my-editor')) !!}
            &nbsp;
            <div style="border:1px solid" >
              <h3>Hello, world!</h3>
              <p>Thie is test text only fo test purpose</p>
            </div>

            <div class="row">
              <div class="col-md-6">

                {!! Form::submit( 'Publish', ['class' => 'btn btn-success btn-lg btn-block',
                  'style' => 'margin-top: 20px;', 'name' => 'publish', 'value' => 'publish'])!!}

              </div>
              <div class="col-md-6">
                {!! Form::submit( 'Save draft', ['class' => 'btn btn-warning btn-lg btn-block','style' => 'margin-top: 20px;',
                  'name' => 'save-draft', 'value' => 'save-draft']) !!}

              </div>
            </div>

          {!! Form::close() !!}
      </div>
      <div class="col-md-2">

      </div>
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
     "emoticons template paste textcolor colorpicker textpattern codesample ",

   ],

   toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media | codesample ",
codesample_content_css: "http://ourcodeworld.com/material/css/prism.css",
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
 {!! Html::script('js/parsley.min.js')!!}
 {!! Html::script('js/select2.min.js')!!}
 <script type="text/javascript">
   $('.select2-multi').select2();
 </script>
@endsection
