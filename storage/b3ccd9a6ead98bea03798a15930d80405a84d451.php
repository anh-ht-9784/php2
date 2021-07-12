




<?php $__env->startSection('main-content'); ?>

<div style="margin-top: 200px">
            <?php $__currentLoopData = $showcart; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $c): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>


                <tbody>



                <h4 class="nomargin" id="name"><?php echo e($c->name); ?></h4>




                    <div data-th="Price" id="Price" data-price="<?php echo e($c->price); ?>"><?php echo e($c->price); ?></div>



                </tbody>

            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

    </div>




<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\php2\asm\app\views/frontend/showcart.blade.php ENDPATH**/ ?>