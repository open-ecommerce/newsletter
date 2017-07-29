<?php

namespace tikaraj21\newsletter\models;

use Yii;
use tikaraj21\newsletter\models\Mailsetting;

/**
 * This is the model class for table "tbl_setting".
 *
 * @property integer $id
 * @property string $title
 * @property string $code
 * @property string $value
 * @property string $description
 */
class Setting extends \yii\db\ActiveRecord {

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return '{{%setting}}';
    }

    /**
     * @inheritdoc
     */
    public function rules() {

        return [
            [['title', 'code', 'value'], 'required'],
            [['description'], 'string'],
            [['title'], 'string', 'max' => 255],
            [['code'], 'string', 'max' => 45],
            [['value'], 'string', 'max' => 255],
            [['value'], 'string', 'max' => 255, 'on' => 'company_name'],
            [['value'], 'string', 'max' => 255, 'on' => 'address'],
            [['value'], 'integer', 'on' => 'country'],
            [['value'], 'string', 'min' => 9, 'on' => 'phone'],
            [['value'], 'integer', 'on' => 'phone'],
            [['value'], 'string', 'on' => 'date'],
            [['value'], 'string', 'on' => 'date_format'],
            [['value'], 'string', 'on' => 'time_zone'],
            [['value'], 'boolean', 'on' => 'attendance_email_opt'],
            [['value'], 'boolean', 'on' => 'leave_req_opt'],
            [['value'], 'boolean', 'on' => 'attendance_correctn_opt'],
            [['value'], 'boolean', 'on' => 'mail_to_manager_opt'],
            [['value'], 'integer', 'on' => 'sun'],
            [['value'], 'integer', 'on' => 'mon'],
            [['value'], 'integer', 'on' => 'tue'],
            [['value'], 'integer', 'on' => 'wed'],
            [['value'], 'integer', 'on' => 'thu'],
            [['value'], 'integer', 'on' => 'fri'],
            [['value'], 'integer', 'on' => 'sat'],
            [['value'], 'integer', 'on' => 'leave_remaining_month'],
            [['value'], 'email', 'on' => 'mail_email_addr'],
            [['value'], 'integer', 'on' => 'staff_present'],
            [['value'], 'integer', 'on' => 'attendance_alert_message'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        switch ($this->getScenario()) {
            case 'company_name':
                return [
                    'value' => 'Company Name',
                ];
                break;
            case 'address':
                return [
                    'value' => 'Address',
                ];
                break;
            case 'country':
                return [
                    'value' => 'Country',
                ];
                break;
            case 'phone':
                return [
                    'value' => 'Phone',
                ];
                break;
            case 'staff_present':
                return [
                    'value' => 'Show Present Staff in Attendance Page',
                ];
                break;
            case 'attendance_alert_message':
                return [
                    'value' => 'Attendance Alert Message',
                ];
                break;
            case 'date':
                return [
                    'value' => 'Date',
                ];
                break;

            case 'date_format':
                return [
                    'value' => 'Date Format'
                ];
                break;

            case 'time_zone':
                return [
                    'value' => 'Time Zone',
                ];
                break;

            case 'attendance_email_opt':
                return [
                    'value' => 'i.Tick mark if should send attendance email'
                ];
                break;

            case 'leave_req_opt':
                return [
                    'value' => 'ii. Tick mark to send leave request mail'
                ];
                break;

            case 'attendance_correctn_opt':
                return [
                    'value' => 'iii. Tick mark to send attedance correction request'
                ];
                break;

            case 'mail_to_manager_opt':
                return [
                    'value' => 'iv. Tick mark to send mail to manager'
                ];
                break;
            case 'sun':
                return [
                    'value' => 'i. Sunday'
                ];
                break;
            case 'mon':
                return [
                    'value' => 'ii. Monday'
                ];
                break;
            case 'tue':
                return [
                    'value' => 'iii. Tuesday'
                ];
                break;
            case 'wed':
                return [
                    'value' => 'vi. Wednesday'
                ];
                break;
            case 'thu':
                return [
                    'value' => 'iv. Thursday'
                ];
                break;
            case 'fri':
                return [
                    'value' => 'vii. Friday'
                ];
                break;
            case 'sat':
                return [
                    'value' => 'viii. Saturday'
                ];
                break;
            case 'mail_email_addr':
                return [
                    'value' => 'Manager Email Address'
                ];
                break;
            case 'leave_remaining_month':
                return [
                    'value' => 'Leave Review Month'
                ];
                break;

            //default
            default:
                return [
                    'id' => 'ID',
                    'title' => 'Title',
                    'code' => 'Code',
                    'value' => 'Value',
                    'description' => 'Description',
                ];
        }
    }

    /* public action for setting to set value with code */

    public function Setsetting($code, $value) {
        $model = $this->updateAll(['value' => $value], 'code ="' . $code . '"');

        return $model;
    }

    /* public action for setting to get value with code */

    public static function Getsetting($code) {

        $receivedValue = self::find()->where(['code' => $code])->one();

        return $receivedValue['value'];
    }

    /* public action for setting to get value with code */

    public static function getMailSetting($code) {

        $receivedValue = self::find()->where(['code' => $code])->one();

        return $receivedValue['value'];
    }

    public static function GetSettModel($id) {

        $setting = Setting::findOne($id);
        $setting->SettValidate($id);
        return $setting;
    }

    public function SettValidate($id) {
        return $this->rules($id);
    }

    public static function getStrictDaysWithoutRegularHolidays() {

        $regularHolidaysArrOrg = \yii\helpers\ArrayHelper::map(RegularHoliday::find()->all(), 'day', 'day');
        $regularHolidaysArr = [];
        foreach ($regularHolidaysArrOrg as $regularHolidaysArrO) {
            $regularHolidaysArr[] = 'D_' . strtoupper($regularHolidaysArrO);
        }
        $day_arr = [];
        $total_days = ['D_SUNDAY', 'D_MONDAY', 'D_TUESDAY', 'D_WEDNESDAY', 'D_THURSDAY', 'D_FRIDAY', 'D_SATURDAY'];

        foreach ($total_days as $total_day) {

            if ($sett = Setting::findOne(['code' => $total_day])->value) {
                if (!in_array($total_day, $regularHolidaysArr)) {
                    $day_arr [] = $total_day;
                }
            }
        }

        return $day_arr;
    }

    public static function sendMail($from, $subject, $message_body) {

        /* Starting configuration for smtp or other type */

        //testing or production mode
        Yii::$app->email->setMailMode(Mailsetting::getData('GE_MAIL_MODE')); //aeruement is either 'SMTP' or 'PHPMAIL'
        
        
        Yii::$app->email->setMailType(Mailsetting::getData('GE_MAIL_TYPE')); //aeruement is either 'SMTP' or 'PHPMAIL'
        //Passing arguement for Host setting
        Yii::$app->email->setHost(Mailsetting::getData('GE_SERVER_HOST')); // aeruement is 'smtp.gmail.com' for gmail
        //Passing arguement for Username setting
        $user = Mailsetting::getData('GE_SERVER_USERNAME');
        Yii::$app->email->setUname($user);

        //Passing arguement for Password setting
        $pass = Setting::decrypt(Mailsetting::getData('GE_SERVER_PASSWORD'), 'bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3');
        Yii::$app->email->setPassd($pass);

        //Passing arguement for Encryption Type setting
        Yii::$app->email->setEncType(Mailsetting::getData('GE_SERVER_ENC_TYPE')); //encryption type must either be 'ssl' or 'tls'
        //Passing arguement for Port setting
        Yii::$app->email->setServerPort(Mailsetting::getData('GE_SERVER_PORT')); // port of gmail server is '465' for 'SSL' and '587' for 'TLS'

        /* Ending configuration for smtp or other type */
        Yii::$app->email->configSet(); //note that email setting is completed only after executing this function

        /* Starting configuration for php mail */

        //Passing arguement to set from
        Yii::$app->email->setFrom(Mailsetting::getData('GE_PHP_FROM'));

        //Passing arguement to set Reply To
        Yii::$app->email->setReplyTo(Mailsetting::getData('GE_PHP_REPLY_TO'));

        //Passing arguement to set Return Path
        Yii::$app->email->setReturnPath(Mailsetting::getData('GE_PHP_RETURN_PATH'));


//                .............................................................................................


        Yii::$app->email->configSet(); //note that email setting is completed only when execute this function




        $to = Mailsetting::getData('GE_PHP_RETURN_PATH');


        return Yii::$app->email->SendMail($from, $to, $subject, $message_body, NULL, NULL, NULL);
    }

    public static function encrypt($plaintext, $key) {

        $iv = mcrypt_create_iv(
                mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC), MCRYPT_DEV_URANDOM
        );

        return $encrypted = base64_encode(
                $iv .
                mcrypt_encrypt(
                        MCRYPT_RIJNDAEL_128, hash('sha256', $key, true), $plaintext, MCRYPT_MODE_CBC, $iv
                )
        );
    }

    public static function decrypt($ciphertext_base64, $key) {
        $data = base64_decode($ciphertext_base64);
        $iv = substr($data, 0, mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC));

        return $decrypted = rtrim(
                mcrypt_decrypt(
                        MCRYPT_RIJNDAEL_128, hash('sha256', $key, true), substr($data, mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC)), MCRYPT_MODE_CBC, $iv
                ), "\0"
        );
    }

    public static function MonthArray() {
        return Yii::$app->session['time'] == 'eng' ? [
            '01' => "January",
            '02' => "February",
            '03' => "March",
            '04' => "April",
            '05' => "May",
            '06' => "June",
            '07' => "July",
            '08' => "August",
            '09' => "September",
            '10' => "October",
            '11' => "November",
            '12' => "December"
                ] : [
            '01' => 'Baisakh',
            '02' => 'Jestha',
            '03' => 'Ashad',
            '04' => 'Srawan',
            '05' => 'Bhadra',
            '06' => 'Aswin',
            '07' => 'Kartiks',
            '08' => 'Mangshir',
            '09' => 'Poush',
            '10' => 'Magh',
            '11' => 'Falgun',
            '12' => 'Chaitra'
        ];
    }

    public static function TimeZone() {
        return [
            'Pacific/Midway' => "(GMT-11:00) Midway Island",
            'US/Samoa' => "(GMT-11:00) Samoa",
            'US/Hawaii' => "(GMT-10:00) Hawaii",
            'US/Alaska' => "(GMT-09:00) Alaska",
            'US/Pacific' => "(GMT-08:00) Pacific Time (US &amp; Canada)",
            'America/Tijuana' => "(GMT-08:00) Tijuana",
            'US/Arizona' => "(GMT-07:00) Arizona",
            'US/Mountain' => "(GMT-07:00) Mountain Time (US &amp; Canada)",
            'America/Chihuahua' => "(GMT-07:00) Chihuahua",
            'America/Mazatlan' => "(GMT-07:00) Mazatlan",
            'America/Mexico_City' => "(GMT-06:00) Mexico City",
            'America/Monterrey' => "(GMT-06:00) Monterrey",
            'Canada/Saskatchewan' => "(GMT-06:00) Saskatchewan",
            'US/Central' => "(GMT-06:00) Central Time (US &amp; Canada)",
            'US/Eastern' => "(GMT-05:00) Eastern Time (US &amp; Canada)",
            'US/East-Indiana' => "(GMT-05:00) Indiana (East)",
            'America/Bogota' => "(GMT-05:00) Bogota",
            'America/Lima' => "(GMT-05:00) Lima",
            'America/Caracas' => "(GMT-04:30) Caracas",
            'Canada/Atlantic' => "(GMT-04:00) Atlantic Time (Canada)",
            'America/La_Paz' => "(GMT-04:00) La Paz",
            'America/Santiago' => "(GMT-04:00) Santiago",
            'Canada/Newfoundland' => "(GMT-03:30) Newfoundland",
            'America/Buenos_Aires' => "(GMT-03:00) Buenos Aires",
            'Greenland' => "(GMT-03:00) Greenland",
            'Atlantic/Stanley' => "(GMT-02:00) Stanley",
            'Atlantic/Azores' => "(GMT-01:00) Azores",
            'Atlantic/Cape_Verde' => "(GMT-01:00) Cape Verde Is.",
            'Africa/Casablanca' => "(GMT) Casablanca",
            'Europe/Dublin' => "(GMT) Dublin",
            'Europe/Lisbon' => "(GMT) Lisbon",
            'Europe/London' => "(GMT) London",
            'Africa/Monrovia' => "(GMT) Monrovia",
            'Europe/Amsterdam' => "(GMT+01:00) Amsterdam",
            'Europe/Belgrade' => "(GMT+01:00) Belgrade",
            'Europe/Berlin' => "(GMT+01:00) Berlin",
            'Europe/Bratislava' => "(GMT+01:00) Bratislava",
            'Europe/Brussels' => "(GMT+01:00) Brussels",
            'Europe/Budapest' => "(GMT+01:00) Budapest",
            'Europe/Copenhagen' => "(GMT+01:00) Copenhagen",
            'Europe/Ljubljana' => "(GMT+01:00) Ljubljana",
            'Europe/Madrid' => "(GMT+01:00) Madrid",
            'Europe/Paris' => "(GMT+01:00) Paris",
            'Europe/Prague' => "(GMT+01:00) Prague",
            'Europe/Rome' => "(GMT+01:00) Rome",
            'Europe/Sarajevo' => "(GMT+01:00) Sarajevo",
            'Europe/Skopje' => "(GMT+01:00) Skopje",
            'Europe/Stockholm' => "(GMT+01:00) Stockholm",
            'Europe/Vienna' => "(GMT+01:00) Vienna",
            'Europe/Warsaw' => "(GMT+01:00) Warsaw",
            'Europe/Zagreb' => "(GMT+01:00) Zagreb",
            'Europe/Athens' => "(GMT+02:00) Athens",
            'Europe/Bucharest' => "(GMT+02:00) Bucharest",
            'Africa/Cairo' => "(GMT+02:00) Cairo",
            'Africa/Harare' => "(GMT+02:00) Harare",
            'Europe/Helsinki' => "(GMT+02:00) Helsinki",
            'Europe/Istanbul' => "(GMT+02:00) Istanbul",
            'Asia/Jerusalem' => "(GMT+02:00) Jerusalem",
            'Europe/Kiev' => "(GMT+02:00) Kyiv",
            'Europe/Minsk' => "(GMT+02:00) Minsk",
            'Europe/Riga' => "(GMT+02:00) Riga",
            'Europe/Sofia' => "(GMT+02:00) Sofia",
            'Europe/Tallinn' => "(GMT+02:00) Tallinn",
            'Europe/Vilnius' => "(GMT+02:00) Vilnius",
            'Asia/Baghdad' => "(GMT+03:00) Baghdad",
            'Asia/Kuwait' => "(GMT+03:00) Kuwait",
            'Africa/Nairobi' => "(GMT+03:00) Nairobi",
            'Asia/Riyadh' => "(GMT+03:00) Riyadh",
            'Europe/Moscow' => "(GMT+03:00) Moscow",
            'Asia/Tehran' => "(GMT+03:30) Tehran",
            'Asia/Baku' => "(GMT+04:00) Baku",
            'Europe/Volgograd' => "(GMT+04:00) Volgograd",
            'Asia/Muscat' => "(GMT+04:00) Muscat",
            'Asia/Tbilisi' => "(GMT+04:00) Tbilisi",
            'Asia/Yerevan' => "(GMT+04:00) Yerevan",
            'Asia/Kabul' => "(GMT+04:30) Kabul",
            'Asia/Karachi' => "(GMT+05:00) Karachi",
            'Asia/Tashkent' => "(GMT+05:00) Tashkent",
            'Asia/Kolkata' => "(GMT+05:30) Kolkata",
            'Asia/Kathmandu' => "(GMT+05:45) Kathmandu",
            'Asia/Yekaterinburg' => "(GMT+06:00) Ekaterinburg",
            'Asia/Almaty' => "(GMT+06:00) Almaty",
            'Asia/Dhaka' => "(GMT+06:00) Dhaka",
            'Asia/Novosibirsk' => "(GMT+07:00) Novosibirsk",
            'Asia/Bangkok' => "(GMT+07:00) Bangkok",
            'Asia/Jakarta' => "(GMT+07:00) Jakarta",
            'Asia/Krasnoyarsk' => "(GMT+08:00) Krasnoyarsk",
            'Asia/Chongqing' => "(GMT+08:00) Chongqing",
            'Asia/Hong_Kong' => "(GMT+08:00) Hong Kong",
            'Asia/Kuala_Lumpur' => "(GMT+08:00) Kuala Lumpur",
            'Australia/Perth' => "(GMT+08:00) Perth",
            'Asia/Singapore' => "(GMT+08:00) Singapore",
            'Asia/Taipei' => "(GMT+08:00) Taipei",
            'Asia/Ulaanbaatar' => "(GMT+08:00) Ulaan Bataar",
            'Asia/Urumqi' => "(GMT+08:00) Urumqi",
            'Asia/Irkutsk' => "(GMT+09:00) Irkutsk",
            'Asia/Seoul' => "(GMT+09:00) Seoul",
            'Asia/Tokyo' => "(GMT+09:00) Tokyo",
            'Australia/Adelaide' => "(GMT+09:30) Adelaide",
            'Australia/Darwin' => "(GMT+09:30) Darwin",
            'Asia/Yakutsk' => "(GMT+10:00) Yakutsk",
            'Australia/Brisbane' => "(GMT+10:00) Brisbane",
            'Australia/Canberra' => "(GMT+10:00) Canberra",
            'Pacific/Guam' => "(GMT+10:00) Guam",
            'Australia/Hobart' => "(GMT+10:00) Hobart",
            'Australia/Melbourne' => "(GMT+10:00) Melbourne",
            'Pacific/Port_Moresby' => "(GMT+10:00) Port Moresby",
            'Australia/Sydney' => "(GMT+10:00) Sydney",
            'Asia/Vladivostok' => "(GMT+11:00) Vladivostok",
            'Asia/Magadan' => "(GMT+12:00) Magadan",
            'Pacific/Auckland' => "(GMT+12:00) Auckland",
            'Pacific/Fiji' => "(GMT+12:00) Fiji",
        ];
    }

    public static function HtmlOption() {
        $month_arr = self::MonthArray();
        $html = NULL;
        for ($i = 0; $i <= 12; $i++) {
            if ($i < 10) {
                $value = '0' . $i;
            } else {
                $value = $i;
            }
            if ($value == 00) {
                $html .= '<option value="">Select Month</option>';
            } else {
                $html .= '<option value=' . $value . '>' . $month_arr[$value] . '</option>';
            }
        }
        return $html;
    }

    public static function HtmlOptionAjax($time) {
        if ($time == 'nep') {
            $month_arr = self::NepaliMonthArray();
        } else {
            $month_arr = self::EnglishMonthArray();
        }

        $html = NULL;
        for ($i = 0; $i <= 12; $i++) {
            if ($i < 10) {
                $value = '0' . $i;
            } else {
                $value = $i;
            }
            if ($value == 00) {
                $html .= '<option value="">Select Month</option>';
            } else {
                $html .= '<option value=' . $value . '>' . $month_arr[$value] . '</option>';
            }
        }
        return $html;
    }

    public static function NepaliMonthArray() {
        return [
            '01' => 'Baisakh',
            '02' => 'Jestha',
            '03' => 'Ashad',
            '04' => 'Srawan',
            '05' => 'Bhadra',
            '06' => 'Aswin',
            '07' => 'Kartiks',
            '08' => 'Mangshir',
            '09' => 'Poush',
            '10' => 'Magh',
            '11' => 'Falgun',
            '12' => 'Chaitra'
        ];
    }

    public static function EnglishMonthArray() {
        return [
            '01' => "January",
            '02' => "February",
            '03' => "March",
            '04' => "April",
            '05' => "May",
            '06' => "June",
            '07' => "July",
            '08' => "August",
            '09' => "September",
            '10' => "October",
            '11' => "November",
            '12' => "December"
        ];
    }

    /**
     * Returns a datetime according to defined in setting.
     * <li></li>
     * <li><b>Syntax</b></li>
     * GetTimeAccordingToSetting($datetime)
     * <li></li>
     * <li><b>$datetime</b>english datetime</li>
     */
    public static function GetTimeAccordingToSetting($datetime) {
        $dateObj = date_create($datetime);
        $date = $dateObj->format('Y-m-d');
        if (Yii::$app->session['time'] == 'nep') {
            $date = Payslip::english_to_nepali($date);
        }
        return $date . ' ' . $dateObj->format('H:i');
    }

    /**
     * Returns a date according to defined in setting.
     * <li></li>
     * <li><b>Syntax</b></li>
     * GetDateAccordingToSetting($date);
     * <li></li>
     * <li><b>$datetime</b>english datetime</li>
     */
    public static function GetDateAccordingToSetting($date) {
        $dateObj = date_create($date);
        $date = $dateObj->format('Y-m-d');
        if (Yii::$app->session['time'] == 'nep') {
            $date = Payslip::english_to_nepali($date);
        }
        return $date;
    }

    /**
     * Returns english date according to defined in setting.
     * <li></li>
     * <li><b>Syntax</b></li>
     * GetEnglichDate($date);
     * <li></li>
     * <li><b>$datetime</b>datetime</li>
     */
    public static function GetEnglichDate($date) {

        if (Yii::$app->session['time'] == 'nep') {
            $date = Payslip::nepali_to_english($date);
        }
        return $date;
    }

    public static function CheckEndDayCurrentMonth() {
        $result = FALSE;
        if (Yii::$app->session['time'] == 'nep') {
            $nepali_date_arr = explode('-', Payslip::english_to_nepali(date('Y-m-d')));
            $nepali_last_day = $nepali_date_arr[2];
            $Api = new NepaliDateApi;
            $end_date = $Api->get_last_of_month($nepali_date_arr[1], $nepali_date_arr[0]);
            if ($nepali_last_day == $end_date) {
                $result = TRUE;
            }
        } else {
            $result = self::CheckEndDateThisMonth();
        }
    }

    public static function CheckEndDateThisMonth() {

        $maxDays = date('t'); //maximum day in this month
        $currentDayOfMonth = date('j'); //last day of this month

        if ($maxDays == $currentDayOfMonth) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    public static function GetNextPreviousMonthValue() {
        if (Yii::$app->session['time'] == 'nep') {
            $nepaliPrevMonth = explode('-', Payslip::english_to_nepali(date('Y-m-d')))[1] - 2;
            if ($nepaliPrevMonth == -1) {
                $nepaliPrevMonth = 11;
            } elseif ($nepaliPrevMonth == 0) {
                $nepaliPrevMonth = 12;
            }

            return $nepaliPrevMonth;
        } else {
            return date('m');
        }
    }

    public static function GetFirstDayOfMonth($date) {
        if (Yii::$app->session['time'] == 'nep') {
            return explode('-', Payslip::english_to_nepali(date('Y-m-d')))[1];
        } else {
            return date('m');
        }
    }

}
