# Renders each docs/**/*.typ source into per-page PNGs via typr; runs as a Quarto pre-render hook with cwd = docs/, so Typst's project root is set to ".." (the repo root).

if (!requireNamespace("typr", quietly = TRUE)) {
  stop("The 'typr' package is required to render docs previews. Install it with install.packages('typr').")
}

typ_files <- list.files(".", pattern = "\\.typ$", recursive = TRUE, full.names = TRUE)

for (f in typ_files) {
  base <- tools::file_path_sans_ext(f)
  output_template <- paste0(base, "-{p}.png")
  cli::cli_inform("Rendering {.file {f}}")
  typr::typr_compile(
    input = f,
    output_file = output_template,
    output_format = "png",
    typst_args = c("--root", "..")
  )
}
