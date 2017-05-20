# purescript-benchmark-template

Ready to clone template project for writing benchmarks. A full example can be
found in [/src](https://github.com/cyrbon/purescript-benchmark-template/src/Main.purs).

The project uses [rollup](https://github.com/Pauan/rollup-plugin-purs)
to provide additional optimizations (like uncurry, inlining and dead-code
elimination) and dramatically reduce bundle size. The example shows how to use it
in both browser and node environments.

## Usage

### Preparation

Download the project

```
git clone https://github.com/cyrbon/purescript-benchmark-template
cd purescript-benchmark-template
```

Install dependencies:

```
bower i
npm i
```

### Compilation and bundling

```
# This will compile `.purs` files to `output/`
pulp build
# This will run the script named `bundle` that is specified in `package.json`
# "bundle": "rollup --config"
# This script runs rollup which bundles source to `build/`
npm run bundle
```

A benchmark should work both with node and in a browser environment.

```
> node build/bundle.json
+-------------------+-------------+-------+-------+
| Name              | Op/s        | % max | +-(%) |
+-------------------+-------------+-------+-------+
| simple addition   | 79204555.11 | 100   | 0.48  |
| addition and mult | 50679974.66 | 63.99 | 1.11  |
+-------------------+-------------+-------+-------+
```

`> google-chrome-stable build/index.html`

Output from chrome console:

```
+-------------------+-------------+-------+-------+
| Name              | Op/s        | % max | +-(%) |
+-------------------+-------------+-------+-------+
| simple addition   | 66728481.56 | 100   | 0.80  |
| addition and mult | 44306489.78 | 66.40 | 0.98  |
+-------------------+-------------+-------+-------+
```
