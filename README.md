# Source for my personal webpage

This is a repository with all the content needed to generate my personal web page odhondt.github.io.

I chose not to use any fancy automation to deploy the website on github pages.

To commit my changes to this repo I use the traditional `git commit -a && git push origin master`.

To deploy the website, I use the separate repository odhondt/odhondt.github.io. This repo need to be cloned
in the same directory where odhondt-hugo repo lies. Then, a simple script called `deploy.sh` builds the page,
copies the public folder in the github.io repo and commits / push the changes.
