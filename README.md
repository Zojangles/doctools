# Doctools

Doctools is a simple command-line tool that uses Pandoc to build PDFs from Markdown files. It's designed to streamline the documentation generation process, making it easier for you to convert your Markdown documents into PDFs. This README provides information on how to use and install Doctools.

## Project Structure

```
.
├── build.sh
├── docs
│   ├── Example_Guide.md
│   └── Example_Guide.pdf
├── install.sh
└── README.md
```

- `build.sh`: The script for building PDFs from Markdown files.
- `docs`: Contains example Markdown and PDF files.
- `install.sh`: The installation script for setting up Doctools.

## Installation (Bash Only)

Please note that Doctools currently supports Bash or any shell that uses the `.bashrc` file for environment variable configuration. Follow these steps to install Doctools:

1. Clone this GitHub repository:

   ```bash
   git clone https://github.com/Zojangles/doc_tools.git
   cd doc_tools
   ```

2. Run the installation script:

   ```bash
   chmod +x install.sh
   ./install.sh
   ```

   This script installs the required dependencies (Pandoc and LaTeX) and adds the Doctools executable to your `~/.bin` directory. If you encounter any issues during installation, please review the script or check your system's package manager for required packages.

3. After installation, either restart your Bash terminal or run:

   ```bash
   source ~/.bashrc
   ```

   This will update your PATH environment variable to include the Doctools executable, allowing you to run it from any location in your Bash terminal.

## Usage

Once you have successfully installed Doctools, you can use it to convert Markdown files to PDFs. The primary command is `doctools`, and you can specify input and output files as follows:

```bash
doctools [-h | --help] [-i | --input <input_file>] [-o | --output <output_file>]
```

- `-h, --help`: Show the help message.
- `-i, --input`: Specify the input Markdown file (default: `docs/Example_Guide.md`).
- `-o, --output`: Specify the output PDF file (default: `Example_Guide.pdf` in the 'docs' folder).

For example, to convert a Markdown file `my_document.md` into a PDF called `my_document.pdf`, you can run:

```bash
doctools -i my_document.md -o my_document.pdf
```

## Example

In the project's `docs` folder, there is an example Markdown file named `Example_Guide.md`. You can use Doctools to build a PDF from this Markdown file:

```bash
doctools -i docs/Example_Guide.md
```

This will generate a PDF named `Example_Guide.pdf` in the same 'docs' folder.
