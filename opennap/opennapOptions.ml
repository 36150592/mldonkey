(* Copyright 2001, 2002 b8_bavard, b8_fee_carabine, INRIA *)
(*
    This file is part of mldonkey.

    mldonkey is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    mldonkey is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with mldonkey; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*)

open Options

let file_basedir = ""
let cmd_basedir = Autoconf.current_dir (* will not work on Windows *)

let opennap_ini = create_options_file (file_basedir ^ "opennap.ini")

  
let client_port = define_option opennap_ini ["client_port"]
    "The port to bind the client to"
    int_option 9999

let max_connected_servers = define_option opennap_ini ["max_connected_servers"] 
    "The number of servers you want to stay connected to" int_option 10

let client_password = define_option opennap_ini ["client_password"]
    "The password used to log on the napster server"
    string_option "nopass"
  
let client_port = define_option opennap_ini ["client_port"] 
  "The data port for napster uploads" int_option 6699
  
let client_info = define_option opennap_ini ["client_info"]
  "The info on this client"
    string_option "mldonkey v2.0"

let use_napigator = define_option opennap_ini ["use_napigator"]
    "Download a list of servers from www.napigator.com"
    bool_option true
    
let commit_in_subdir = define_option opennap_ini ["commit_in_subdir"]
  "The subdirectory of temp/ where files should be moved to"
    string_option "Napster"