@extends('backend.layout.layout')
@section('content')

<div class="container">
		<div class="panel panel-default">
  			<div class="panel-body">
    			<h4 class="album-page">Все Альбомы</h4>
    			<a href="{{route('createAlibom')}}" class="btn btn-default pull-right">Добавить альбом</a>

    			<div class="clearfix"></div>
  			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-body">
			@foreach($pictures->chunk(3) as $pic)
				<div class="row">
					
	        		@foreach($pic as $picture)
					<div class="col-md-4">
						<div class="thumbnail">
							<img src="{{asset('images/alibom/' . $picture->img)}}" alt="...">
							<div class="caption">
								<h3><a href="{{route('allImage', $picture->id)}}">{{$picture->name}}</a></h3>
								<p>{{ substr($picture->text, 0, 30) }}{{ strlen($picture->text) > 30 ? "..." : "" }}</p>
								<p>Дата выхода: {{$picture->calendari}}</p>
								<p>Количество фото: {{$picture->images->count()}}</p>
							</div>
						</div>
					</div>
			  		@endforeach 
				</div>
			@endforeach 
				<div class="text-center">
					{{ $pictures->links() }}
				</div>	
		</div>
	</div>
</div>
				
@endsection  				