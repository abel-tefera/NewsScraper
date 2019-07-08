<?php require APPROOT . '/views/inc/header.php';?>
  
<?php $i = 0;?>
<?php foreach($data['rows'] as $result): ?>
    <?php if($i % 2 == 0) : ?>
    <section class="mbr-section content6 cid-rvbGcxK1WC" id="content6-2">
    
    <div class="container">
        <div class="media-container-row">
            <div class="col-12 col-md-8">
                <div class="media-container-row">
                    <div class="mbr-figure" style="width: 60%;">
                      <!-- <img src="<?php echo URLROOT; ?>/assets/images/background1.jpg" alt="Mobirise"> -->
                      <a target="_blank" href="<?php echo $result->link;?>"><img src="<?php echo $result->image_link;?>" alt="<?php echo $result->title;?>"></a> 
                    </div>
                    <div class="media-content">
                        <div class="mbr-section-text">
                            <p class="mbr-text mb-0 mbr-fonts-style display-7">
                            <i><?php echo $result->created_at.' | ';?></i><a target="_blank" href="<?php echo $result->link;?>"><strong><?php echo $result->title.' ';?></strong></a><?php echo $result->content;?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php else: ?>
<section class="mbr-section content7 cid-rvbGTZs3KH" id="content7-4">
    <div class="container">
        <div class="media-container-row">
            <div class="col-12 col-md-8">
                <div class="media-container-row">
                    <div class="media-content">
                        <div class="mbr-section-text">
                            <p class="mbr-text align-right mb-0 mbr-fonts-style display-7">
                            <i><?php echo $result->created_at.' | ';?></i><a target="_blank" target="_blank" href="<?php echo $result->link;?>"><strong><?php echo $result->title.' ';?></strong></a><?php echo $result->content;?>
                        </div>
                    </div>
                    <div class="mbr-figure" style="width: 60%;">
                    <a href="<?php echo $result->link;?>"><img src="<?php echo $result->image_link;?>" alt="<?php echo $result->title;?>"></a> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php endif ?>
<?php $i++;?>
<?php endforeach ?>

<?php require APPROOT . '/views/inc/footer.php'; ?>

