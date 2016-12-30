<?php

use yii\db\Schema;
use yii\db\Migration;

class m130524_201442_group_init extends Migration
{
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%group}}', [
            'group_id' => Schema::TYPE_PK,
            'group_name' => Schema::TYPE_STRING . '(50) NOT NULL',
            'group_description' => Schema::TYPE_TEXT . ' NOT NULL',
            'designation_id' => Schema::TYPE_INTEGER . '(11) NOT NULL',
        ], $tableOptions);
    }

    public function down()
    {
        $this->dropTable('{{%group}}');
    }
}
