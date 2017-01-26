<?php

use yii\db\Schema;
use yii\db\Migration;

class m130524_201442_saved_email_templates_init extends Migration
{
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%saved_email_templates}}', [
            'template_id' => Schema::TYPE_PK,
            'template_name' => Schema::TYPE_STRING . '(100) NULL',
            'template_description' => Schema::TYPE_TEXT,
            'template_body' => Schema::TYPE_TEXT,
        ], $tableOptions);
    }

    public function down()
    {
        $this->dropTable('{{%saved_email_templates}}');
    }
}
