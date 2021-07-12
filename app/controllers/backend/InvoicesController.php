<?php
namespace App\Controllers\Backend;
use App\Controllers\BaseController;
use App\Models\Invoices;


class InvoicesController extends BaseController{
    public function index(){
        $invoices= Invoices::all();
        $this->render('backend.invoices_list', ['invoices' => $invoices]);
    }
}