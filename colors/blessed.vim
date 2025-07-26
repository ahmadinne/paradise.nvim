lua << EOF
package.loaded['blessed'] = nil
package.loaded['blessed.util'] = nil
package.loaded['blessed.colors'] = nil
package.loaded['blessed.theme'] = nil
package.loaded['blessed.functions'] = nil

require('blessed').set()
EOF
