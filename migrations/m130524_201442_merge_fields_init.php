<?php

use yii\db\Schema;
use yii\db\Migration;

class m130524_201442_merge_fields_init extends Migration
{
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%merge_fields}}', [
            'merge_field_id' => Schema::TYPE_PK,
            'merge_field_name' => Schema::TYPE_STRING . '(40) NULL',
            'merge_field_code' => Schema::TYPE_STRING . '(250) NULL',
            'merge_field_description' => Schema::TYPE_TEXT,
        ], $tableOptions);
    }

    public function down()
    {
        $this->dropTable('{{%merge_fields}}');
    }
}
