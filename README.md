# blaugment
### ***bl***<sub>og</sub> ***augment***<sub>ation</sub>
<br />

This is the official code repository for the [blaugment](https://www.blaugment.com) project.  This is a tool for collecting and managing blog information, with the main feature being the ability to augment blog posts with supplementary information.  Perhaps the original blog doesn't have a tagging system of its own. Or perhaps it would be useful to mark up individual posts with additional comments, scores, rankings, or flags of some kind, with the ability to organize and search across these additional elements. Supplemental data about each blog post can also be aggregated or generated, including word counts, word clouds, generated table of contents, and more. 

## Additional Background
This project came about as a result of writing a series of blog posts for TMS Software, with topics mostly focused on their TMS WEB Core and TMS XData products.  After writing 70+ blog posts, the limitations of their blog system were becoming readily apparent, but even more than that, how people were using the blog posts went beyond what is typically available in any blog system.  Users were interested in tagging and searching the content, naturally, but there was also a desire to add their own private tags and other notes relevant to them, and not necessarily relevant to anyone else.  

There are other tools, like RSS readers, that offer interfaces to allow for managing this kind of thing with folders and even custom tags (something like NewsBlur for example), there's more that can be done with the content we're working with here.

## Key Dependencies
As with any modern web application, other JavaScript libraries/dependencies have been used in this project. Most of the time, this is handled via a CDN link (usually JSDelivr) in the Project.html file. In some cases, for performance or other reasons, they may be included directly.
- [TMS WEB Core](https://www.tmssoftware.com/site/tmswebcore.asp) - This is a TMS WEB Core project, after all
- [Bootstrap](https://getbootstrap.com/) - No introduction needed
- [Tabulator](https://www.tabulator.info) - Fantastic pure JavaScript web data tables
- [Font Awesome](https://www.fontawesome.com) - The very best icons
- [Material Design Icons](https://pictogrammers.com/library/mdi/) - Used throughout Home Assistant
- [Luxon](https://moment.github.io/luxon/#/) - For handling date/time conversions
- [Shoelace](https://shoelace.style/) - Web components, particularly the color picker for lights
- [FlatPickr](https://flatpickr.js.org) - Main UI date pickers
- [PanZoom](https://github.com/timmywil/panzoom) - Used when viewing photos/posters/backgrounds
- [HackTimer](https://github.com/turuslan/HackTimer) - Bypasses normal JavaScript timer behaviour

## Additional Notes
While this project is currently under active development, feel free to give it a try and post any issues you encounter.  Or start a discussion if you would like to help steer the project in a particular direction.  Early days yet, so a good time to have your voice heard.  As the project unfolds, additional resources will be made available, including platform binaries, more documentation, demos, and so on.

## Repository Information
[![Count Lines of Code](https://github.com/500Foods/Blaugment/actions/workflows/main.yml/badge.svg)](https://github.com/500Foods/Blaugment/actions/workflows/main.yml)
<!--CLOC-START -->
```
Last Updated at 2023-11-27 02:04:41 UTC
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Pascal                          18           2616           4659          19463
Delphi Form                      5             29              0           6960
CSS                              1            100             48           1182
Markdown                         6             17              2            147
HTML                             2             31             24             91
YAML                             2              8             12             33
JSON                             1              0              0             30
JavaScript                       1              3              0             25
Text                             1              0              0              1
-------------------------------------------------------------------------------
SUM:                            37           2804           4745          27932
-------------------------------------------------------------------------------
```
<!--CLOC-END-->

## Sponsor / Donate / Support
If you find this work interesting, helpful, or valuable, or that it has saved you time, money, or both, please consider directly supporting these efforts financially via [GitHub Sponsors](https://github.com/sponsors/500Foods) or donating via [Buy Me a Pizza](https://www.buymeacoffee.com/andrewsimard500). Also, check out these other [GitHub Repositories](https://github.com/500Foods?tab=repositories&q=&sort=stargazers) that may interest you.
