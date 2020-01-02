@extends('layouts.master')


@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Edit Member</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('members.index') }}"> Back</a>
            </div>
        </div>
    </div>


    @if ($errors->any())
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif


    <form action="{{ route('members.update',$member->id) }}" method="POST">
        @csrf
        @method('PUT')


        <div class="row">
           <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>IP Name:</strong>
                    <input type="text" name="name" value="{{ $member->name }}" class="form-control" placeholder="Name">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Current Address</strong>
                    <textarea class="form-control" style="height:100px" name="address" value="{{ $member->address }}" placeholder="Address"></textarea>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Staus</strong>
                    <select name="status" class="form-control"  value="{{ $member->status }}">
                        <option value="running">Running</option>
                        <option value="closed">Closed</option>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Connected Date</strong>
                    <input type="date" name="connected_date"  value="{{ $member->connected_date }}" class="form-control" >
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Disconnected Date</strong>
                    <input type="date" name="disconnected_date"  value="{{ $member->disconnected_date }}" class="form-control">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Administration</strong>
                    <input type="text" name="administration"  value="{{ $member->administration }}" class="form-control" placeholder="Accounts And Finance">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Technical Con Name</strong>
                    <input type="text" name="tect_concern_name"  value="{{ $member->tect_concern_name }}" class="form-control">
                </div>
            </div>
            
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Support Contact No</strong>
                    <input type="text" name="contact_no"  value="{{ $member->contact_no }}" class="form-control" placeholder="Number">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Support Email Address</strong>
                    <input type="email" name="email"  value="{{ $member->email }}" class="form-control" placeholder="Email">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Capacity</strong>
                    <input type="text" name="capacity"  value="{{ $member->capacity }}" class="form-control">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Ip/AS Information</strong>
                    <input type="text" name="ip_info"  value="{{ $member->ip_info }}" class="form-control">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>IP</strong>
                    <input type="text" name="ip_bdix"  value="{{ $member->ip_bdix }}" class="form-control" placeholder="Provied By BDIX">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Switch Port</strong>
                    <input type="text" name="switch_port"  value="{{ $member->switch_port }}" class="form-control">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Remarks</strong>
                    <input type="text" name="remarks"  value="{{ $member->remarks }}" class="form-control">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>


    </form>


    {{--<p class="text-center text-primary"><small>Tutorial by ItSolutionStuff.com</small></p>--}}
@endsection