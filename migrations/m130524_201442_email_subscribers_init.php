<?php

use yii\db\Schema;
use yii\db\Migration;

class m130524_201442_email_subscribers_init extends Migration
{
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%email_subscribers}}', [
            'subscriber_id' => Schema::TYPE_PK,
            'full_name' => Schema::TYPE_STRING . '(100) NULL',
            'subscriber_email' => Schema::TYPE_STRING . '(100) NULL',
            'subscriber_details' => Schema::TYPE_TEXT,
            'group_id' => Schema::TYPE_INTEGER . '(11) NOT NULL',
            'staff_id' => Schema::TYPE_INTEGER . '(11) NULL',
        ], $tableOptions);
    }

    public function down()
    {
        $this->dropTable('{{%email_subscribers}}');
    }
}
