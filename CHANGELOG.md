### v0.2.2

* Nothing new, just improvements in codebase

### v0.2.1

* Delegate `:visible` selector to Watir 6 which supports it natively

### v0.2.0

* Update watirsome for Watir 6

### v0.1.7

* Massive refactoring
* Added support for read accessors on checkbox/radio element (#4)

#### v0.1.4

* Support element subtype boolean locators (e.g. `select_list :list, selected: 'Default'`)

#### v0.1.3

* Remove `Watirsome.region_matcher` so now any module may implement `initialize_region`.

#### v0.1.2

* Fix for checkboxes in previous version hasn't actually resolved issue. Now fixed.

#### v0.1.1

* Fixed problem when plural form of `checkbox` was `checkboxs` instead of `checkboxes`.

#### v0.1.0

* Initial release.
