<?php

use yii\db\Schema;
use yii\db\Migration;

class m130524_201442_mail_store_init extends Migration
{
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%mail_store}}', [
            'mail_id' => Schema::TYPE_PK,
            'subject' => Schema::TYPE_STRING . '(250) NULL',
            'message_body' => Schema::TYPE_TEXT,
            'to' => Schema::TYPE_TEXT,
			'from' => Schema::TYPE_STRING . '(250) NULL',
			'cc' => Schema::TYPE_TEXT,
			'bcc' => Schema::TYPE_TEXT,
			'attachments' => Schema::TYPE_TEXT,
                       'created_date' => Schema::TYPE_DATE,
			'status' => Schema::TYPE_STRING . '(50) NULL',
			'unique_id' => Schema::TYPE_STRING . '(250) NULL',
        ], $tableOptions);
    }

    public function down()
    {
        $this->dropTable('{{%mail_store}}');
    }
}
