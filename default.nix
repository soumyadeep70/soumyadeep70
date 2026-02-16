{ lib, pkgs, ... }:

let
  mkBadgeURL =
    name: bgColor: logo: logoColor:
    let
      enc = lib.escapeURL;
    in
      "https://img.shields.io/badge/"
        + "${enc name}-${enc bgColor}.svg?"
        + "style=for-the-badge&"
        + "logo=${enc logo}&"
        + "logoColor=${enc logoColor}";

  badgeURLs = {
    # Languages
    "Go"         = mkBadgeURL "go"          "00add8" "go"         "ffffff";
    "C"          = mkBadgeURL "c"           "00599c" "c"          "ffffff";
    "C++"        = mkBadgeURL "c++"         "00599c" "c++"        "ffffff";
    "Python"     = mkBadgeURL "python"      "3670a0" "python"     "ffdd54";
    "Java"       = mkBadgeURL "java"        "ed8b00" "openjdk"    "ffffff";
    "Rust"       = mkBadgeURL "rust"        "000000" "rust"       "ffffff";
    "Bash"       = mkBadgeURL "bash_script" "121011" "gnu-bash"   "ffffff";
    "Solidity"   = mkBadgeURL "solidity"    "363636" "solidity"   "ffffff";
    "Typescript" = mkBadgeURL "typescript"  "007acc" "typescript" "ffffff";

    # Frameworks & Toolkits
    "Nix"        = mkBadgeURL "nix"         "5277c3" "nixos"      "ffffff";
    "React"      = mkBadgeURL "react"       "20232a" "react"      "61dafb";
    "NextJS"     = mkBadgeURL "next"        "000000" "next.js"    "ffffff";
    "Bun"        = mkBadgeURL "bun"         "000000" "bun"        "ffffff";
    "Express"    = mkBadgeURL "express.js"  "404d59" "express"    "61dafb";
    "Hugo"       = mkBadgeURL "hugo"        "000000" "hugo"       "ff0000";
    "Svelte"     = mkBadgeURL "svelte"      "f1413d" "svelte"     "ffffff";
    "Docker"     = mkBadgeURL "docker"      "0db7ed" "docker"     "ffffff";
    "Kubernetes" = mkBadgeURL "kubernetes"  "326ce5" "kubernetes" "ffffff";

    "Qt"         = mkBadgeURL "qt"          "217346" "qt"         "ffffff";
    "NumPy"      = mkBadgeURL "numpy"       "013243" "numpy"      "ffffff";
    "Pandas"     = mkBadgeURL "pandas"      "150458" "pandas"     "ffffff";
    "Matplotlib" = mkBadgeURL "matplotlib"  "ffffff" "matplotlib" "000000";
    "OpenCV"     = mkBadgeURL "opencv"      "ffffff" "opencv"     "000000";
    "Keras"      = mkBadgeURL "keras"       "d00000" "keras"      "ffffff";
    "PyTorch"    = mkBadgeURL "pytorch"     "ee4c2c" "pytorch"    "ffffff";
    "TensorFlow" = mkBadgeURL "tensorflow"  "ff6f00" "tensorflow" "ffffff";

    # Productivity Tools
    "NixOS"      = mkBadgeURL "nixos"       "5277c3" "nixos"      "ffffff";
    "Arch"       = mkBadgeURL "arch linux"  "1793d1" "arch-linux" "ffffff";
    "Debian"     = mkBadgeURL "debian"      "d70a53" "debian"     "ffffff";
    "Zen"        = mkBadgeURL "zen"         "f76f53" "zenbrowser" "ffffff";
    "NeoVim"     = mkBadgeURL "neovim"      "57a143" "neovim"     "ffffff";
    "tmux"       = mkBadgeURL "tmux"        "000000" "tmux"       "1bb91f";
    "Notion"     = mkBadgeURL "notion"      "000000" "notion"     "ffffff";
  };

  mkBadgeList =
    badges:
    lib.concatStringsSep " " (
      map (entry: "![${entry}](${badgeURLs.${entry}})") badges
    );
in
  pkgs.writeText "README.md" ''
    <h1 align=center> ✨ Soumyadeep Dash ✨ </h1>

    <p align=center>
    <img width="200" height="200" src="https://media1.tenor.com/m/v1dPoOluqiwAAAAC/ferris-rust.gif">
    </p>

    <h2 align=center> Pinch bugs, not people. </h2>
    <h3 align=center> “Merged PR > social life.” </h3>
    <p align=center> Professional overthinker, part-time hacker </p>

    |      **Category**      |                             **Tech Stack**                                |
    |------------------------|---------------------------------------------------------------------------|
    |  Languages             | ${mkBadgeList [ "Rust" "C" "C++" "Python" "Java" "Bash" ]}                |
    |  Frameworks & Toolkits | ${mkBadgeList [ "Nix" "NextJS" "NumPy" "Pandas" "Matplotlib" "OpenCV" ]}  |
    |  Productivity Tools    | ${mkBadgeList [ "NixOS" "Arch" "Debian" "NeoVim" "tmux" "Zen" "Notion" ]} |


    ## ⭐️ About me ⭐️

    <h3 align=center> 🏃‍♂️ <i> Hustler Life Forever </i> 🥤 </h3>

    🦀 **Born Rustacean**

    🚀 **Performance & Low-Level Enthusiast**

    ⚙️ **Open-source Contributor**

    🔍 **Loves Understanding Systems More Than Just Using Them**

    📚 **Always Learning, Always Improving**

    **CV: coming soon**


    ## 📊 GitHub Stats (Even I'm Surprised): 📈

    ![](https://github-profile-summary-cards.vercel.app/api/cards/profile-details?username=soumyadeep70&theme=github_dark)

    ![](https://github-profile-summary-cards.vercel.app/api/cards/most-commit-language?username=soumyadeep70&theme=github_dark) 
    ![](https://github-profile-summary-cards.vercel.app/api/cards/repos-per-language?username=soumyadeep70&theme=github_dark)


    ## 📚 My Favourite Books on Computing ✍️
    
    **coming soon**
  ''