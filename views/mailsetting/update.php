<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\newsletter\models\Automailsetting */
$this->title = 'Update Mail setting';
$this->params['breadcrumbs'][] = $this->title;

?>
<div class="automailsetting-update">

    <h3><?= Html::encode($this->title) ?></h3>

    <?= $this->render('_form', [
                    'email_setting'=>$email_setting,
        
                    'sett_mail_type'=>$sett_mail_type,
                    'sett_re_intval' => $sett_re_intval,
                    'sett_no_mail' => $sett_no_mail,
                    'mail_encode_bit'=>$mail_encode_bit,

                    'sett_host'=>$sett_host,
                    'sett_uname'=>$sett_uname,
                    'sett_pw'=>$sett_pw,
                    'sett_enc_type'=>$sett_enc_type,
                    'sett_port'=>$sett_port,

                    'from'=>$from,
                    'reply_to'=>$reply_to,
                    'return_path'=>$return_path
    ]) ?>

</div>
