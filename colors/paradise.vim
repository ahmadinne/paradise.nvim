lua << EOF
package.loaded['paradise'] = nil
package.loaded['paradise.util'] = nil
package.loaded['paradise.colors'] = nil
package.loaded['paradise.theme'] = nil
package.loaded['paradise.functions'] = nil

require('paradise').set()
EOF
