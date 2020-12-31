{ pkgs ? import <nixpkgs> {} }:
let
  myAppEnv = pkgs.bleeding.poetry2nix.mkPoetryEnv {
    projectDir = ./.;
  };
in myAppEnv.env
