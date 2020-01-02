@extends('layouts.master')


@section('content')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.1/css/buttons.bootstrap4.min.css">


<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.bootstrap4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.print.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.colVis.min.js"></script>

<!-- <div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2>Members</h2>
        </div>
        <div class="pull-right">
            @can('member-create')
            <a class="btn btn-success" href="{{ route('members.create')}}"> Create New Member</a>
            @endcan
        </div>
    </div>
</div>

<br>

@include('sweetalert::alert') -->

<div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header text-center">Dashboard</div>
                <div class="container">
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                      <thead>
                        <tr>
                            <th>ISP No</th>
                            <th>ISP Name</th>
                            <th>Status</th>
                            <th>Conneted Date</th>
                            <th>Disconnnected Date</th>
                            <th>Support Con No</th>
                            <th>Capacity</th>
                            <th>Remarks</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php $i=0;?>
                        @foreach ($dateSearch as $search)

                        <tr>
                            <td>{{ ++$i }}</td>
                            <td><a href="{{ route('members.show',$search->id) }}">{{ $search->name }}</a></td>
                            <td>{{ $search->status }}</td>
                            <td>{{ $search->connected_date }}</td>
                            <td>{{ $search->disconnected_date }}</td>
                            <td>{{ $search->contact_no }}</td>
                            <td>{{ $search->capacity }}</td>
                            <td>{{ $search->remarks }}</td>
                        </tr>
                        @endforeach
                      </tbody>
                      <tfoot>
                          <tr>
                            <th>ISP No</th>
                            <th>ISP Name</th>
                            <th>Status</th>
                            <th>Conneted Date</th>
                            <th>Disconnnected Date</th>
                            <th>Support Con No</th>
                            <th>Capacity</th>
                            <th>Remarks</th>
                        </tr>
                      </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
    var table = $('#example').DataTable( {
        lengthChange: false,
        buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]
    } );
 
    table.buttons().container()
        .appendTo( '#example_wrapper .col-md-6:eq(0)' );
} );
</script>


@endsection