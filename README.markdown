# Redmine No Version Autocomplete

## Overview

Redmine will treat a version as complete in the project roadmap if all issues 
are closed and the versions target date has passed.  In some cases, this may not 
be desiredbehavior, for example if deploying the new version is needed.

This plugin will require a version to be explicitly closed in order to be shown
as completed in the project roadmap.  When the plugin is installed, this change
will be made to all projects.

## Usage

After installing the plugin, no extra user is required.

## Compatibility

This plugin is developed and tested on version 2.3.3, it may or may not work 
with other versions.

## Installation

1.  Clone to plugins/redmine_no_version_autocomplete
1.  Restart the server

## License

This program is free software: you can redistribute it and/or modify 
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
