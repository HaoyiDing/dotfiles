;;; gruvbox-theme.el --- A retro-groove colour theme for Emacs -*- lexical-binding: t -*-

;;; Code:
(eval-when-compile
  (require 'cl-lib))

(require 'gruvbox)

(gruvbox-deftheme
 gruvbox
 "A retro-groove colour theme"

 ((((class color) (min-colors #xFFFFFF))        ; col 1 GUI/24bit
   ((class color) (min-colors #xFF)))           ; col 2 Xterm/256

  (gruvbox-dark0_hard      "#1d2021" "#1c1c1c")
  (gruvbox-dark0           "#282828" "#262626")
  (gruvbox-dark0_soft      "#32302f" "#303030")
  (gruvbox-dark1           "#3c3836" "#3a3a3a")
  (gruvbox-dark2           "#504945" "#4e4e4e")
  (gruvbox-dark3           "#665c54" "#626262")
  (gruvbox-dark4           "#7c6f64" "#767676")

  (gruvbox-gray            "#928374" "#8a8a8a")

  (gruvbox-light0_hard     "#ffffc8" "#ffffd7")
  (gruvbox-light0          "#fdf4c1" "#ffffaf")
  (gruvbox-light1          "#ebdbb2" "#ffdfaf")
  (gruvbox-light2          "#d5c4a1" "#bcbcbc")
  (gruvbox-light3          "#bdae93" "#a8a8a8")
  (gruvbox-light4          "#a89984" "#949494")

  (gruvbox-bright_red      "#fb4933" "#d75f5f")
  (gruvbox-bright_green    "#b8bb26" "#afaf00")
  (gruvbox-bright_yellow   "#fabd2f" "#ffaf00")
  (gruvbox-bright_blue     "#83a598" "#87afaf")
  (gruvbox-bright_purple   "#d3869b" "#d787af")
  (gruvbox-bright_aqua     "#8ec07c" "#87af87")
  (gruvbox-bright_orange   "#fe8019" "#ff8700")

  (gruvbox-neutral_red     "#fb4934" "#d75f5f")
  (gruvbox-neutral_green   "#b8bb26" "#afaf00")
  (gruvbox-neutral_yellow  "#fabd2f" "#ffaf00")
  (gruvbox-neutral_blue    "#83a598" "#87afaf")
  (gruvbox-neutral_purple  "#d3869b" "#d787af")
  (gruvbox-neutral_aqua    "#8ec07c" "#87af87")
  (gruvbox-neutral_orange  "#fe8019" "#ff8700")

  (gruvbox-faded_red       "#9d0006" "#870000")
  (gruvbox-faded_green     "#79740e" "#878700")
  (gruvbox-faded_yellow    "#b57614" "#af8700")
  (gruvbox-faded_blue      "#076678" "#005f87")
  (gruvbox-faded_purple    "#8f3f71" "#875f87")
  (gruvbox-faded_aqua      "#427b58" "#5f8787")
  (gruvbox-faded_orange    "#af3a03" "#af5f00")

  (gruvbox-dark_red             "#421E1E" "#5f0000")
  (gruvbox-dark_blue            "#2B3C44" "#000087")
  (gruvbox-dark_aqua            "#36473A" "#005f5f")

  (gruvbox-delimiter-one   "#458588" "#008787")
  (gruvbox-delimiter-two   "#b16286" "#d75f87")
  (gruvbox-delimiter-three "#8ec07c" "#87af87")
  (gruvbox-delimiter-four  "#d65d0e" "#d75f00")
  (gruvbox-white           "#FFFFFF" "#FFFFFF")
  (gruvbox-black           "#000000" "#000000")
  (gruvbox-sienna          "#DD6F48" "#d7875f")
  (gruvbox-lightblue4      "#66999D" "#5fafaf")
  (gruvbox-burlywood4      "#BBAA97" "#afaf87")
  (gruvbox-aquamarine4     "#83A598" "#87af87")
  (gruvbox-turquoise4      "#61ACBB" "#5fafaf")

  (gruvbox-ediff-current-diff-A        "#fbc6a3" "#fbc6a3")
  (gruvbox-ediff-current-diff-B        "#e3f3b5" "#e3f3b5")
  (gruvbox-ediff-current-diff-C        "#fadccc" "#fadccc")
  (gruvbox-ediff-current-diff-Ancestor "#ccc6d1" "#ccc6d1")
  (gruvbox-ediff-fine-diff-A           "#fbb091" "#fbb091")
  (gruvbox-ediff-fine-diff-B           "#b6f691" "#b6f691")
  (gruvbox-ediff-fine-diff-C           "#fbb0d6" "#fbb0d6")
  (gruvbox-ediff-fine-diff-Ancestor    "#b6b0d6" "#b6b0d6")

  (gruvbox-bg gruvbox-dark0)
  (gruvbox-bg_inactive gruvbox-dark0_soft)
  )

 (custom-theme-set-variables 'gruvbox
                             `(ansi-color-names-vector
                               [,gruvbox-dark1
                                ,gruvbox-neutral_red
                                ,gruvbox-neutral_green
                                ,gruvbox-neutral_yellow
                                ,gruvbox-neutral_blue
                                ,gruvbox-neutral_purple
                                ,gruvbox-neutral_aqua
                                ,gruvbox-light1])))


;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'gruvbox)


;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; gruvbox-theme.el ends here
