<?php

	namespace App\Models;
	use CodeIgniter\Model;

	class Collation_model extends Base_model {

        protected $table = 'collations_tb';
        protected $table_2 = 'examinations_collations_tb';

		public function get_collation($where = false) {

            if($where === false){
                return $this->findAll();
            }
            else {
                return $this->getWhere($where);
            }

        }

        public function add_collation($data) {

            $query = $this->db->table($this->table)->insert($data);
            return $query;

        }

        public function update_collation($data, $where) {

            $query = $this->db->table($this->table)->update($data, $where);
            return $query;

        }

        public function delete_collation($where) {

            $query = $this->db->table($this->table)->delete($where);
            return $query;
        }

        ///////////////////////////////////////////////////////////////////

        public function get_assigned($where = false) {

            if($where === false){
                $query = $this->db->table($this->table_2)->get();
            }
            else {
                $query = $this->db->table($this->table_2)->getWhere($where);
            }

            return $query;

        }

        public function add_assigned($data) {

            $query = $this->db->table($this->table_2)->insert($data);
            return $query;

        }

        public function update_assigned($data, $where) {

            $query = $this->db->table($this->table_2)->update($data, $where);
            return $query;

        }

        public function delete_assigned($where) {

            $query = $this->db->table($this->table_2)->delete($where);
            return $query;
        }

	}

?>