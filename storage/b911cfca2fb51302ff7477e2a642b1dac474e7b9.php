




<?php $__env->startSection('main-content'); ?>
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="<?php echo e(THEME_ASSET_URL); ?>/banner1.jpg" alt="" srcset="" width="100%" height="900px">
        </div>
        <div class="carousel-item">
            <img src="<?php echo e(THEME_ASSET_URL); ?>/banner2.jpg" alt="" srcset="" width="100%" height="900px">
        </div>
        <div class="carousel-item">
            <img src="<?php echo e(THEME_ASSET_URL); ?>/banner3.jpg" alt="" srcset="" width="100%" height="900px">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<br>
<h1 class="font-weight-bold text-center" style="font-family: 'Times New Roman', Times, serif;">SẢN PHẨM BÁN CHẠY NHẤT</h1>
<a style="color: black; font-size: 18px; margin-left: 700px;" href="">XEM TẤT CẢ...</a>
<div class="container">
    <div class="row">
        <style>
            body,
            .breadcrumb {
                background-color: #F5F5F5 !important;
            }

            .breadcrumb-item a {
                color: black !important;
            }

            .card {
                background-color: #F5F5F5 !important;
            }
        </style>
        
        <?php $__currentLoopData = $product; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $c): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

        <div class="col-4">
            <div class="card" style=" text-align: center;  padding-top: 30px;">

                <img src="<?php echo e(IMAGE_UPLOAD.$c->image); ?>" class="card-img-top" alt="..." height="300px">
                <div class="card-body-1">
                    <p class=""><a href=""><?php echo e($c->name); ?></a> <br><?php echo e($c->price); ?></p>
                </div>
                <div class="money" style="margin-top: 2rem; text-align: center;">
                    <a href="addCart?id=<?php echo e($c->id); ?>"> <button type="button" class="btn btn-danger" style="width: 60%;"><i class="fas fa-cart-plus"></i>Mua Hàng</button> </a>

                </div>
            </div>
        </div>

        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
</div>




<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\php2\asm\app\views/frontend/index.blade.php ENDPATH**/ ?>