<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Member;
use DB;

class MemberController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:member-list|member-create|member-edit|member-delete', ['only' => ['index','show']]);
        $this->middleware('permission:member-create', ['only' => ['create','store']]);
        $this->middleware('permission:member-edit', ['only' => ['edit','update']]);
        $this->middleware('permission:member-delete', ['only' => ['destroy']]);
    }

    public function index()
    {
        $members = Member::orderBy('id', 'DESC')->get();
        return view('members.index',compact('members'));
    }
    public function dateSearch(Request $request){
        $fromdate = $request->fromDate;
        
        view()->share('fromdate',$fromdate);


        $todate = $request->toDate;
        view()->share('todate',$todate);

        $dateSearch = DB::table('members')
            ->whereBetween('connected_date', [$fromdate, $todate])
            ->orderBy('id', 'DESC')
            ->get();
/*echo '<pre>';
        print_r($dateSearch);
        exit();*/
        view()->share('dateSearch', $dateSearch);

        return view('members.search');
    }
    public function create()
    {
        return view('members.create');
    }
    public function store(Request $request)
    {
        request()->validate([
            'name' => 'required',
        ]);


        Member::create($request->all());
        toast('Member Created successfully','success');

        return redirect()->route('members.index');
    }

    public function show(Member $member)
    {
        return view('members.show', compact('member'));
    }

    public function edit(Member $member)
    {
        return view('members.edit',compact('member'));
    }
    public function update(Request $request, Member $member)
    {
        request()->validate([
            'name' => 'required',
        ]);


        $member->update($request->all());
        toast('Member Updated successfully','success');

        return redirect()->route('members.index');
    }

    public function destroy(Member $member)
    {
        $member->delete();
        toast('Member Delete successfully','success');
        return redirect()->route('members.index');
    }
}
