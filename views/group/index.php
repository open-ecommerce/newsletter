<?php

use yii\widgets\Pjax;
use kartik\grid\GridView;
use yii\helpers\Url;
use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $searchModel app\models\GroupSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */


$deleteTip = Yii::t('app', 'Delete this group.');
$deleteMsg = Yii::t('app', 'Are you sure you want to delete this group?');

$this->title = Yii::t('backend', 'Newsletters Groups');
$this->params['breadcrumbs'][] = $this->title;


?>
<div class="group-index" style="margin-top: 10px">
    <!-- quick email widget -->
    <div class="box box-info">

        <div class="box-body">
            <?php // echo $this->render('_search', ['model' => $searchModel]);   ?>

            <?php Pjax::begin(['id' => 'group_index']); ?>
            <?=
            GridView::widget([
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'resizableColumns' => false,
                'showPageSummary' => false,
                'headerRowOptions' => ['class' => 'kartik-sheet-style'],
                'filterRowOptions' => ['class' => 'kartik-sheet-style'],
                'responsive' => true,
                'pjax' => true, // pjax is set to always true for this demo
                'pjaxSettings' => [
                    'neverTimeout' => true,
                ],
                'hover' => true,
                'panel' => [
                    'heading' => '<h3 class="panel-title"><i class="fa fa-group"></i> List of newsletter groups</h3>',
                    'type' => 'primary',
                    'showFooter' => false
                ],
                // set export properties
                'export' => [
                    'fontAwesome' => true
                ],
                // set your toolbar
                'toolbar' => [
                    ['content' =>
                        Html::a('<i class="glyphicon glyphicon-plus"></i>  Create New Group', ['create'], ['class' => 'btn btn-success']),
                    ],
                    '{export}',
                ],
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn',
                        'header' => '<span style="color:#3c8dbc" title="Serail Number">S.N.</span>'
                    ],
                    //'group_id',
                    //'group_name',
                    [
                        'attribute' => 'group_name',
                        'filterInputOptions' => [
                            'class' => 'form-control',
                            'placeholder' => 'Search with group name'
                        ]
                    ],
                    //'group_description:ntext',
                    [
                        'attribute' => 'group_description',
                        'filterInputOptions' => [
                            'class' => 'form-control',
                            'placeholder' => 'Search with group description'
                        ]
                    ],
                    [
                        'class' => 'kartik\grid\ActionColumn',
                        'header' => 'Add Emails',
                        'template' => '{email-subscribers/index}', 
                        'buttons' => [
                            'email-subscribers/index' => function($url, $model) {
                                $url = str_replace('id', 'group_id', $url);

                                return Html::a('<span class="glyphicon glyphicon-envelope"></span>', $url, ['title' => Yii::t('app', 'Add emails')]);
                            },
                        ]
                    ],
                    [
                        'class' => 'kartik\grid\ActionColumn',
                        'header' => 'Update',
                        'template' => '{update}',
                        'viewOptions' => ['label' => '<i class="glyphicon glyphicon-pencil edit-today"></i>'],
                    ],
                    [
                        'class' => 'kartik\grid\ActionColumn',
                        'header' => 'Delete',
                        'template' => '{delete}',
                        'deleteOptions' => ['label' => '<i class="glyphicon glyphicon-trash"></i>'],
                        'deleteOptions' => ['title' => $deleteTip, 'data-toggle' => 'tooltip', 'data-confirm' => $deleteMsg],
                    ],
                ],
            ]);
            ?>
            <?php Pjax::end(); ?>
        </div>
        <div class="box-footer clearfix">
<!--                                    <button class="pull-right btn btn-default" id="sendEmail">Send <i class="fa fa-arrow-circle-right"></i></button>-->
        </div>
    </div>


</div>


