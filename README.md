# Description
A collection of miscellaneous tweaks I've accumulated for my PowerShell Profile.

The real meat is in PowerShell/Microsoft.PowerShell_profile.ps1, which is the default location for PowerShell v7's profile.

I set up an additional file at WindowsPowerShell/Microsoft.PowerShell_profile.ps1 (the default location for PowerShell v5's profile) that just pulls everything from the v7 location.

# To-Do
- Create a build process for setting this up:
  - Add logic to adapt if run on a machine with only PowerShell v5
  - Add logic to look for a Scripts folder
- Add a version number in the header
  - Add a function for querying the version number
  - Display this version when the profile loads
