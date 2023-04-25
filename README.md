# android.deface
A Bash shell script that uses the `Android Debug Bridge` (ADB) command-line tool to communicate with an Android device. It defines two arrays, `packages` and `system_packages`, that contain the package names of Facebook/Meta products and system packages associated with Facebook respectively.

The script then uses a `for` loop to iterate over each package in the packages array, and for each package, it calls the `adb shell pm uninstall` command with the package name and the `--user 0` option to remove the package for the primary user. This command uninstalls the app and removes all its associated data from the device.

Next, the script uses another `for` loop to iterate over each system package in the `system_packages` array, and for each package, it calls the `adb shell pm disable-user` command with the package name and the `--user 0` option to disable the package for the primary user. This command disables the app, preventing it from running and consuming system resources.

Once all the packages have been uninstalled or disabled, the script exits.

## Usage
To use the script, you will need to follow these steps:

* Connect your Android device to your computer via USB.
* Open a terminal or command prompt on your computer and navigate to the directory where the script is saved.
* Make sure that ADB is installed and configured on your computer and that USB debugging is enabled on your Android device.
* Run the script by typing ./infra.sh in the terminal, where infra.sh is the name of the script file.

## Considerations:
Note that the script may take some time to run, depending on the number of packages that need to be uninstalled or disabled. Once the script has finished running, you should see a message indicating that the operation was successful.

Please be cautious when running this script, as it will remove all Facebook/Meta products and disable some associated system apps. This may cause some features or functions of your device to stop working properly, so please make sure to back up your device before running the script.

## [Disclaimer](DISCLAIMER)
**This software is provided "as is" and without warranty of any kind**, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. In no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.

**The authors do not endorse or support any harmful or malicious activities** that may be carried out with the software. It is the user's responsibility to ensure that their use of the software complies with all applicable laws and regulations.

## License

These files released under the [MIT License](LICENSE).
