<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\EmailSubscribers */

$this->title = 'Update Email Subscriber: ' . ' ' . $model->subscriber_id;
$this->params['breadcrumbs'][] = ['label' => 'Groups', 'url' => ['group/index']];
$this->params['breadcrumbs'][] = ['label' => 'Email Subscribers', 'url' => ['index','group_id'=>$group_id]];
$this->params['breadcrumbs'][] = ['label' => $model->subscriber_id, 'url' => ['view', 'id' => $model->subscriber_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="email-subscribers-update">


    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
