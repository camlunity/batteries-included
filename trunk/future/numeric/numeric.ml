(* Copyright (C) 2007-

      Author: Bluestorm
      email: bluestorm dot dylc on-the-server gmail dot com

   This library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2 of the License, or (at your option) any later version.

   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with this library; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

As a special exception to the GNU Library General Public License, you
may link, statically or dynamically, a "work that uses the Library"
with a publicly distributed version of the Library to produce an
executable file containing portions of the Library, and distribute
that executable file under terms of your choice, without any of the
additional requirements listed in clause 6 of the GNU Library General
Public License.  By "a publicly distributed version of the Library",
we mean either the unmodified Library as distributed by INRIA, or a
modified version of the Library that is distributed under the
conditions defined in clause 2 of the GNU Library General Public
License.  This exception does not however invalidate any other reasons
why the executable file might be covered by the GNU Library General
Public License.


*)



module BaseInt : NUMERIC_BASE with type t = int = struct
  type t = int
  
  let zero, one = 0, 1

  let neg = (~-)
  let succ, pred, abs = succ, pred, abs

  let add, sub, mul, div = (+), (-), ( * ), (/)

  let modulo a b = a mod b
  let pow = generic_pow 0 1 (fun n -> n / 2) (fun n -> n mod 2) ( * )

  let min_num, max_num = min_int, max_int
  let compare = (-)

  let of_int n = n
  let to_int n = n
  let of_string = int_of_string
  let to_string = string_of_int
end

module Bounded = struct
  
end
