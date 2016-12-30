<?php

use yii\db\Schema;
use yii\db\Migration;

class m130524_201442_setting_init extends Migration
{
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%setting}}', [
            'id' => Schema::TYPE_PK,
            'title' => Schema::TYPE_STRING . '(250) NOT NULL',
            'code' => Schema::TYPE_STRING . '(45) NOT NULL',
            'value' => Schema::TYPE_STRING . '(90) NOT NULL',
			'description' => Schema::TYPE_TEXT ,
        ], $tableOptions);
		
        $this->batchInsert('{{%setting}}', ['id', 'title', 'code', 'value', 'description'], [
          
			[1, 'Company Name', 'COMP_NAME', 'Bent Ray Technology', 'some text'],
			[2, 'Address', 'COMP_ADDR', 'Jwagal', 'some address'],
			[3, 'Country', 'COMP_COUNTRY', '158', 'some info'],
			[4, 'Phone', 'COMP_PHONE', '01893453234', 'some text'],
			[5, 'Date', 'GS_DATE', 'E', NULL],
			[6, 'Date Format', 'GS_DT_FORMAT', '0', NULL],
			[7, 'Set Time Zone', 'GS_TIME_ZONE', 'Asia/Kathmandu', NULL],
			[8, 'Sunday', 'D_SUNDAY', '0', 'sunday is holiday.'],
			[9, 'Monday', 'D_MONDAY', '0', 'working day.'],
			[10, 'Tuesday', 'D_TUESDAY', '0', 'working day.'],
			[11, 'Wednesday', 'D_WEDNESDAY', '0', 'working day.'],
			[12, 'Thursday', 'D_THURSDAY', '0', 'working day.'],
			[13, 'Friday', 'D_FRIDAY', '0', 'working day.'],
			[14, 'Saturday', 'D_SATURDAY', '0', 'holiday.'],
			[15, 'Set Admin Email', 'GS_SEND_ATTN_EMAIL', '0', NULL],
			[16, 'Set Admin Email', 'GS_SEND_LEAVE_RQ_MAIL', '0', NULL],
			[17, 'attendance_correctn_opt', 'GM_ATTENDANCE_CORRECTN_OPTION', '0', 'attendance correctn opt'],
			[19, 'manager_email_address', 'GS_MANAGER_EMAIL', 'tika.raj@bentraytech.com', NULL],
			[20, 'staff_present', 'GM_STAFF_PRESENT', '0', 'setting for present staff'],
			[21, 'attendance_alert_message', 'GM_ATT_ALERT', '0', 'Attendance Alert Message'],
			[22, 'Leave Review Month', 'GS_LEAVE_REVIEW_MONTH', '01', 'This is a setting for leave review month'],
			[23, 'allowed chekin Ips', 'GS_CHECKIN_IPS', 'GS_CHECKIN_IPS', 'allowed chekin Ips'],
            
        ]);
    }

    public function down()
    {
        $this->dropTable('{{%setting}}');
    }
}
