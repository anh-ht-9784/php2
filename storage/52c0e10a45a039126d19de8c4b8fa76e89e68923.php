
<?php $__env->startSection('title', "Tao moi SP"); ?>
<?php $__env->startSection('backend_content'); ?>

    <form class="user" action="saveEditProduct?id=<?php echo e($product->id); ?>" method="POST" multiple="" enctype="multipart/form-data">
        <img src="/php2/asm/<?php echo e(IMAGE_UPLOAD.$product->image); ?>" width="200px" height="200px">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" name="name" class="form-control form-control-user"
                       value="<?php echo e($product->name); ?>">
            </div>

            <div class="col-sm-6">

                <input type="file" name="hinh" class="form-control form-control-user"
                       >
                <input type="hidden" name="hinh2" value="<?php echo e($product->image); ?>" >


            </div>
        </div>
        <div class="form-group row">

            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="number" name="price"
                       class="form-control form-control-user"
                       value="<?php echo e($product->price); ?>" min="0">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input name="cate_id" type="text" class="form-control form-control-user"
                       value="<?php echo e($product->cate_id); ?>">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input name="short_desc" type="text" class="form-control form-control-user"
                       value="<?php echo e($product->short_desc); ?>">
            </div>
            <div class="col-sm-6">
                <input name="detail" type="text" class="form-control form-control-user"
                       value="<?php echo e($product->detail); ?>"        >
            </div>
        </div>
        <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit">Lưu Lại</button>
    </form>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.backend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\php2\asm\app\views/backend/edit_product.blade.php ENDPATH**/ ?>