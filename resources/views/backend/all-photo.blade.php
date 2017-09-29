 @extends('backend.layout.layout')
 @section('content')

<div class="container">
    <div class="panel panel-default">
        <div class="panel-body">
            <h4 class="album-page">Картинки</h4>
            <a href="{{route('createImage')}}" class="btn btn-default pull-right">Добавить картинку</a>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-body">
        @if($photos->count() > 0)
            <div class="row">
            @foreach($photos as $photo)
                <div class="col-xs-3">
                    <ul class="img-list">
                        <li>
                            <a href="{{asset('images/photo/'. $photo->img)}}" class="thumbnail show">
                          <img src="{{asset('images/photo/'. $photo->img)}}" alt="...">
                        </a>
                        </li>
                    </ul>
                </div>
              @endforeach 
             <div class="lightbox">
                <div class="overlay"></div>
                    <img src="">
                 </div> <!-- lightbox -->
            </div>
            @else
            <div class="no">
                <h4>Картинок нет</h4>
            </div>
            @endif   
        </div>
    </div>  
</div>

@endsection  