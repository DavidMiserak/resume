# David Miserak's Resume / CV

This repository contains the LaTeX source files for generating David Miserak's professional resume/CV.

## 📋 Overview

This project uses LaTeX with the ModernCV package to generate a professional resume/CV. The design is modular, with separate files for individual job experiences and education entries, making it easy to maintain and update.

## 📁 Repository Structure

- `src/`: Contains all LaTeX source files
  - Main file: `miserak_david-cv.tex` - The main document that imports all other sections
  - Experience: Individual job entries in separate files (e.g., `exp-vtds1.tex`, `exp-amex.tex`)
  - Education: Individual education entries (e.g., `edu-ms.tex`, `edu-bs.tex`)
  - Other sections: `certifications.tex`, `skills.tex`
- `build/`: Output directory for the compiled PDF
- `.github/workflows/`: CI/CD configuration for GitHub Actions

## 🔧 Prerequisites

- LaTeX distribution (TeX Live recommended)
- Tectonic (alternative LaTeX compiler)
- Make (for using the Makefile)

## 🚀 Building the Resume

### Using Make

```bash
# Build the resume
make

# Clean temporary files
make clean

# Set up pre-commit hooks
make pre-commit-setup
```

### Using GitHub Actions

This repository is configured with GitHub Actions to automatically build the resume PDF when changes are pushed to the main branch or when manually triggered via workflow dispatch.

The built PDF is available as an artifact in the Actions tab.

## ✏️ Customization

To modify the resume:

1. Edit the specific content files in the `src/` directory
2. To include or exclude experience/education entries:
   - Update the `experience.tex` or `education.tex` files to add/remove input statements
3. Run `make` to rebuild the PDF or push changes to trigger GitHub Actions

## 🛠️ Development Tools

This project uses several quality assurance tools:

- **Pre-commit hooks**: Set up with `make pre-commit-setup`
- **GitHub Actions**: Automatically builds the PDF on push and creates a release with tagged versions
- **Conventional commits**: Enforced by pre-commit hooks

## ✨ Features

- Uses ModernCV LaTeX package (v2.4.1)
- Banking style with black color scheme
- Modular design with separate files for each job and education entry
- Includes sections for experience, education, certifications, and skills
- Automation via GitHub Actions for continuous integration
- Consistent code style enforced through pre-commit hooks

## 📝 License

Copyright © David Miserak

## 👤 Contact

- LinkedIn: [linkedin.com/in/miserak](https://www.linkedin.com/in/miserak/)
- GitHub: [github.com/DavidMiserak](https://github.com/DavidMiserak)
