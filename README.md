# ps-wifi-ducky
Because it's 2023 and you should be using PowerShell, not CMD for this.

# Disclaimer 
This project contains scripts that are strictly intended for authorized use in legal and controlled environments, such as contracted penetration testing or on your own devices. Unauthorized use of these scripts on non-consenting parties or without proper authorization is strictly prohibited and illegal. Please use this tool responsibly and ethically.

# Explanation 
The included scripts are designed to be used as a component of a Rubber Ducky. A Rubber Ducky is a USB device containing auto-executing code, often used to test a device for vulnerability or determine if credentials are vulnerable to auto-executing vectors. The scripts provided in this project run via PowerShell, making it compatible with more recent Windows machines. PowerShell is known for its power and versatility, making it suitable for complex tasks and data automation. Unlike CMD, PowerShell allows users to handle and manipulate data efficiently. However, due to legitimate security concerns Microsoft does not allow PowerShell scripts to be run by autorun.inf, by utilizing an .inf that runs a batch file, this can be bypassed.

# Installation and Use 
Download the 'autorun.inf', 'autorun.bat' and 'networks.ps1' files. 
Copy both files to a USB drive of your choice. The "Ducky" will now auto-execute when inserted into the target machine for pen-testing. The "Ducky" will identify all known network SSIDs and passwords on the target machine that are not adequately protected by security software and append them to a file called 'wirelessinfo.txt.' Safely remove the USB drive and open 'wirelessinfo.txt' to view the compromised credentials.

# Potential Issues and Responsible Use 
Should the "Ducky" identify any compromisable network credentials, you can harden the system by taking one or more of the following steps:

Properly configure User Account Controls (UAC), Firewalls, or Antivirus/Malware protection to increase the probability that any such auto-executing scripts might be immediately detected and prevented from running. Furthermore, active monitoring and tracking via network security suites to detect suspicious activities through SIEM software may enable rapid identification of any suspicious activity that is not automatically prevented by the above.

Only use these scripts on your own devices or as part of authorized penetration testing. Unauthorized use of this tool may result in legal consequences and severe penalties, based on the jurisdiction in which the device is deployed.

This tool tests for vulnerabilities which may enable further social engineering attacks on employees who use their personal devices for work. It is important to prevent this vulnerability vector because it may enable malicious actors to gain access enterprise's network via poorly monitored laptops or other devices in public/shared offices. Accordingly, any authorized penetration testing should also attempt to identify and mitigate such vulnerabilities.

# Removal and Cleanup 
After authorized use, it's crucial to remove the tool and any residual traces of the scripts from the target machine promptly, and to erase the output file. It is also good practice to immediately change any passwords uncovered by the penetration test.

#Legal Implications 
Using this tool inappropriately may violate local laws and regulations, resulting in severe legal repercussions. Users are responsible for understanding and complying with the laws governing the use of penetration testing tools. The software authors expressly forbid the use of this software without authorization by the owners of the tested devices.

# Reporting Vulnerabilities 
If you discover any security vulnerabilities or potential issues while using this tool responsibly, please report them to the developers to help improve the software.

Remember, this project is intended for ethical and legal use only. By using this tool, you acknowledge and agree to abide by these guidelines and accept full responsibility for your actions. Use it responsibly, and do not test any system without proper authorization from the system owners.
