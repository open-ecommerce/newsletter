<?php

namespace vendor\tikaraj21\newsletter\controllers;

use Yii;
use vendor\tikaraj21\newsletter\models\Group;
use vendor\tikaraj21\newsletter\models\GroupSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;

/**
 * GroupController implements the CRUD actions for Group model.
 */
class GroupController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
            'access'=>[
                                'class'=>AccessControl::classname(),
                                'only'=>['index','create','update','delete'],
                                'rules'=>[
                                            [
                                                'allow'=>true,
                                                'roles'=>['@']
                                            ],
                                ]
                    ]
        ];
    }

    /**
     * Lists all Group models.
     * @return mixed
     */
    public function actionIndex()
    {
       
       
       
        if(Yii::$app->user->can('/*')){
                $searchModel = new GroupSearch();
                $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

                return $this->render('index', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
                ]);
       }
       else{
           throw new ForbiddenHttpException;
       }
        
    }

    /**
     * Displays a single Group model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        if(Yii::$app->user->can('/*')){
                return $this->render('view', [
                    'model' => $this->findModel($id),
                ]);
       }
       else{
           throw new ForbiddenHttpException;
       }
        
    }

    /**
     * Creates a new Group model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if(Yii::$app->user->can('/*')){
            $model = new Group();

            if ($model->load(Yii::$app->request->post()) && $model->save()) {
                return $this->redirect(['index']);
            } else {
                return $this->render('create', [
                    'model' => $model,
                ]);
            }
       }
       else{
           throw new ForbiddenHttpException;
       }
        
    }

    /**
     * Updates an existing Group model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        if(Yii::$app->user->can('/*')){
                $model = $this->findModel($id);

                if ($model->load(Yii::$app->request->post()) && $model->save()) {
                    return $this->redirect(['index']);
                } else {
                    return $this->render('update', [
                        'model' => $model,
                    ]);
                }
       }
       else{
           throw new ForbiddenHttpException;
       }
        
    }

    /**
     * Deletes an existing Group model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        if(Yii::$app->user->can('/*')){
                $this->findModel($id)->delete();

                return $this->redirect(['index']);
       }
       else{
           throw new ForbiddenHttpException;
       }
        
    }

    /**
     * Finds the Group model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Group the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Group::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
