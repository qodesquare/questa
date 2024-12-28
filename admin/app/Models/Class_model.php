<?php

	namespace App\Models;
	use CodeIgniter\Model;

	class Class_model extends Base_model {

        protected $table = 'classes_tb';

		public function get_class($where = false) {

            if($where === false){
                return $this->findAll();
            }
            else {
                return $this->getWhere($where);
            }

        }

        public function add_class($data) {

            $query = $this->db->table($this->table)->insert($data);
            return $query;

        }

        public function update_class($data, $where) {

            $query = $this->db->table($this->table)->update($data, $where);
            return $query;

        }

        public function delete_class($where) {

            $query = $this->db->table($this->table)->delete($where);
            return $query;
        }

	}

?>