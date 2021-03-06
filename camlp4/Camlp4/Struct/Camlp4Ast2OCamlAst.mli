(* camlp4r *)
(****************************************************************************)
(*                                                                          *)
(*                                   OCaml                                  *)
(*                                                                          *)
(*                            INRIA Rocquencourt                            *)
(*                                                                          *)
(*  Copyright 2002-2006 Institut National de Recherche en Informatique et   *)
(*  en Automatique.  All rights reserved.  This file is distributed under   *)
(*  the terms of the GNU Library General Public License, with the special   *)
(*  exception on linking described in LICENSE at the top of the OCaml       *)
(*  source tree.                                                            *)
(*                                                                          *)
(****************************************************************************)

(* Authors:
 * - Daniel de Rauglaudre: initial version
 * - Nicolas Pouillard: refactoring
 *)



module Make (Camlp4Ast : Sig.Camlp4Ast) : sig
  open Camlp4Ast;

  (** {6 Useful functions} *)

  value sig_item : sig_item -> Parsetree.signature;
  value str_item : str_item -> Parsetree.structure;
  value phrase : str_item -> Parsetree.toplevel_phrase;

end;
