{ pkgs, ...}:
{

 programs.file-roller.enable = true;
 programs.thunar.enable = true;
 programs.xfconf.enable = true;

 programs.thunar.plugins = with pkgs.xfce; [
   thunar-archive-plugin
   thunar-volman
 ];

 services.gvfs.enable = true; # Mount, trash, and other functionalities
 services.tumbler.enable = true; # Thumbnail support for images


}
