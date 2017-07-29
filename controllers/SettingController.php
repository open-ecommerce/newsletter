<?php

namespace tikaraj21\newsletter\controllers;

use Yii;
use tikaraj21\newsletter\models\Setting;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\widgets\ActiveForm;
use yii\base\Model;
use tikaraj21\newsletter\models\Mailsetting;

/**
 * SettingController implements the CRUD actions for Setting model.
 */
class SettingController extends Controller {

    public function behaviors() {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all Setting models.
     * @return mixed
     */
    public function actionIndex() {

        //gerenal setting
        $company_name = Setting::findOne(1);
        $company_name->scenario = 'company_name';
        $address = Setting::findOne(2);
        $address->scenario = 'address';
        $country = Setting::findOne(3);
        $country->scenario = 'country';
        $phone = Setting::findOne(4);
        $phone->scenario = 'phone';
        $date = Setting::findOne(5);
        $date->scenario = 'date';
        $date_format = Setting::findOne(6);
        $date_format->scenario = 'date_format';
        $time_zone = Setting::findOne(7);
        $time_zone->scenario = 'time_zone';

        $sun = Setting::findOne(8);
        $sun->scenario = 'sun';
        $mon = Setting::findOne(9);
        $mon->scenario = 'mon';
        $tue = Setting::findOne(10);
        $tue->scenario = 'tue';
        $wed = Setting::findOne(11);
        $wed->scenario = 'wed';
        $thu = Setting::findOne(12);
        $thu->scenario = 'thu';
        $fri = Setting::findOne(13);
        $fri->scenario = 'fri';
        $sat = Setting::findOne(14);
        $sat->scenario = 'sat';

        $leave_remaining_month = Setting::findOne(22);
        $leave_remaining_month->scenario = 'leave_remaining_month';

        //email setting from tbl_mailsetting
        $sett_mail_type = Mailsetting::findOne(1);
        $sett_mail_type->scenario = 'mail_type';

        $sett_re_intval = Mailsetting::findOne(2);
        $sett_re_intval->scenario = 'reload';

        $sett_no_mail = Mailsetting::findOne(3);
        $sett_no_mail->scenario = 'no_of_mail';

        $mail_encode_bit = Mailsetting::findOne(4);
        $mail_encode_bit->scenario = 'encode_bit';

        $mail_imap_path = Mailsetting::findOne(5);
        $mail_imap_path->scenario = 'imap_path';

        $sett_host = Mailsetting::findOne(6);
        $sett_host->scenario = 'host';

        $sett_uname = Mailsetting::findOne(7);
        $sett_uname->scenario = 'uname';

        $sett_pw = Mailsetting::findOne(8);
        //EGS no funca $sett_pw->setting_value = Setting::decrypt($sett_pw->setting_value, 'bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3');
        $sett_pw->setting_value = '123';
        //die;
        $sett_pw->scenario = 'pw';

        $sett_enc_type = Mailsetting::findOne(9);
        $sett_enc_type->scenario = 'enc';

        $sett_port = Mailsetting::findOne(10);
        $sett_port->scenario = 'port';

        $from = Mailsetting::findOne(11);
        $from->scenario = 'from';

        $reply_to = Mailsetting::findOne(12);
        $reply_to->scenario = 'reply_to';

        $return_path = Mailsetting::findOne(13);
        $return_path->scenario = 'return_path';

        $sett_mail_mode = Mailsetting::findOne(15);
        $sett_mail_mode->scenario = 'mail_mode';


        //email sending option
        $attendance_email_opt = Setting::findOne(15);
        $attendance_email_opt->scenario = 'attendance_email_opt';
        $leave_req_opt = Setting::findOne(16);
        $leave_req_opt->scenario = 'leave_req_opt';
        $attendance_correctn_opt = Setting::findOne(17);
        $attendance_correctn_opt->scenario = 'attendance_correctn_opt';

        $staff_present = Setting::findOne(20);
        $staff_present->scenario = 'staff_present';

        $attendance_alert_message = Setting::findOne(21);
        $attendance_alert_message->scenario = 'attendance_alert_message';

        $mail_email_addr = Setting::findOne(19);
        $mail_email_addr->scenario = 'mail_email_addr';


        $setting = [
            'company_name' => $company_name,
            'address' => $address,
            'country' => $country,
            'phone' => $phone,
            'date' => $date,
            'date_format' => $date_format,
            'time_zone' => $time_zone,
            'attendance_email_opt' => $attendance_email_opt,
            'leave_req_opt' => $leave_req_opt,
            'attendance_correctn_opt' => $attendance_correctn_opt,
            'staff_present' => $staff_present,
            'attendance_alert_message' => $attendance_alert_message,
            'sun' => $sun,
            'mon' => $mon,
            'tue' => $tue,
            'wed' => $wed,
            'thu' => $thu,
            'fri' => $fri,
            'sat' => $sat,
            'leave_remaining_month' => $leave_remaining_month,
            'mail_email_addr' => $mail_email_addr
        ];

        $email_setting = [
            'sett_mail_type' => $sett_mail_type,
            'sett_mail_mode' => $sett_mail_mode,
            'sett_re_intval' => $sett_re_intval,
            'sett_no_mail' => $sett_no_mail,
            'mail_encode_bit' => $mail_encode_bit,
            'mail_imap_path' => $mail_imap_path,
            'sett_host' => $sett_host,
            'sett_uname' => $sett_uname,
            'sett_pw' => $sett_pw,
            'sett_enc_type' => $sett_enc_type,
            'sett_port' => $sett_port,
            'from' => $from,
            'reply_to' => $reply_to,
            'return_path' => $return_path
        ];

        if (Yii::$app->request->post()) {

            if (Model::loadMultiple($setting, Yii::$app->request->post()) && Model::validateMultiple($setting) && Model::loadMultiple($email_setting, Yii::$app->request->post()) && Model::validateMultiple($email_setting)) {
                $result = NULL;
                $result2 = NULL;
                $check = NULL;
                $count = 0;
                foreach ($setting as $setting_datas) {
                    if (($count == 4) && ($setting_datas->value == 'N')) {
                        $check = TRUE;
                    }
                    if ($check) {
                        if ($count == 5) {
                            $setting_datas->value = '0';
                        }
                    }

                    $result = $setting_datas->save();
                    $count++;
                }
                if ($result) {
                    foreach ($email_setting as $setting_datas) {

                        if ($setting_datas->scenario == 'pw') {

                            $setting_datas->setting_value = Setting::encrypt($setting_datas->setting_value, 'bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3');
                        }

                        $result2 = $setting_datas->save();
                    }
                }
                if ($result2) {
                    Yii::$app->session->setFlash('success', 'Successfully Saved.'); //for success.
                } else {
                    Yii::$app->session->setFlash('danger', 'Saving not successful.'); //for for wrong event.
                }


                return $this->redirect(Yii::$app->request->referrer);
            }
        }


        $password_value = $sett_pw->setting_value;

        return $this->render('index', [
                    'setting' => $setting,
                    'email_setting' => $email_setting,
                    'password_value' => $password_value
        ]);
    }

    /* action for multiple update date in setting */

    public function actionSave() {
        $model = new Setting();




        if (Yii::$app->request->isAjax && $model->load($_POST)) {
            Yii::$app->response->format = 'json';
            return ActiveForm::validate($model);
        }

        if (Yii::$app->request->post()) {
            //echo "<pre>";
            // print_r(Yii::$app->request->post());
            //die;

            $i = 0;
            $j = false;

            foreach (Yii::$app->request->post('companyInfo') as $checkBlank) {
                if ($i < 7) {
                    if ($checkBlank == null) {
                        $j = true;
                        Yii::$app->session->setFlash('error');
                    }
                }
                $i++;
            }

            if ($j == false) {

                $sucess = false;
//                echo "<pre>";
//                print_r($_POST['companyInfo']);exit;
                foreach (Yii::$app->request->post('companyInfo') as $keys => $values) {

                    //query in sql is UPDATE tbl_setting SET value='$values' WHERE code ='$keys'

                    $value = $model::updateAll(['value' => $values], 'code ="' . $keys . '"');


                    if ($value) {
                        $sucess = true;
                    }
                }


                if ($sucess) {


                    Yii::$app->session->setFlash('success', 'Succesfully Saved.');
                }
            }
        }




        return $this->redirect('index');
    }

    public function actionCheckemail() {
        //to check the validity of email address
        $myData = Yii::$app->request->post();

        $newData = $myData['datas'];



        if (filter_var($newData, FILTER_VALIDATE_EMAIL)) {
            echo 1;
        } else {
            echo 0;
        }
    }

    public function actionCheckinte() {
        //to check the validity of SMTP Port
        $myData = Yii::$app->request->post();

        $newData = $myData['datas'];




        if (!filter_var($newData, FILTER_VALIDATE_INT) === false) {

            echo 1;
        } else {
            echo 0;
        }
    }

    /**
     * Displays a single Setting model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id) {
        return $this->render('view', [
                    'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Setting model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate() {
        $model = new Setting();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Setting model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id) {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                        'model' => $model,
            ]);
        }
    }

    public function actionSms() {
        mail('9999@9999.com', 'Check', 'You are taking first step ahead.');
    }

    /**
     * Deletes an existing Setting model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id) {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Setting model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Setting the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = Setting::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionGetMonths() {
        if (Yii::$app->request->post()) {
            return Setting::HtmlOptionAjax(Yii::$app->request->post()['timeformat']);
        }
    }

}
