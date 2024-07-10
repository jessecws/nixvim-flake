{ pkgs, ... }: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "rainbow_csv";
      src = pkgs.fetchFromGitHub {
        owner = "mechatroner";
        repo = "rainbow_csv";
        rev = "3dbbfd7d17536aebfb80f571255548495574c32b";
        hash = "sha256-Zf9VdRu/OF9h4AffOSAdM/Ypnla2wUp/iho3CV2YsH0=";
      };
    })
  ];
  extraConfigLua = "";
}
