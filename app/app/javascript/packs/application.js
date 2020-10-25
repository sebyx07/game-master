import "../stylesheets/application.scss";

require('@rails/ujs').start();
require('turbolinks').start();
const componentRequireContext = require.context('components', true);
const ReactRailsUJS = require('react_ujs');
ReactRailsUJS.useContext(componentRequireContext); // eslint-disable-line
