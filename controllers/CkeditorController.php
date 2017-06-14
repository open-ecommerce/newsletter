<?php
namespace tikaraj21\newsletter\controllers;

use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use yii\helpers\BaseFileHelper;

class CkeditorController extends Controller
{ 
    public function actionUrl()
    {         
        $uploadedFile = UploadedFile::getInstanceByName('upload'); 
        
        $file = time()."_".$uploadedFile->name;
        $file_extension = $uploadedFile->extension;

        $url = Yii::$app->urlManager->createAbsoluteUrl('/uploads/newsletter/'.$file);
        BaseFileHelper::createDirectory(Yii::getAlias('@webroot').'/uploads/newsletter/');
        $uploadPath = Yii::getAlias('@webroot').'/uploads/newsletter/'.$file;

        //$url = Yii::$app->urlManager->createAbsoluteUrl(Yii::getAlias('@app').'/storage/web/newsletter/'.$file);
        //BaseFileHelper::createDirectory(Yii::getAlias('@storage').'/web/newsletter/');
        //$uploadPath = Yii::getAlias('@storage').'/web/newsletter/'.$file;

        
        //extensive suitability check before doing anything with the file…
        if ($uploadedFile==null)
        {
           $message = "No file uploaded.";
        }
        else if ($uploadedFile->size == 0)
        {
           $message = "The file is of zero length.";
        }
        elseif ($file_extension!='jpg' && $file_extension!='JPG' && $file_extension!='jpeg' && $file_extension!='JPEG' && $file_extension!='png') {
        $message = "File no allowed.";
        }
        
        else if ($uploadedFile->tempName==null)
        {
           $message = "You may be attempting to hack our server. We're on to you; expect a knock on the door sometime soon.";
        }
        else {
          $message = "";
          $move = $uploadedFile->saveAs($uploadPath);
          if(!$move)
          {
             $message = "Error moving uploaded file. Check the script is granted Read/Write/Modify permissions.";
          } 
        }
        $funcNum = $_GET['CKEditorFuncNum'] ;
        echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction($funcNum, '$url', '$message');</script>";        
    } 
}
?>