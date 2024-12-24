(**************************************************************************)
(*                                                                        *)
(*                                 OCaml                                  *)
(*                                                                        *)
(*                    Mark Shinwell, Jane Street Europe                   *)
(*                                                                        *)
(*   Copyright 2019 Jane Street Group LLC                                 *)
(*                                                                        *)
(*   All rights reserved.  This file is distributed under the terms of    *)
(*   the GNU Lesser General Public License version 2.1, with the          *)
(*   special exception on linking described in the file LICENSE.          *)
(*                                                                        *)
(**************************************************************************)

(** Functionality supported by all expression-like modules. *)

module type S = sig
  type t

  val print : Format.formatter -> t -> unit

  include Contains_names.S with type t := t
end

module type S_no_free_names = sig
  type t

  val print : Format.formatter -> t -> unit

  val apply_renaming : t -> Renaming.t -> t
end
