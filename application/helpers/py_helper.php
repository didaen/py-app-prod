<?php

function is_logged_in()
{
    // Instance codeigniter baru ntuk memanggil library codeigniter pada function ini
    $ci = get_instance();

    if(!$ci->session->userdata('email')) {

        redirect('auth');
    }
}