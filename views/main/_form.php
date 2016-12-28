<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\modules\newsletter\models\EmailTemplates;
use app\modules\newsletter\models\Group;

/* @var $this yii\web\View */
/* @var $model app\models\Equeue */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="main-form" style="margin-top: 10px">
<!-- quick email widget -->
                            <div class="box box-info">
                                <div class="box-header" style="border-bottom: 1px solid #00c0ef">
                                    <i class="fa fa-envelope" style="padding: 10px 0px 10px 10px;"></i>
                                    <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
                                    
                                </div>
                                <div class="box-body">
                                    <?php $form = ActiveForm::begin(['id' => $model->formName(),'options'=>['enctype'=>'multipart/form-data']]); ?>
                                        <div class="row">
                                            <div class="col-sm-10">
                                            <?= $form->field($model, 'to')->textInput(['placeholder'=>'Only comma separated emails'])?>
                                             </div>
                                            <div class="col-sm-2">
                                            <?= $form->field($model, 'to_group')->dropDownList(
                                            ArrayHelper::map(Group::find()->select(['group_id','group_name'])->orderBy('group_name')->all(),'group_id','group_name'),
                                            ['prompt'=>'Select Group'])?>    
                                            </div>
                                        </div>
                                            <div class="row">
                                                <div class="col-sm-10">
                                                    <?= $form->field($model, 'cc')->textInput(['placeholder'=>'Only comma separated emails'])?>
                                                </div>
                                                <div class="col-sm-2">
                                                    <?= $form->field($model, 'cc_group')->dropDownList(
                                                    ArrayHelper::map(Group::find()->select(['group_id','group_name'])->orderBy('group_name')->all(),'group_id','group_name'),
                                                    ['prompt'=>'Select Group'])?>
                                                </div>
                                            </div>
                                        <div class="row">
                                            <div class="col-sm-10">
                                                <?= $form->field($model, 'bcc')->textInput(['placeholder'=>'Only comma separated emails'])?>
                                            </div>
                                            <div class="col-sm-2">
                                                <?= $form->field($model, 'bcc_group')->dropDownList(
                                                ArrayHelper::map(Group::find()->select(['group_id','group_name'])->orderBy('group_name')->all(),'group_id','group_name'),
                                                ['prompt'=>'Select Group'])?>    
                                            </div>
                                        </div>

                                        <?= $form->field($model, 'subject')->textInput(['maxlength' => true,'placeholder'=>'Subject']) ?>

                                        <?= $form->field($model, 'text_body')->textarea(['rows' =>6]) ?>

                                        <?= $form->field($model, 'templates')->dropDownList(
                                                ArrayHelper::map(EmailTemplates::find()->select(['template_id','template_name'])->orderBy('template_name')->all(),'template_id','template_name'),
                                                ['prompt'=>'Select Template']
                                                ) ?>

                                        <?= $form->field($model, 'attachment[]')->fileInput(['multiple'=>TRUE]) ?>


                                        <div class="form-group">
                                            <?= Html::submitButton('Create', ['class' =>'btn btn-success']) ?>
                                        </div>

                                        <?php ActiveForm::end(); ?>
                                </div>
                                <div class="box-footer clearfix">
<!--                                    <button class="pull-right btn btn-default" id="sendEmail">Send <i class="fa fa-arrow-circle-right"></i></button>-->
                                </div>
                            </div>
    

</div>
    