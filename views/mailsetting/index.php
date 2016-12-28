<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Automailsettings';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="automailsetting-index">

    <h3><?= Html::encode($this->title) ?></h3>

    <p>
        <?= Html::a('Create Automailsetting', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'setting_id',
            'setting_name',
            'setting_code',
            'setting_value',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
