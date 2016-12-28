<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\EmailSubscribersSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Email Subscribers';
$this->params['breadcrumbs'][] = ['label' => 'Groups', 'url' => ['group/index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="email-subscribers-index" style="margin-top: 10px">

    <!-- quick email widget -->
                            <div class="box box-info">
                                <div class="box-header" style="border-bottom: 1px solid #00c0ef">
                                    <i class="fa fa-group"style="padding: 10px 0px 10px 10px;"></i>
                                    <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
                                    
                                </div>
                                <div class="box-body">
                                        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

                                        <p>
                                            <?= Html::a('Create Email Subscribers', ['create','group_id'=>$group_id], ['class' => 'btn btn-success']) ?>
                                        </p>
                                        <?php Pjax::begin(['id'=>'email_subscribers_index']);?>
                                        <?= GridView::widget([
                                            'dataProvider' => $dataProvider,
                                            'filterModel' => $searchModel,
                                            'columns' => [
                                                ['class' => 'yii\grid\SerialColumn',
                                                     'header'=>'<span style="color:#3c8dbc" title="Serail Number">S.N.</span>',

                                                ],

                                                //'subscriber_id',
                                                //'full_name',
                                                 [
                                                                                    'attribute'=>'full_name',
                                                                                     'filterInputOptions'=>[
                                                                                                                                'class'=>'form-control',
                                                                                                                                'placeholder'=>'Search with full name'
                                                                                                                   ]
                                                 ],
                                                //'subscriber_email:email',
                                                [
                                                                                    'attribute'=>'subscriber_email',
                                                                                     'filterInputOptions'=>[
                                                                                                                                'class'=>'form-control',
                                                                                                                                'placeholder'=>'Search with subscriber email'
                                                                                                                   ]
                                                 ],
                                                //'subscriber_details:ntext',
                                                [
                                                                                    'attribute'=>'subscriber_details',
                                                                                     'filterInputOptions'=>[
                                                                                                                                'class'=>'form-control',
                                                                                                                                'placeholder'=>'Search with subscriber details'
                                                                                                                   ]
                                                 ],
                                                //'group_id',

                                                ['class' => 'yii\grid\ActionColumn',
                                                    'header'=>'<span style="color:#3c8dbc">Action</span>',
                                                    'template'=>'{view}{update}{delete}',
                                                                           'buttons'=>[
                                                                                              'view'=>function($url,$model)

                                                                                                            {

                                                                                                                 $url=$url.'&group_id='.Yii::$app->getRequest()->getQueryParam('group_id');
                                                                                                                 return Html::a( '<span class="glyphicon glyphicon-eye-open"></span>',$url,['title'=>  Yii::t('app','View')]);
                                                                                                            },
                                                                                             'update'=>function($url,$model)

                                                                                                            {
                                                                                                                $url=$url.'&group_id='.Yii::$app->getRequest()->getQueryParam('group_id');
                                                                                                                 return Html::a( '<span class="glyphicon glyphicon-pencil"></span>',$url,['title'=>  Yii::t('app','Edit')]);
                                                                                                            },
                                                                                              'delete'=>  function($url,$model)

                                                                                                            {
                                                                                                                 $url=$url.'&group_id='.Yii::$app->getRequest()->getQueryParam('group_id');
                                                                                                                 return Html::a('<span class="glyphicon glyphicon-trash"></span>', $url,['title'=>  Yii::t('app','Delete'),'data-method'=>'post']);
                                                                                                             }
                                                 ]
                                                ],
                                            ],
                                        ]); ?>
                                    <?php Pjax::end();?>
                                </div>
                                <div class="box-footer clearfix">
<!--                                    <button class="pull-right btn btn-default" id="sendEmail">Send <i class="fa fa-arrow-circle-right"></i></button>-->
                                </div>
                            </div>
    
</div>
