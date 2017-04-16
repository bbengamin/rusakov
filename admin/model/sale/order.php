<?php
class ModelSaleOrder extends Model {
	public function getOrder($order_id) {
		$order_query = $this->db->query("SELECT o.*, u.*, s.name as order_status FROM " . DB_PREFIX . "land_orders as o LEFT JOIN oc_utm u ON u.utm_id = o.utm_id lEFT JOIN oc_order_status as s ON s.order_status_id = o.order_status_id  WHERE o.order_id = '" . (int)$order_id . "'");

		if ($order_query->num_rows) {
			return array(
				'order_id'                => $order_query->row['order_id'],
				'name'               => $order_query->row['name'],
				'email'                   => $order_query->row['email'],
				'phone'               => $order_query->row['phone'],
				'order_status_id'         => $order_query->row['order_status_id'],
				'status'         => $order_query->row['order_status'],
				'ip'                      => $order_query->row['ip'],
				'form_name'            => $order_query->row['form_name'],
				'store_name'            => $order_query->row['store_name'],
				'form_text'            => $order_query->row['form_text'],
				'utm_source'              => $order_query->row['utm_source'],
				'utm_medium'         => $order_query->row['utm_medium'],
				'utm_campaign'              => $order_query->row['utm_campaign'],
				'utm_content'              => $order_query->row['utm_content'],
				'utm_term'           => $order_query->row['utm_term']
			);
		} else {
			return array();
		}
	}

	public function getOrders($data = array()) {
		$sql = "SELECT * FROM `" . DB_PREFIX . "land_orders` as o";

		if (isset($data['filter_order_status'])) {
			$implode = array();

			$order_statuses = explode(',', $data['filter_order_status']);

			foreach ($order_statuses as $order_status_id) {
				$implode[] = "o.order_status_id = '" . (int)$order_status_id . "'";
			}

			if ($implode) {
				$sql .= " WHERE (" . implode(" OR ", $implode) . ")";
			}
		} else {
			$sql .= " WHERE o.order_status_id > '0'";
		}

		if (!empty($data['filter_order_id'])) {
			$sql .= " AND o.order_id = '" . (int)$data['filter_order_id'] . "'";
		}
		
		if (!empty($data['filter_split'])) {
			$sql .= " AND store_name = '" . $data['filter_split'] . "'";
		}

		if (!empty($data['filter_customer'])) {
			$sql .= " AND (email LIKE '%" . $this->db->escape($data['filter_customer']) . "%' OR name LIKE '%" . $this->db->escape($data['filter_customer']) . "%')";
		}

		$sort_data = array(
			'o.order_id',
			'name',
			'order_status_id'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY o.order_id";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}

		$query = $this->db->query($sql);
		
		$orders = array();
		foreach($query->rows as $row){
			$orders[$row['order_id']] = $this->getOrder($row['order_id']);
		}

		return $orders;
	}

	public function getTotalOrders($data = array()) {
		

		return count($this->getOrders($data));
	}
}
