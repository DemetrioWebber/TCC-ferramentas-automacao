var rimraf = require("rimraf");
const path = require("path");

rimraf.sync(path.join(__dirname, "../../reports/json/*"));
rimraf.sync(path.join(__dirname, "../../reports/html/*"));
rimraf.sync(path.join(__dirname, "../../reports/screenshots/spec/*"));
rimraf.sync(path.join(__dirname, "../../reports/screenshots/specs/*"));