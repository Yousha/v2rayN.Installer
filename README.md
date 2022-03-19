# v2rayN Installer

The [Inno Setup](https://jrsoftware.org/isinfo.php) installer script to create a Windows installer for [v2rayN VPN client](https://github.com/2dust/v2rayN/).

## Instructions

1. Download and install the [Inno Setup](https://jrsoftware.org/isinfo.php) installer (version 6.0.0 or newer).
2. Go to the [v2rayN client repository](https://github.com/2dust/v2rayN/releases).
3. Download the `v2rayN-windows-64.zip` or `v2rayN-windows-64-desktop.zip` (recommended) file.
4. Extract the downloaded archive into `v2rayN.Installer\Source\Files\*`.
   **Note:** `v2rayN.exe` must be in the root of the `Files` folder.
5. Open the installer script (`Installer.iss`) with [Inno Setup](https://jrsoftware.org/isinfo.php).
6. Compile it using `CTRL+F9` to generate the executable installer.
7. The compiled installer will be generated in the `..\Artifacts` directory.
8. Run the `v2rayN * 64bit installer.exe` file.
