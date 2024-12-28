<?php

	namespace App\Models;
	use CodeIgniter\Model;

	class Question_model extends Base_model {

        protected $table = 'questions_tb';

		public function get_question($where = false) {

            if($where === false){
                return $this->findAll();
            }
            else {
                return $this->getWhere($where);
            }

        }

        public function add_question($data) {

            $query = $this->db->table($this->table)->ignore(true)->insert($data);
            return $query;

        }

        public function update_question($data, $where) {

            $query = $this->db->table($this->table)->update($data, $where);
            return $query;

        }

        public function delete_question($where) {

            $query = $this->db->table($this->table)->delete($where);
            return $query;
        }

	}

?>