<?php
function is_logged_in()
{
    // karena helper tidak mengenal $this, maka dibuat instansiasi baru ke librari ci
    $ci = get_instance();
    if (!$ci->session->userdata('email')) {
        redirect('auth');
    } else
        $role_id = $ci->session->userdata('role_id');
    // mengambil menu dari url
    $menu = $ci->uri->segment(1);

    //cari menu berdasarkan menu url
    $queryMenu = $ci->db->get_where('user_menu', ['menu' => $menu])->row_array();

    $menu_id = $queryMenu['id'];

    // check akses menu berdasarkan role user akses

    $userAccess = $ci->db->get_where('user_access_menu', ['role_id' => $role_id, 'menu_id' => $menu_id]);

    if ($userAccess->num_rows() < 1) {
        redirect('auth/blocked');
    }
}

function check_access($role_id, $menu_id)
{
    $ci = get_instance();

    // //cara 1
    // $ci->db->where('role_id', $role_id);
    // $ci->db->where('menu_id', $menu_id);
    // $result = $ci->db->get('user_access_menu');

    //cara 2
    $result = $ci->db->get_where('user_access_menu', ['role_id' => $role_id, 'menu_id' => $menu_id]);

    if ($result->num_rows() > 0) {
        return "checked='checked'";
    }
}
