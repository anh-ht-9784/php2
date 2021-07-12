
<?php $__env->startSection('title',"Danh Sách Đơn Hàng"); ?>
<?php $__env->startSection('backend_content'); ?>












    <table class="table  container">
        <thead>

        <th  class="align-middle">Tên Danh Mục</th>
        <th  class="align-middle">email</th>
        <th  class="align-middle">Địa chỉ</th>
        <th  class="align-middle">tổng tiền</th>
        <th  class="align-middle">Hành động</th>
        </thead>
        <tbody>
        <?php $__currentLoopData = $invoices; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $c): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
                <td  class="align-middle"><?php echo e($c->customer_name); ?></td>
                <td  class="align-middle"><?php echo e($c->customer_phone_numbere); ?></td>
                <td  class="align-middle"><?php echo e($c->customer_email); ?></td>
                <td  class="align-middle"><?php echo e($c->customer_address); ?></td>
                <td  class="align-middle"><?php echo e($c->total_price); ?></td>
                <td  class="align-middle"><a href="invo-detail-list?id=<?php echo e($c->id); ?>">Chi Tiết</a></td>



            </tr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tbody>
    </table>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.backend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\php2\asm\app\views/backend/invoices_list.blade.php ENDPATH**/ ?>