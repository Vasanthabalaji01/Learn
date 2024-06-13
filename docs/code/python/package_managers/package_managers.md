# Package Managers

Package managers are tools used to install, manage, and update software packages or libraries in a programming language.

In Python, the most commonly used package manager

- `pip` short for "Pip Installs Packages". 

- `conda` is another package manager, primarily associated with the Anaconda distribution, which is popular in data science and scientific computing communities. 

Let's explore these package managers in more detail:

## pip

- **Description**: `pip` is the default package manager for Python. It allows you to install, upgrade, and manage Python packages from the Python Package Index [PyPI](https://pypi.org) and other repositories.

- **Usage**
  - Installing a package: `pip install package_name`
  - Upgrading a package: `pip install --upgrade package_name`
  - Uninstalling a package: `pip uninstall package_name`
  - Listing installed packages: `pip list`

- **Example**
  ```bash
  pip install requests          # Install the 'requests' package
  pip install --upgrade numpy  # Upgrade the 'numpy' package
  pip uninstall requests       # Uninstall the 'requests' package
  pip list                      # List installed packages
  ```

## Conda

- **Description**: `conda` is a package manager and environment management system used primarily with the Anaconda distribution of Python. It allows you to install, manage, and update software packages and dependencies, including non-Python packages.
  
- **Usage**:
  - Installing a package: `conda install package_name`
  - Upgrading a package: `conda update package_name`
  - Uninstalling a package: `conda remove package_name`
  - Listing installed packages: `conda list`

- **Example**:
  ```bash
  conda install numpy          # Install the 'numpy' package
  conda update numpy           # Update the 'numpy' package
  conda remove numpy           # Remove the 'numpy' package
  conda list                   # List installed packages
  ```

## Setup Conda

Setting up `conda` involves installing Anaconda or Miniconda, which are Python distributions that come with `conda` and many pre-installed packages commonly used in data science and scientific computing. Here's how to set up `conda`:

### Anaconda

Anaconda is a full-featured Python distribution that includes `conda`, Python interpreter, and a wide range of pre-installed packages for data science, machine learning, and scientific computing.

#### Installation Steps

1. **Download Anaconda**: Go to the [Anaconda website](https://www.anaconda.com/products/distribution) and download the appropriate installer for your operating system (Windows, macOS, or Linux).
   
2. **Install Anaconda**: Run the downloaded installer and follow the prompts to install Anaconda. Make sure to choose the option to add Anaconda to your system PATH during installation.

3. **Verify Installation**: Open a new terminal or command prompt and type `conda --version`. If Anaconda was installed correctly, you should see the version of `conda` installed.

#### Example (Terminal/Command Prompt):
```bash
conda --version
```

### Miniconda

Miniconda is a lightweight version of Anaconda that includes `conda` and Python interpreter but without the pre-installed packages. It allows you to install only the packages you need, making it more customizable and suitable for users with limited disk space or specific package requirements.

#### Installation Steps

1. **Download Miniconda**: Go to the [Miniconda website](https://docs.conda.io/en/latest/miniconda.html) and download the appropriate installer for your operating system (Windows, macOS, or Linux).

2. **Install Miniconda**: Run the downloaded installer and follow the prompts to install Miniconda. Make sure to choose the option to add Miniconda to your system PATH during installation.

3. **Verify Installation**: Open a new terminal or command prompt and type `conda --version`. If Miniconda was installed correctly, you should see the version of `conda` installed.

#### Example (Terminal/Command Prompt):
```bash
conda --version
```

Setting up `conda` is straightforward, and it provides a convenient way to manage Python packages and environments for your projects. Whether you choose Anaconda or Miniconda depends on your specific requirements and preferences.

## Key Differences

- **Package Sources**: `pip` primarily installs packages from PyPI, while `conda` can install packages from multiple repositories, including Anaconda repository, PyPI, and others.
- **Package Types**: `conda` can handle non-Python packages and dependencies, whereas `pip` is focused on Python packages.
- **Environment Management**: `conda` provides tools for creating and managing isolated environments, allowing you to manage dependencies separately for different projects.

Both `pip` and `conda` are powerful tools for managing Python packages, and the choice between them depends on your specific requirements and use cases. If you're working with the Anaconda distribution or need to manage non-Python dependencies, `conda` may be the preferred choice. Otherwise, `pip` is the standard package manager for Python packages.

[Back](../python.md) | [Code](../../code.md)