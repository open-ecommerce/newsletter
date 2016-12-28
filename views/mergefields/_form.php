<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\newsletter\models\MergeFields */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="merge-fields-form" style="margin-top: 10px">
     <!-- quick email widget -->
                            <div class="box box-info">
                                <div class="box-header" style="border-bottom: 1px solid #00c0ef">
                                    <i class="fa fa-code-fork" style="padding: 10px 1px 10px 10px;"></i>
                                    <i class="fa fa-plus-circle" style="font-size: 10px;padding: 10px 0px 10px 0px;"></i>
                                    <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
                                    
                                </div>
                                <div class="box-body">
                                        <?php $form = ActiveForm::begin(); ?>

                                        <?= $form->field($model, 'merge_field_name')->textInput(['maxlength' => true,'placeholder'=>'Merge field name.']) ?>

                                        <?= $form->field($model, 'merge_field_code')->textInput(['maxlength' => true,'placeholder'=>'Merge field name ex:-{{country}}']) ?>

                                        <?= $form->field($model, 'merge_field_description')->textarea(['rows' => 6,'placeholder'=>'Merge field description.']) ?>

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
