<?php
namespace App\Controllers\Backend;
use App\Controllers\BaseController;
use App\Models\InvoiceDetail;


class InvoiceDetailController extends BaseController{
  public function lists(){
      $id =$_GET['id'];
      $invoice= InvoiceDetail::all();
      $invoice = $invoice->where('invoice_id', $id);
      $this->render('backend.invoicesdetail_list', ['invoice' => $invoice]);
  }
}
