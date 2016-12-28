<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\newsletter\models\Automailsetting */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="automailsetting-form">

    <?php $form = ActiveForm::begin() ?>
    <hr>
    <h4 style="font-weight: bold">General Setting:</h4>
    <div class="row">
        <div class="col-sm-3">
            <?= $form->field($email_setting['sett_mail_type'], '[sett_mail_type]setting_value')->inline()->radioList(['PHP'=>'PHP(mail)','SMTP'=>'SMTP'] )?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($email_setting['sett_re_intval'], '[sett_re_intval]setting_value')->textInput(['maxlength' => true,'placeholder'=>'Page reload interval time in seconds']) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($email_setting['sett_no_mail'], '[sett_no_mail]setting_value')->textInput(['maxlength' => true,'placeholder'=>'Number of mail sending at a time']) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($email_setting['mail_encode_bit'], '[mail_encode_bit]setting_value')->textInput(['maxlength' => true,'placeholder'=>'Number of mail sending at a time']) ?>
        </div>
    </div>
    

    
    <hr>
    <h4 style="font-weight: bold">Setting for mail using server:</h4>
    <div class="row">
        <div class="col-sm-4">
            <?= $form->field($email_setting['sett_host'], '[sett_host]setting_value')->textInput(['maxlength' => true,'placeholder'=>'Mail Type']) ?>
        </div>
        <div class="col-sm-4">
            <?= $form->field($email_setting['sett_uname'], '[sett_uname]setting_value')->textInput(['maxlength' => true,'placeholder'=>'Host Name']) ?>
        </div>
        <div class="col-sm-4">
            <?= $form->field($email_setting['sett_pw'], '[sett_pw]setting_value')->textInput(['maxlength' => true,'placeholder'=>'Username']) ?>
        </div>
        <div class="col-sm-4">
            <?= $form->field($email_setting['sett_enc_type'], '[sett_enc_type]setting_value')->textInput(['maxlength' => true,'placeholder'=>'Password']) ?>
        </div>
        <div class="col-sm-4">
            <?= $form->field($email_setting['sett_port'], '[sett_port]setting_value')->textInput(['maxlength' => true,'placeholder'=>'Encryption Type']) ?>
        </div>
       
    </div>
    <hr>
    <h4 style="font-weight: bold">Setting for mail using PHP:</h4>
    <div class="row">
        <div class="col-sm-4">
            <?= $form->field($email_setting['from'], '[from]setting_value')->textInput(['maxlength' => true,'placeholder'=>'From (ex- admin@gmail.com)']) ?> 
        </div>
        <div class="col-sm-4">
            <?= $form->field($email_setting['reply_to'], '[reply_to]setting_value')->textInput(['maxlength' => true,'placeholder'=>'Reply To (ex- admin@gmail.com)']) ?>
        </div>
        <div class="col-sm-4">
            <?= $form->field($email_setting['return_path'], '[return_path]setting_value')->textInput(['maxlength' => true,'placeholder'=>'Return Path (ex- admin@gmail.com)']) ?>
        </div>
    </div>
    <div class="form-group">
        <?= Html::submitButton('Update', ['class' =>'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
