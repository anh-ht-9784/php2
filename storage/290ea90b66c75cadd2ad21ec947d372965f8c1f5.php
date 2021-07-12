
<?php $__env->startSection('title',"Đơn hàng chi tiết"); ?>
<?php $__env->startSection('backend_content'); ?>











    <table class="table  container">
        <thead>

        <th  class="align-middle">ID sản phẩm</th>
        <th  class="align-middle">Số lượng</th>
        <th  class="align-middle">Giá</th>


        </thead>
        <tbody>
        <?php $__currentLoopData = $invoice; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $c): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
                <td  class="align-middle"><?php echo e($c->product_id); ?></td>
                <td  class="align-middle"><?php echo e($c->quantity); ?></td>
                <td  class="align-middle"><?php echo e($c->unit_price); ?></td>




            </tr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tbody>
    </table>

<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.backend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\php2\asm\app\views/backend/invoicesdetail_list.blade.php ENDPATH**/ ?>