<?php

namespace vendor\tikaraj21\newsletter\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use vendor\tikaraj21\newsletter\models\Group;

/**
 * GroupSearch represents the model behind the search form about `app\models\Group`.
 */
class GroupSearch extends Group
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['group_id'], 'integer'],
            [['group_name', 'group_description'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Group::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'group_id' => $this->group_id,
        ]);

        $query->andFilterWhere(['like', 'group_name',  trim($this->group_name) ])
            ->andFilterWhere(['like', 'group_description', trim($this->group_description)]);

        return $dataProvider;
    }
}
