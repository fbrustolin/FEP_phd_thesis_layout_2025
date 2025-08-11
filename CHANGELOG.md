# Changelog

## [1.0.0-alpha.1] - 2025-08-11

*Initial release.* Changes to set the required pretextual elements, document margins, font, text spacing, page numbering, and bibliography as required in [FEP's PhD thesis rules](<.fep/Normas para a elaboracao e apresentacao de Teses (doutoramentos) - Rules for the preparation and presentation of Theses (PhD's).pdf>) (or closer to that).

### Fixed

- Confusing and overlapping redefinitions of text line spacing in the [Thesis class](Thesis.cls) and the [document preamble](preamble.tex).

### Changed

- Usage instructions updated.
- PDF `subject` metadata now has the format `\thesistype in \subject, \university, \year`.
- **Breaking:** `\university` should be defined before `\subject` in [vars.tex](vars.tex).
- Page numbering from header to footer (right on odd pages and right on even pages).
- Table of Contents, List of Figures, and List of Tables formatting now is made with the *tocloft* package instead of *titletoc*.
- Order of the thesis elements now follows FEP's rules by default.
- Main font changed to *Times New Roman*.
- Divisions' title formatting moved from the [Thesis class](Thesis.cls) to the [document preamble](preamble.tex).
- Styles for typesetting Python is now provided by *pythonhighlight* and not defined in the [document preamble](preamble.tex) anymore.
- Bibliography engine changed from *bibtex + natbib* to *biblatex + biber*.

### Removed

- **Breaking:** removed package *inputenc* loading (requires compiling with of UTF-8 engine).
- Removed source to build covers (front and back) and title page (`\maketitle`) from the [Thesis class](Thesis.cls).
- Cleared page header contents.
- Removed the declaration of environments for pretextual pages not enumerated in FEP's rules.
- The dependencies not required in the thesis formatting and not used in the sample document were removed.

### Added

- `Thesis` class now requires LuaLaTeX to compile the document.
- Using package *matlab-prettifier* in the [document preamble](preamble.tex) to format *MATLAB* code listings.
- Added suport to Appendix A, B, ..., Z, AA, AB, ... numbering by using *alphalph* package.

## [FCUP thesis layout 2024] - 2024-07-28

*Base version available at Overleaf (accessed on August 5th, 2025).*

[1.0.0-alpha.1]: https://github.com/owner/name/releases/tag/v1.0.1
[FCUP thesis layout 2024]: https://www.overleaf.com/latex/templates/fcup-thesis-layout-2024/gpbvtwzckzgm 