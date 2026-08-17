# Yifan Zhang — Academic Homepage

Source for [Yifan Zhang's academic homepage](https://bluesocksfff.github.io/). The site presents her doctoral research on memory enhancement and reliability evaluation for LLM-based agents in scientific research, publications, projects, and downloadable CV.

## Main content

- `_pages/about.md`: homepage and dissertation overview
- `_pages/research.md`: research questions, testbeds, and evaluation principles
- `_pages/publications.html`: publications and manuscripts under review
- `_pages/cv.md`: concise web CV
- `files/Yifan_Zhang_Academic_CV.pdf`: downloadable academic CV

## Local build on Windows

This workspace keeps Ruby+DevKit in `../_tools/Ruby32Devkit`. From PowerShell, run:

```powershell
.\build-local.ps1
```

The script locates the workspace Ruby installation, installs missing locked gems when necessary, and builds the site into `_site`. If the workspace copy is unavailable, it falls back to a `ruby` executable on `PATH`.

To preview the generated site:

```powershell
python -m http.server 50837 --directory _site
```

Then open `http://127.0.0.1:50837/`.

## Generic Jekyll build

With Ruby and Bundler already available:

```bash
bundle install
bundle exec jekyll build
```

The production site is deployed through GitHub Pages.
