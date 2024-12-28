<?php

	namespace App\Models;
	use CodeIgniter\Model;

	class Base_model extends Model {

		public function get_with_join($table_a, $table_b, $where, $condition, $join_type = null) {

            $builder = $this->db->table($table_a);
            $builder->select('*');
            $builder->where($where);
            $builder->join($table_b, $condition);
            $query = $builder->get();

            return $query;
        }

        public function get_with_join_b($table_a, $table_b, $table_c, $where, $condition_1, $condition_2, $join_type = null) {

            $builder = $this->db->table($table_a);
            $builder->select('*');
            $builder->where($where);
            $builder->join($table_b, $condition_1);
            $builder->join($table_c, $condition_2);
            $query = $builder->get();

            return $query;
        }

        public function get_with_join_c($table_a, $table_b, $table_c, $table_d, $where, $condition_1, $condition_2, $condition_3, $join_type = null) {

            $builder = $this->db->table($table_a);
            $builder->select('*');
            $builder->where($where);
            $builder->join($table_b, $condition_1);
            $builder->join($table_c, $condition_2);
            $builder->join($table_d, $condition_3);
            $query = $builder->get();

            return $query;
        }

        public function get_with_join_d($table_a, $table_b, $table_c, $table_d, $table_e, $where, $condition_1, $condition_2, $condition_3, $condition_4, $join_type = null) {

            $builder = $this->db->table($table_a);
            $builder->select('*');
            $builder->where($where);
            $builder->join($table_b, $condition_1);
            $builder->join($table_c, $condition_2);
            $builder->join($table_d, $condition_3);
            $builder->join($table_e, $condition_4);
            $query = $builder->get();

            return $query;
        }

	}

?>
