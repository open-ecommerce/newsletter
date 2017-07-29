<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use marqu3s\summernote\Summernote;
use yii\helpers\Url;
use tikaraj21\newsletter\models\MergeFields;

/* @var $this yii\web\View */
/* @var $model app\models\EmailTemplates */
/* @var $form yii\widgets\ActiveForm */
?>

<style>
    .merge{
        margin-top: 25px;
        border: 1px solid #B6B6B6;
        padding: 20px 0px 20px 10px;
        background: #F3F3F3; /* Old browsers */
        background: -moz-linear-gradient(top,  #F3F3F3 0%,#CFD1CF 100%); /* FF3.6-15 */
        background: -webkit-linear-gradient(top,  #F3F3F3 0%,#CFD1CF 100%); /* Chrome10-25,Safari5.1-6 */
        background: linear-gradient(to bottom,  #F3F3F3 0%,#CFD1CF 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#F3F3F3', endColorstr='#CFD1CF',GradientType=0 ); /* IE6-9 */
    }
    .mergeItem{
        font-weight: bold;
        margin-top: -10px;
        padding: 10px;
    }
    .mergeItem:hover{
        color: #0088e4;
    }
    .mergeItem_cover{
        border-right: 1px solid #B6B6B6;
        border-bottom: 1px solid #B6B6B6;
        border-left: 1px solid #B6B6B6;
    }
    .ckInsert{
        cursor: pointer;
        -webkit-user-select: none;
        -khtml-user-select: none;
        -moz-user-select: -moz-none;
        -o-user-select: none;
        user-select: none;
    }
    a:hover{
        text-decoration: none;
    }

</style>
<div class="email-templates-form" style="margin-top:10px">
    <!-- quick email widget -->
    <div class="box box-danger">
        <div class="box-header" style="border-bottom: 1px solid #EA6B72;">
            <i class="fa fa-envelope" style="padding: 10px 0px 10px 10px;"></i>
            <h3 class="box-title"><?= Html::encode($this->title) ?></h3>

        </div>
        <div class="box-body">
            <?php $form = ActiveForm::begin(); ?>

            <?= $form->field($model, 'template_name')->textInput(['maxlength' => true, 'placeholder' => 'Template Name']) ?>
            <div class="row">
                <div class="col-sm-9">
                    <?=
                    $form->field($model, 'template_body')->widget(Summernote::className(), [
                        'clientOptions' => [
                            'id' => 'ysk-summernote',
                            'height' => 400,
                            'toolbar' => [
                                ['undo', ['undo']],
                                ['redo', ['redo']],
                                ['insert', ['link']],
                                ['view', ['codeview']],
                            ]
                        ],
                            ]
                    );
                    ?>
                </div>
                <div class="col-sm-3">
                    <a title="Click to view all merge fields" href="<?= Url::to(['mergefields/index']) ?>"><h3 class="merge">Available merge fields</h3></a>
                    <div class='mergeItem_cover'>
                        <?php
                        $merge_datas = MergeFields::find()->all();
                        foreach ($merge_datas as $datas) {
                            echo '<div class="mergeItem"><a class="ckInsert tooltips" value="' . $datas['merge_field_code'] . '">' . $datas['merge_field_name'] . '</a><a href="' . Url::to(['mergefields/view', 'id' => $datas['merge_field_id']]) . '" style="float:right" class="glyphicon glyphicon-eye-open"></a></div>';
                        }
                        ?>
                    </div>

                </div>
            </div>


            <?= $form->field($model, 'template_description')->textarea(['rows' => 4])
            ?>
            <div class="form-group">
                <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            </div>

            <?php ActiveForm::end(); ?>
        </div>
        <div class="box-footer clearfix">
<!--                                    <button class="pull-right btn btn-default" id="sendEmail">Send <i class="fa fa-arrow-circle-right"></i></button>-->
        </div>
    </div>


</div>
