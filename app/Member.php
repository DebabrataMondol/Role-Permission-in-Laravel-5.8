<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    protected $fillable = [
        'name', 
        'address',
        'status',
        'connected_date',
        'disconnected_date',
        'administration',
        'tect_concern_name',
        'contact_no',
        'email',
        'capacity',
        'ip_info',
        'ip_bdix',
        'switch_port',
        'remarks'
    ];
}

