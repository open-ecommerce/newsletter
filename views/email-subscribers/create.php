<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\EmailSubscribers */

$this->title = 'Create Email Subscriber';
$this->params['breadcrumbs'][] = ['label' => 'Groups', 'url' => ['group/index']];
$this->params['breadcrumbs'][] = ['label' => 'Email Subscribers', 'url' => ['index','group_id'=>$group_id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="email-subscribers-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
