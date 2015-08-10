# simple-dependency-manager
Simple dependency manager, and a simple binary repository.

Made because Ivy and archiva seems to be too complext to get started and seems to use ant or maven and java hogs.



#### Dependency manager

* Version control?
* auditing  - tracking who changes what?
* Informatiun required
  * repo-id/url: where to get each artifact.
  * Name
  * version - also support various version formats.
  * date
  * build environment information, like Jenkins build info.
  * architecture
  * OS
  * 
* preferably support plugins - so that other things can be supported by just writing the plugin.
* possibly support upload of the artifact through the dendency manager, so that the dependency manager decides what the storage path is to be.
* info upload formats:
  * XML
  * JSON?
  * YAML?
  * INI?
* Should it have a DB backend?
  * if so should it be able to support different ones?


#### Artifact archive
* Protocols:
  * scp
  * web
* Security
  * write access
    * Support CI clients to be able to upload the products.
  * read access
  * authentication
* no clobber - prevent overwritting existing artifacts
* web interface for management.
* Multi site support - sync relevant data betweent the sites.
* Possibly limits on upload total sizes.
* Support storage bins, whith unrelated administrators.


Initial:
* SCP for upload
* lighttp for download
