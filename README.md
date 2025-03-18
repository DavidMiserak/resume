# David Miserak's Resume / CV

This repository contains the LaTeX source files for generating David Miserak's professional resume/CV.

## Structure

- `src/`: Contains all LaTeX source files
  - Main file: `miserak_david-cv.tex`
  - Experience: Individual job entries in separate files (e.g., `exp-vtds1.tex`)
  - Education: Individual education entries (e.g., `edu-ms.tex`) 
  - Other sections: `certifications.tex`, `skills.tex`
- `build/`: Output directory for the compiled PDF

## Prerequisites

- LaTeX distribution
- Tectonic (alternative LaTeX compiler)

## Building the Resume

The project uses a Makefile to control the build process:

```bash
# Build the resume
make

# Clean temporary files
make clean
```

## Customization

To modify the resume:

1. Edit the specific content files in the `src/` directory
2. Update the `experience.tex` or `education.tex` files to include/exclude specific entries
3. Run `make` to rebuild the PDF

## Features

- Uses ModernCV LaTeX package (v2.4.1)
- Banking style with black color scheme
- Modular design with separate files for each job and education entry
- Includes sections for experience, education, certifications, and skills
