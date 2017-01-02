<?php

use yii\db\Schema;
use yii\db\Migration;

class m130524_201442_mailsetting_init extends Migration
{
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%mailsetting}}', [
            'setting_id' => Schema::TYPE_PK,
            'setting_name' => Schema::TYPE_STRING . '(50) NOT NULL',
            'setting_code' => Schema::TYPE_STRING . '(50) NOT NULL',
            'setting_value' => Schema::TYPE_STRING . '(90) NOT NULL',
        ], $tableOptions);
		
        $this->batchInsert('{{%mailsetting}}', ['setting_id', 'setting_name', 'setting_code', 'setting_value'], [
          
			[1, 'Mail Type', 'GE_MAIL_TYPE', 'SMTP'],
			[2, 'Page Reload Interval', 'GE_RELOAD_INTERVAL', '10'],
			[3, 'Number Mail Send At A Time', 'GE_MAIL_NO', '20'],
			[4, 'Mail Encode Bit', 'GE_MAIL_ENCODE_BIT', '8-bit'],
			[5, 'imap_path', 'GE_IMAP_PATH', '{imap.gmail.com:993/imap/ssl}INBOX'],
			[6, 'Host', 'GE_SERVER_HOST', 'smtp.gmail.com'],
			[7, 'User Name', 'GE_SERVER_USERNAME', 'tika.raj@bentraytech.com'],
			[8, 'Password', 'GE_SERVER_PASSWORD', '****'],
			[9, 'Encryption Type', 'GE_SERVER_ENC_TYPE', 'tls'],
			[10, 'Server Port', 'GE_SERVER_PORT', '587'],
			[11, 'from', 'GE_PHP_FROM', 'test@flexyear.com'],
			[12, 'reply_to', 'GE_PHP_REPLY_TO', 'test@flexyear.com'],
			[13, 'return_path', 'GE_PHP_RETURN_PATH', 'test@flexyear.com'],
			[14, 'manager_email', 'GE_PHP_MANAGER_EMAIL', ''],
            
        ]);
    }

    public function down()
    {
        $this->dropTable('{{%mailsetting}}');
    }
}
