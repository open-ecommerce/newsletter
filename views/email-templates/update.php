<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\EmailTemplates */

$this->title = 'Update Email Templates: ' . ' ' . $model->template_id;
$this->params['breadcrumbs'][] = ['label' => 'Email Templates', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->template_id, 'url' => ['view', 'id' => $model->template_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="email-templates-update">

    <h3><?= Html::encode($this->title) ?></h3>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
