<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\grid\GridView;
use kartik\widgets;
use yii\helpers\ArrayHelper;
use kartik\widgets\Alert;

/* @var $this yii\web\View */
/* @var $searchModel app\models\SettingSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Setting';
?>
<?php $form = ActiveForm::begin(); ?>

<div class="box box-info">
    <div class="box-header" style="border-bottom: 1px solid #00c0ef">
        <i class="fa fa-cogs" style="padding: 10px 0px 10px 10px;"></i>
        <h3 class="box-title"><?= $this->title ?></h3>
    </div>
    <div style="margin: 10px; padding-bottom: 5px;">
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#home"><b>Mail Setting</b></a></li>
            <li><a data-toggle="tab" href="#menu1"><b>Company Information</b></a></li>
        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
                <div class="panel panel-default" style="margin-top: 10px;">
                    <div class="panel-heading"><h4><i class="glyphicon glyphicon-envelope"></i> <?= Html::encode('Mail Setting') ?></h4></div>
                    <div class="panel-body">
                        <div class="setting-form">
                            <div class="row">
                                <div class="col-sm-12">
                                    <h4>General Email Setting:</h4>
                                </div>
                            </div> 
                            <div class="row">
                                <div class="col-sm-2">
                                    <?= $form->field($email_setting['sett_mail_mode'], '[sett_mail_mode]setting_value')->dropDownList(['testing' => 'Testing', 'production' => 'Production']) ?>
                                </div>
                                <div class="col-sm-10">
                                    <h4><- Testing will use open-ecommerce mails instead of real users.</h4>
                                </div>
                            </div> 
                            <div class="row">           
                                <div class="col-sm-3">
                                    <?= $form->field($email_setting['sett_mail_type'], '[sett_mail_type]setting_value')->inline()->radioList(['PHPMAIL' => 'PHP(mail)', 'SMTP' => 'SMTP']) ?>
                                </div>
                                <div class="col-sm-3">
                                    <?= $form->field($email_setting['sett_re_intval'], '[sett_re_intval]setting_value')->textInput(['maxlength' => true, 'placeholder' => 'Page reload interval time in seconds']) ?>
                                </div>
                                <div class="col-sm-3">
                                    <?= $form->field($email_setting['sett_no_mail'], '[sett_no_mail]setting_value')->textInput(['maxlength' => true, 'placeholder' => 'Number of mail sending at a time']) ?>
                                </div>
                                <div class="col-sm-3">
                                    <?= $form->field($email_setting['mail_encode_bit'], '[mail_encode_bit]setting_value')->textInput(['maxlength' => true, 'placeholder' => 'Number of mail sending at a time']) ?>
                                </div>
                            </div>


                            <div class="row ">
                                <div class="col-sm-8">
                                    <div class="row">

                                        <div class="col-sm-6">
                                            <?php // $form->field($setting['mail_email_addr'], '[mail_email_addr]value')->textInput() ?>
                                            <?= $form->field($email_setting['return_path'], '[return_path]setting_value')->textInput(['maxlength' => true, 'placeholder' => 'Manager Mail (ex- admin@gmail.com)']) ?>
                                        </div>
                                        <div class="col-sm-6">
                                            <?= $form->field($email_setting['mail_imap_path'], '[mail_imap_path]setting_value')->textInput(['maxlength' => true, 'placeholder' => 'Imap Path, Ex:-{imap.gmail.com:993/imap/ssl}INBOX']) ?>
                                        </div>
                                    </div>
                                    <div class="smtpsetting">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h4>Setting for mail using SMTP server:</h4>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <?= $form->field($email_setting['sett_host'], '[sett_host]setting_value')->textInput(['maxlength' => true, 'placeholder' => 'Host Name']) ?>
                                            </div>
                                            <div class="col-sm-6">
                                                <?= $form->field($email_setting['sett_uname'], '[sett_uname]setting_value')->textInput(['maxlength' => true, 'placeholder' => 'Username']) ?>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <?= $form->field($email_setting['sett_enc_type'], '[sett_enc_type]setting_value')->dropDownList(['tls' => 'tls', 'ssl' => 'ssl', 'none' => 'none']) ?>
                                            </div>
                                            <div class="col-sm-4">
                                                <?= $form->field($email_setting['sett_port'], '[sett_port]setting_value')->textInput(['maxlength' => true, 'placeholder' => 'Port']) ?>
                                            </div>
                                            <div class="col-sm-4">

                                                <?= $form->field($email_setting['sett_pw'], '[sett_pw]setting_value')->passwordInput(['maxlength' => true, 'placeholder' => 'Password', 'value' => $password_value]) ?>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="">

                                        <div class="row">
                                            <div class="col-sm-4">
                                                <?= $form->field($email_setting['from'], '[from]setting_value')->textInput(['maxlength' => true, 'placeholder' => 'From (ex- admin@gmail.com)']) ?> 
                                            </div>
                                            <div class="col-sm-4">
                                                <?= $form->field($email_setting['reply_to'], '[reply_to]setting_value')->textInput(['maxlength' => true, 'placeholder' => 'Reply To (ex- admin@gmail.com)']) ?>
                                            </div>

                                        </div>
                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div id="menu1" class="tab-pane fade">
                <div class="panel panel-default" style="margin-top: 10px;">
                    <div class="panel-heading"><h4><i class="glyphicon glyphicon-asterisk"></i> <?= Html::encode('Company Information') ?></h4></div>
                    <div class="panel-body">
                        <div class="setting-form">
                            <div class="row">
                                <div class="col-sm-3">
                                    <?= $form->field($setting['company_name'], '[company_name]value')->textInput() ?>
                                </div>
                                <div class="col-sm-3">
                                    <?= $form->field($setting['address'], '[address]value')->textInput() ?>
                                </div>

                                <div class="col-sm-3">
                                    <?= $form->field($setting['phone'], '[phone]value')->textInput() ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="menu2" class="tab-pane fade">
                <div class="panel panel-default" style="margin-top: 10px;">
                    <div class="panel-heading"><h4><i class="glyphicon glyphicon-cog"></i> <?= Html::encode('General Setting') ?></h4></div>
                    <div class="panel-body">

                    </div>
                </div>
            </div>

            <div class="form-group">
                <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
            </div>
        </div>
    </div>
</div>
<?php ActiveForm::end(); ?>
