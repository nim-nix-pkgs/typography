{
  description = ''Fonts, Typesetting and Rasterization.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-typography-0_7_6.flake = false;
  inputs.src-typography-0_7_6.owner = "treeform";
  inputs.src-typography-0_7_6.ref   = "refs/tags/0.7.6";
  inputs.src-typography-0_7_6.repo  = "typography";
  inputs.src-typography-0_7_6.type  = "github";
  
  inputs."pixie".owner = "nim-nix-pkgs";
  inputs."pixie".ref   = "master";
  inputs."pixie".repo  = "pixie";
  inputs."pixie".type  = "github";
  inputs."pixie".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath".owner = "nim-nix-pkgs";
  inputs."vmath".ref   = "master";
  inputs."vmath".repo  = "vmath";
  inputs."vmath".type  = "github";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma".owner = "nim-nix-pkgs";
  inputs."chroma".ref   = "master";
  inputs."chroma".repo  = "chroma";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print".owner = "nim-nix-pkgs";
  inputs."print".ref   = "master";
  inputs."print".repo  = "print";
  inputs."print".type  = "github";
  inputs."print".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy".owner = "nim-nix-pkgs";
  inputs."bumpy".ref   = "master";
  inputs."bumpy".repo  = "bumpy";
  inputs."bumpy".type  = "github";
  inputs."bumpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty".owner = "nim-nix-pkgs";
  inputs."flatty".ref   = "master";
  inputs."flatty".repo  = "flatty";
  inputs."flatty".type  = "github";
  inputs."flatty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-typography-0_7_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-typography-0_7_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}