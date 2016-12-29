<?php

namespace vendor\tikaraj21\newsletter\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use vendor\tikaraj21\newsletter\models\Main;

/**
 * EqueueSearch represents the model behind the search form about `app\models\Equeue`.
 */
class MainSearch extends Equeue
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'attempts'], 'integer'],
            [['from', 'to', 'cc', 'bcc', 'subject', 'html_body', 'text_body', 'attachment', 'reply_to', 'charset', 'created_at', 'last_attempt_time', 'sent_time'], 'safe'],
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
        $query = Equeue::find();

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
            'id' => $this->id,
            'created_at' => $this->created_at,
            'attempts' => $this->attempts,
            'last_attempt_time' => $this->last_attempt_time,
            'sent_time' => $this->sent_time,
        ]);

        $query->andFilterWhere(['like', 'from', $this->from])
            ->andFilterWhere(['like', 'to', $this->to])
            ->andFilterWhere(['like', 'cc', $this->cc])
            ->andFilterWhere(['like', 'bcc', $this->bcc])
            ->andFilterWhere(['like', 'subject', $this->subject])
            ->andFilterWhere(['like', 'html_body', $this->html_body])
            ->andFilterWhere(['like', 'text_body', $this->text_body])
            ->andFilterWhere(['like', 'attachment', $this->attachment])
            ->andFilterWhere(['like', 'reply_to', $this->reply_to])
            ->andFilterWhere(['like', 'charset', $this->charset]);

        return $dataProvider;
    }
}
