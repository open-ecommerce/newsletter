<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\newsletter\models\MergeFieldsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Merge Fields';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="merge-fields-index" style="margin-top: 10px">

    <!-- quick email widget -->
                            <div class="box box-info">
                                <div class="box-header" style="border-bottom: 1px solid #00c0ef">
                                    <i class="fa fa-code-fork" style="padding: 10px 1px 10px 10px;"></i>
                                    <i class="fa fa-plus-circle" style="font-size: 10px;padding: 10px 0px 10px 0px;"></i>
                                    <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
                                    
                                </div>
                                <div class="box-body">
                                        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

                                        <p>
                                            <?= Html::a('Create Merge Fields', ['create'], ['class' => 'btn btn-success']) ?>
                                        </p>

                                        <?= GridView::widget([
                                            'dataProvider' => $dataProvider,
                                            'filterModel' => $searchModel,
                                            'columns' => [
                                                ['class' => 'yii\grid\SerialColumn',
                                                 'header'=>'<span style="color:#3c8dbc" title="Serail Number">S.N.</span>'    
                                                ],

                                                //'merge_field_id',
                                                //'merge_field_name',
                                                 [
                                                    'attribute'=>'merge_field_name',
                                                     'filterInputOptions'=>[
                                                                                'class'=>'form-control',
                                                                                'placeholder'=>'Search menu by merge field name'
                                                                           ]
                                                 ],
                                                //'merge_field_code',
                                                [
                                                    'attribute'=>'merge_field_code',
                                                     'filterInputOptions'=>[
                                                                                'class'=>'form-control',
                                                                                'placeholder'=>'Search menu by merge field code'
                                                                           ]
                                                 ],
                                                //'merge_field_description:ntext',
                                                [
                                                    'attribute'=>'merge_field_description',
                                                     'filterInputOptions'=>[
                                                                                'class'=>'form-control',
                                                                                'placeholder'=>'Search menu by merge field description'
                                                                           ]
                                                 ],

                                                ['class' => 'yii\grid\ActionColumn',
                                                     'header'=>'<span style="color:#3c8dbc">Action</span>'
                                                 ],
                                            ],
                                        ]); ?>
                                </div>
                                <div class="box-footer clearfix">
<!--                                    <button class="pull-right btn btn-default" id="sendEmail">Send <i class="fa fa-arrow-circle-right"></i></button>-->
                                </div>
                            </div>
    

</div>
