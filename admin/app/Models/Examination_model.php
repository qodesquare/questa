<?php

	namespace App\Models;
	use CodeIgniter\Model;

	class Examination_model extends Base_model {

        protected $table = 'examinations_tb';
        protected $table_2 = 'questions_examinations_tb';
        protected $table_3 = 'examinations_candidates_tb';
        protected $table_4 = 'users_to_examinations_tb';
        protected $table_5 = 'examination_attachments_tb';

		public function get_exam($where = false) {

            if($where === false){
                return $this->findAll();
            }
            else {
                return $this->getWhere($where);
            }

        }

        public function add_exam($data) {

            $query = $this->db->table($this->table)->insert($data);
            return $query;

        }

        public function update_exam($data, $where) {

            $query = $this->db->table($this->table)->update($data, $where);
            return $query;

        }

        public function delete_exam($where) {

            $query = $this->db->table($this->table)->delete($where);
            return $query;
        }

        ///////////////////////////////////////////////////////////////

        public function get_item($where = false) {

            if($where === false){
                $query = $this->db->table($this->table_2)->get();
            }
            else {
                $query = $this->db->table($this->table_2)->getWhere($where);
            }

            return $query;

        }

        public function add_item($data) {

            $query = $this->db->table($this->table_2)->insert($data);
            return $query;

        }

        public function update_item($data, $where) {

            $query = $this->db->table($this->table_2)->update($data, $where);
            return $query;

        }

        public function delete_item($where) {

            $query = $this->db->table($this->table_2)->delete($where);
            return $query;
        }

        ///////////////////////////////////////////////////////////////

        public function get_candidates($where = false) {

            if($where === false){
                $query = $this->db->table($this->table_3)->get();
            }
            else {
                $query = $this->db->table($this->table_3)->getWhere($where);
            }

            return $query;

        }

        public function add_candidate($data) {

            $query = $this->db->table($this->table_3)->insert($data);
            return $query;

        }

        public function update_candidate($data, $where) {

            $query = $this->db->table($this->table_3)->update($data, $where);
            return $query;

        }

        public function delete_candidate($where) {

            $query = $this->db->table($this->table_3)->delete($where);
            return $query;
        }

        ///////////////////////////////////////////////////////////////

        public function get_exam_assign($where = false) {

            if($where === false){
                $query = $this->db->table($this->table_4)->get();
            }
            else {
                $query = $this->db->table($this->table_4)->getWhere($where);
            }

            return $query;

        }

        public function add_exam_assign($data) {

            $query = $this->db->table($this->table_4)->insert($data);
            return $query;

        }

        public function update_exam_assign($data, $where) {

            $query = $this->db->table($this->table_4)->update($data, $where);
            return $query;

        }

        public function delete_exam_assign($where) {

            $query = $this->db->table($this->table_4)->delete($where);
            return $query;
        }

        ///////////////////////////////////////////////////////////////

        public function get_exam_attachments($where = false) {

            if($where === false){
                $query = $this->db->table($this->table_5)->get();
            }
            else {
                $query = $this->db->table($this->table_5)->getWhere($where);
            }

            return $query;

        }

        public function add_exam_attachment($data) {

            $query = $this->db->table($this->table_5)->insert($data);
            return $query;

        }

        public function delete_exam_attachment($where) {

            $query = $this->db->table($this->table_5)->delete($where);
            return $query;
        }
	}

?>