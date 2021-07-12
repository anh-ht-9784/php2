
<?php $__env->startSection('title', "Update Danh Mục"); ?>
<?php $__env->startSection('backend_content'); ?>
    <form class="user" action="<?php echo e(BASE_ADMIN); ?>saveEditCate?id=<?php echo e($category->id); ?>" method="POST"  >
        <div class="form-group row container">
            <div class="col-sm-3 mb-3 mb-sm-0">
                <input type="text" name="cate_name" class="form-control form-control-user"
                       value="<?php echo e($category->cate_name); ?>">
            </div>
            <div class="col-sm-9 mt-10 mb-3 mb-sm-0">
                <input type="text" name="desc" class="form-control form-control-user"
                       value="<?php echo e($category->desc); ?>">
            </div>
            <div class="col-sm-6 mt-5 mb-3 mb-sm-0">
                <label for="">Hiển thị ở menu</label>
                <input type="checkbox" <?php if($category->show_menu == 1): ?>  checked  <?php endif; ?>
              name="show_menu" value="1">
            </div>


        </div>
        <button class="ml-4 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit">Lưu </button>
    </form>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.backend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\php2\asm\app\views/backend/edit_cate.blade.php ENDPATH**/ ?>