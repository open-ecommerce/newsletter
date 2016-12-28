<?php

namespace tikaraj21\newsletter\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use tikaraj21\newsletter\models\MailStore;

/**
 * GroupSearch represents the model behind the search form about `app\models\Group`.
 */
class MailStoreSearch extends MailStore
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['mail_id'], 'integer'],
            [['status'], 'string'],
            [['to', 'from','subject','message_body','created_date','cc','bcc'], 'safe'],
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
        $query = MailStore::find()->orderBy('created_date DESC');

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
            'mail_id' => $this->mail_id,
            'status' => $this->status,
        ]);

        $query->andFilterWhere(['like', 'to',  trim($this->to) ])
                ->andFilterWhere(['like', 'subject',  trim($this->subject) ])
                ->andFilterWhere(['like', 'message_body',  trim($this->message_body) ])
                ->andFilterWhere(['like', 'cc',  trim($this->cc) ])
                ->andFilterWhere(['like', 'bcc',  trim($this->bcc) ])
                ->andFilterWhere(['like', 'created_date',  trim($this->created_date) ])
            ->andFilterWhere(['like', 'from', trim($this->from)]);

        return $dataProvider;
    }
}
