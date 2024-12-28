<?php

	namespace App\Models;
	use CodeIgniter\Model;

	class Candidate_model extends Base_model {

        protected $table = 'candidates_tb';
        protected $table_2 = 'candidate_answers_tb';
        protected $table_3 = 'students_submission_uploads_tb';

		public function get_candidate($where = false) {

            if($where === false){
                return $this->findAll();
            }
            else {
                return $this->getWhere($where);
            }

        }

        public function add_candidate($data) {

            $query = $this->db->table($this->table)->ignore(true)->insert($data);
            return $query;

        }

        public function update_candidate($data, $where) {

            $query = $this->db->table($this->table)->update($data, $where);
            return $query;

        }

        public function delete_candidate($where) {

            $query = $this->db->table($this->table)->delete($where);
            return $query;
        }

        ///////////////////////////////////////////////////////////////

        public function get_answer($where = false) {

            if($where === false){
                $query = $this->db->table($this->table_2)->get();
            }
            else {
                $query = $this->db->table($this->table_2)->getWhere($where);
            }

            return $query;

        }

        public function add_answer($data) {

            $query = $this->db->table($this->table_2)->insert($data);
            return $query;

        }

        public function update_answer($data, $where) {

            $query = $this->db->table($this->table_2)->update($data, $where);
            return $query;

        }

        public function delete_answer($where) {

            $query = $this->db->table($this->table_2)->delete($where);
            return $query;
        }

        ///////////////////////////////////////////////////////////////

        public function get_submission_upload($where = false) {

            if($where === false){
                $query = $this->db->table($this->table_3)->get();
            }
            else {
                $query = $this->db->table($this->table_3)->getWhere($where);
            }

            return $query;

        }

        public function add_submission_upload($data) {

            $query = $this->db->table($this->table_3)->insert($data);
            return $query;

        }

        public function update_submission_upload($data, $where) {

            $query = $this->db->table($this->table_3)->update($data, $where);
            return $query;

        }

        public function delete_submission_upload($where) {

            $query = $this->db->table($this->table_3)->delete($where);
            return $query;
        }

	}

?>