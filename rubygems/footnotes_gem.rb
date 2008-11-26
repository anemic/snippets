# Installs the plugin footnotes, see README.markdown for usage and examples (http://github.com/drnic/rails-footnotes/tree/master)

# rails 2.2
cd myapp
git clone git://github.com/drnic/rails-footnotes.git vendor/plugins/footnotes
rm -rf vendor/plugins/footnotes/.git

# rails 2.1.x
cd myapp
git clone git://github.com/drnic/rails-footnotes.git vendor/plugins/footnotes
cd vendor/plugins/footnotes
git checkout v3.2.2
rm -rf ./.git

# rails < 2.1.x
cd myapp
git clone git://github.com/drnic/rails-footnotes.git vendor/plugins/footnotes
cd vendor/plugins/footnotes
git checkout v3.0
rm -rf ./.git