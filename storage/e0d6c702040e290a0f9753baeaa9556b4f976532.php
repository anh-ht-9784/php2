

<?php $__env->startSection('title', "Tao moi SP"); ?>
<?php $__env->startSection('backend_content'); ?>
    <form class="user" action="saveProduct" method="POST" multiple="" enctype="multipart/form-data">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" name="name" class="form-control form-control-user"
                       placeholder="Tên Sản Phẩm">
            </div>
            <div class="col-sm-6">
                <input type="file" name="file" class="form-control form-control-user"
                       placeholder="Link ảnh sản phẩm ">
            </div>
        </div>
        <div class="form-group row">

            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="number" name="price"
                       class="form-control form-control-user"
                       placeholder="Giá Sản Phẩm" min="0">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input name="cate_id" type="text" class="form-control form-control-user"
                       placeholder="Mã Danh mục">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input name="short_desc" type="text" class="form-control form-control-user"
                        placeholder="Giới thiệu ngắn">
            </div>
            <div class="col-sm-6">
                <input name="detail" type="text" class="form-control form-control-user"
                       placeholder="Chi tiết"        >
            </div>
        </div>
        <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit">Tạo Mới</button>
    </form>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.backend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\php2\asm\app\views/backend/add_product.blade.php ENDPATH**/ ?>