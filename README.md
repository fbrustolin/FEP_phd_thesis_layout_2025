# FEP PhD thesis layout 2025

A thesis model for the FEP PhD thesis. It's an attempt to adapt the [FCUP thesis layout 2024](https://www.overleaf.com/latex/templates/fcup-thesis-layout-2024/gpbvtwzckzgm), available at [Overleaf](https://www.overleaf.com/), to the [FEP rules for PhD thesis](https://sigarra.up.pt/fep/pt/conteudos_geral.ver?pct_pag_id=1009493&pct_parametros=pv_unidade=7&pct_grupo=28581#28581).

The main modifications are described in the [changelog file](CHANGELOG.md).

In the Chapters folders, you can find a quick overview of how to use the model and some useful commands/tips for working within this framework.

## Requisites and Compiling

- Step 1: Edit the front/vars.tex file
- Step 2: Compile front/main.tex file
- Step 3: Edit root vars.tex file
- Step 4: Eventually edit preamble.tex file. Don't mess with it if you don't know what to do.
- Step 5: Edit root precontent.tex file.
- Step 4: If you want to ensure that all of your labels are being used, check inside the scripts folder for a way to verify it.

And now edit at will!

**_The stock [main.pdf](https://github.com/fbrustolin/FCUP_thesis_layout_2024/blob/main/main.pdf) will include how to do most stuff, so copy/read it before making other modifications!_**

### Compiling tool

* Using LuaLaTeX.
* Developed with Visual Studio Code with Latex Workshop recipe "latexmk (lualatex)"  (`latexmk -lualatex`).
* Compiles in Overleaf, but the free compilation time may not be enough.

### Inkscape integration

In the pre-compiled PDF, you can see the use of the SVG package. This package uses Inkscape to compile SVGs into PDFs. Therefore, if you want to use this package, you must have Inkscape discoverable by the system. 

Inkscape's install folder must be in the `$PATH$` environment variable on Windows.

## Credits

* To the original owner of [FCUP thesis layout](https://www.overleaf.com/latex/templates/fcup-thesis-layout/qhpngwdszwgx), whose identity seems to have been lost.
* To [Rui Oliveira](https://github.com/ruilvo) for making [FCUP_Thesis_LaTeX](https://github.com/ruilvo/FCUP_Thesis_LaTeX) publicly available.
* To the unknown person who shared [FCUP thesis layout 2024](https://www.overleaf.com/latex/templates/fcup-thesis-layout-2024/gpbvtwzckzgm).

## Contributing guidelines

- Apply the desired changes to the documents.
- Comment on them accordingly.
- Compile the PDF document.
- Create the pull request.
