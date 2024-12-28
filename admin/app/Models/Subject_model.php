<?php

	namespace App\Models;
	use CodeIgniter\Model;

	class Subject_model extends Base_model {

        protected $table = 'subjects_tb';

		public function get_subject($where = false) {

            if($where === false){
                return $this->findAll();
            }
            else {
                return $this->getWhere($where);
            }

        }

        public function add_subject($data) {

            $query = $this->db->table($this->table)->insert($data);
            return $query;

        }

        public function update_subject($data, $where) {

            $query = $this->db->table($this->table)->update($data, $where);
            return $query;

        }

        public function delete_subject($where) {

            $query = $this->db->table($this->table)->delete($where);
            return $query;
        }

	}

?>