(
echo "if(!window) var window = {};"
echo "var gamecore = "
cat 'src/gamecore.js' | grep -v '^window.gamecore ='

cat 'src/class.js' 'src/base.js' \
    'src/hashlist.js' 'src/jhashtable.js' 'src/linkedlist.js' \
    'src/perf.js' 'src/pooled.js' 'src/stacktrace.js'

echo "module.exports.gamecore = gamecore;"
) > gamecore.node.js

cat 'src/gamecore.js' 'src/class.js' 'src/base.js' 'src/device.js' \
    'src/hashlist.js' 'src/jhashtable.js' 'src/linkedlist.js' \
    'src/perf.js' 'src/pooled.js' 'src/stacktrace.js' > gamecore.browser.js

ls -l gamecore.browser.js gamecore.node.js
