<?php

	namespace App\Models;
	use CodeIgniter\Model;

	class User_model extends Base_model {

        protected $table = 'users_tb';

		public function get_user($where = false) {

            if($where === false){
                return $this->findAll();
            }
            else {
                return $this->getWhere($where);
            }

        }

        public function add_user($data) {

            $query = $this->db->table($this->table)->insert($data);
            return $query;

        }

        public function update_user($data, $where) {

            $query = $this->db->table($this->table)->update($data, $where);
            return $query;

        }

        public function delete_user($where) {

            $query = $this->db->table($this->table)->delete($where);
            return $query;
        }

	}

?>