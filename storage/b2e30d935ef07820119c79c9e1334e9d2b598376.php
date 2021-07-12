
<?php $__env->startSection('title',"Danh Sách Sản Phẩm"); ?>
<?php $__env->startSection('backend_content'); ?>




    <a href="admin/new-product" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Tạo Mới</a>







        <table class="table  container">
            <thead>

            <th  class="align-middle">Name</th>
            <th  class="align-middle">ẢNh Sản Phẩm</th>
            <th  class="align-middle"> Giá Sản Phẩm</th>
            <th  class="align-middle">CHi Tiết SP</th>
            <th  class="align-middle">Hành Động</th>

            </thead>
            <tbody>
            <?php $__currentLoopData = $product; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $c): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <td  class="align-middle"><?php echo e($c->name); ?></td>
                    <td  class="align-middle"><img src="<?php echo e(IMAGE_UPLOAD.$c->image); ?>" alt="" width="200px" height="200px"></td>
                    <td  class="align-middle"><?php echo e($c->price); ?></td>

                    <td  class="align-middle"><?php echo e($c->detail); ?></td>
                    <td  class="align-middle">
                        <a href="admin/edit-product?id=<?php echo e($c->id); ?>">Sửa</a>
                       <a href="admin/delete-product?id=<?php echo e($c->id); ?>">Xóa</a></td>
                </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
        </table>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.backend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\php2\asm\app\views/backend/product_list.blade.php ENDPATH**/ ?>