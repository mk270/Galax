(***********************************************************************)
(*                                                                     *)
(*                                 GALAX                               *)
(*                             XQuery Engine                           *)
(*                                                                     *)
(*  Copyright 2001-2007.                                               *)
(*  Distributed only by permission.                                    *)
(*                                                                     *)
(***********************************************************************)

(* $Id$ *)

(* Module: Top_args
   Description:
     This module contains code for generic processing of galax
     executable command-line arguments.
 *)

type executable_kind =
  | ExecHelp
  | ExecXQuery
  | ExecXQueryCompile
  | ExecXQueryTokenize
  | ExecXML
  | ExecXMLSchema
  | ExecProject

type map_executable_kind =
  | MapHelp
  | MapXQuery2XML
  | MapXQueryX2XQuery
  | MapXQuery2Plan
  | MapXQuery2SOAP
  | MapXMLPlan2Plan
  | MapWSDL2XQuery

type gargs = string array

val dispatch_args: unit -> executable_kind * gargs
val dispatch_map_args: unit -> map_executable_kind * gargs

val exec_help_go: gargs -> (executable_kind * gargs) option
val map_help_go: gargs -> (map_executable_kind * gargs) option

