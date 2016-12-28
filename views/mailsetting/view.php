<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\newsletter\models\Automailsetting */

$this->title = $model->setting_id;
$this->params['breadcrumbs'][] = ['label' => 'Automailsettings', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="automailsetting-view">

    <h3><?= Html::encode($this->title) ?></h3>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->setting_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->setting_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'setting_id',
            'setting_name',
            'setting_code',
            'setting_value',
        ],
    ]) ?>

</div>
