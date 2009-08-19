(***********************************************************************)
(*                                                                     *)
(*                                 GALAX                               *)
(*                              XQuery Engine                          *)
(*                                                                     *)
(*  Copyright 2001-2007.                                               *)
(*  Distributed only by permission.                                    *)
(*                                                                     *)
(***********************************************************************)

(* $Id: streaming_util.mli,v 1.4 2007/02/01 22:08:54 simeon Exp $ *)

(* Module: Streaming_util
   Description:
     Some utilities over streaming types.
*)

open Streaming_types
open Sax_annot


(**********************)
(* Event constructors *)
(**********************)

val fmkse_event   : sax_event_desc -> Finfo.finfo -> sax_event
val fmkrse_event  : resolved_sax_event_desc -> Finfo.finfo -> resolved_sax_event
val fmktse_event  : typed_sax_event_desc -> Finfo.finfo -> typed_annotated_sax_event
val fmkatse_event : typed_sax_event_desc -> sax_annot -> Finfo.finfo -> typed_annotated_sax_event
val fmkotse_event : ordered_typed_sax_event_desc -> sax_annot -> Finfo.finfo -> ordered_typed_annotated_sax_event 
val mktse_event   : typed_sax_event_desc -> typed_annotated_sax_event 


(********************)
(* Events accessors *)
(********************)

(* Extracts special attributes *)

val extract_special_attributes :
    sax_xml_attribute_forest -> 
      (Whitespace.mode * (Namespace_names.prefix * Namespace_names.uri) list * Dm_atomic.atomicAnyURI option * sax_xml_attribute_forest)

(* Checks for duplicates in attributes -- Returns the original sequence of attributes or raises and error *)
val check_duplicate_attributes :
    resolved_sax_xml_attribute_forest -> resolved_sax_xml_attribute_forest

val string_of_resolved_sax_event_desc : resolved_sax_event_desc -> string
