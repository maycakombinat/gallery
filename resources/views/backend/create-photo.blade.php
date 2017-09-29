 
@extends('backend.layout.layout')
@section('content')

<div class="container">
  <div class="row">
    <div class="panel panel-default">
          <div class="panel-body">
            <h4 class="album-page">Добавление Картинки</h4>
            <div class="clearfix"></div>
          </div>
      </div>
      <div class="panel panel-default">
          <div class="panel-body">
            <div class="col-sm-offset-3 col-sm-6 col-sm-offset-3">
            <form action="{{route('storeImage')}}" method="post" enctype="multipart/form-data">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
              <div class="form-group">
                <label for="title">Название</label>
                <input type="text" class="form-control" id="title" name="name">
              </div>
               
              <div class="form-group">
                <label for="file">Картинка</label>
                <input type="file" id="file" name="img">
              </div>
              <div class="form-group">

                <select class="form-control" name="albiom_id">
                @foreach($albioms as $albiom)
                  <option value="{{$albiom->id}}">{{$albiom->name}}</option>
                @endforeach
                </select> 
               </div>            
              <button type="submit" class="btn btn-success">Добавить</button>
            </form>
          </div>  
          </div>
        </div>
      </div>
    </div>
</div>        
@endsection
 