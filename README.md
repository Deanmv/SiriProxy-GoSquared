SiriProxy GoSquared 
==================================

This repo is a plugin for [SiriProxy] (https://github.com/plamoni/SiriProxy) that will let the user check their web stats if they are using [GoSquared] (https://www.gosquared.com)

Installation
------------

First you will need to install Siri Proxy and when up and running drop this plugin into your Siri Proxy Plug-ins, e.g:

`~/SiriProxy/plugins/`

Drop this into you `~/.siriproxy/config.yml` file:

	- name: 'Git'
	  git: 'git://github.com/Deanmv/SiriProxy-GoSquared.git'
	  API: '' Your websites API key.
	  token: '' Your websites token key.


Example is supplied in the configuration.yml in the repo.

Then rebundle siriproxy and you are off!

Commands
--------

'Website current visitors'

Will show you how many visitors are on your website right now..

'Website visitors last week'

Will return an average amount of visitors during the last week.

'Website visitors engagement'

Will return the average amount of time users are actively on your site (in seconds).


Legal Bits
----------

Copyright (c) 2012, Dean Vizer

Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.