<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\EmailSubscribers */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="email-subscribers-form" style="margin-top: 10px">
    <!-- quick email widget -->
                            <div class="box box-info">
                                <div class="box-header" style="border-bottom: 1px solid #00c0ef">
                                    <i class="fa fa-user" style="padding: 10px 0px 10px 10px;"></i>
                                    <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
                                    
                                </div>
                                <div class="box-body">
                                        <?php $form = ActiveForm::begin(); ?>

                                        <?= $form->field($model, 'full_name')->textInput(['maxlength' => true,'placeholder'=>'Full Name']) ?>

                                        <?= $form->field($model, 'subscriber_email')->textInput(['maxlength' => true,'placeholder'=>'Email']) ?>

                                        <?= $form->field($model, 'subscriber_details')->textarea(['rows' => 6,'placeholder'=>'Description']) ?>

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
