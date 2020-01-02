@extends('layouts.master')


@section('content')
<div class="row">
    <div class="col-lg-12 margin-tb">
        <h3 class="text-center">Show Member Details</h3>
        <!-- <div class="pull-left">
            <h2> Show Member Details</h2>
        </div>
        <div class="pull-right">
            <a class="btn btn-primary" href="{{ route('members.index') }}"> Back</a>
        </div> -->
    </div>
</div>
<br>
<div class="card">
    <div class="row">
        <div class="col-sm-6">
            <table class="table table-bordered">
                <tr>
                    <th>Name:
                        <td>{{ $member->name}}</td>
                    </th>
                </tr>
                <tr>
                    <th>Address:
                        <td>{{ $member->address}}</td>
                    </th>
                </tr>
                <tr>
                    <th>Status:
                        <td>{{ $member->status}}</td>
                    </th>
                </tr>
                <tr>
                    <th>Connected Date:
                        <td>{{ $member->connected_date}}</td>
                    </th>
                </tr>
                <tr>
                    <th>Disconnected Date:
                        <td>{{ $member->disconnected_date}}</td>
                    </th>
                </tr>
                <tr>
                    <th>Administration:
                        <td>{{ $member->administration}}</td>
                    </th>
                </tr>
                <tr>
                    <th>Technical Concern Name:
                        <td>{{ $member->tect_concern_name}}</td>
                    </th>
                </tr>
            </table>
        </div>   
        <div class="col-sm-6">
            <table class="table table-bordered">
                <tr>
                    <th>Contact No:
                        <td>{{ $member->contact_no}}</td>
                    </th>
                </tr>
                <tr>
                    <th>Email Address:
                        <td>{{ $member->email}}</td>
                    </th>
                </tr>
                <tr>
                    <th>Capacity:
                        <td>{{ $member->capacity}}</td>
                    </th>
                </tr>
                <tr>
                    <th>Ip Information:
                        <td>{{ $member->ip_info}}</td>
                    </th>
                </tr>
                <tr>
                    <th>IP(Provied BY BDIX) ::
                        <td>{{ $member->ip_bdix}}</td>
                    </th>
                </tr>
                <tr>
                    <th>Switch Port:
                        <td>{{ $member->switch_port}}</td>
                    </th>
                </tr>
                <tr>
                    <th>Remarks:
                        <td>{{ $member->remarks}}</td>
                    </th>
                </tr>
            </table>
        </div>
    </div>
</div>
@endsection
