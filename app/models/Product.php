<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class Product extends Model{
    protected $table = 'Products';
    protected $fillable = ['name', 'image', 'price','cate_id','short-desc','detail'];

}

?>

