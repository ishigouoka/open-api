const YAML = require('yaml')
const fs = require("fs")

const base = YAML.parse(fs.readFileSync(process.argv[2]).toString())

for (let i = 3; i < process.argv.length; i++) {
    const spec = YAML.parse(fs.readFileSync(process.argv[i]).toString())
    // paths
    if (spec.paths) {
        for(let v of Object.keys(spec.paths)) {
            base.paths[v] = spec.paths[v]
        }
    }
    // schemes
    if (spec.components || spec.components.schemas) {
        for(let v of Object.keys(spec.components.schemas)) {
            base.components.schemas[v] = spec.components.schemas[v]
        }
    }
    // tags
    if (spec.tags) {
        for(let tag of spec.tags) {
            if (base.tags.filter(t => t.name === tag.name).length === 0) {
                base.tags.push(tag)
            }
        }
    }
}

const regRef = new RegExp(`(\\$ref)( *: *)['"]?([^#]*)(#[^'"\\s]+)['"]?`, 'gm')
function replacer(match, p1, p2, p3, p4, offset, string) {
    return [p1, p2, "'", p4, "'"].join("");
}

const result = YAML.stringify(base).replace(regRef, replacer)

console.log(result)
