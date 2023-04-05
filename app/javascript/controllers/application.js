import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
// Bootstrap
//= require bootstrap-sprockets
//= require bootstrap-datetimepicker
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.ja
//= require jquery
//= require jquery_ujs
//= require jquery.datetimepicker
//= require moment
//= require moment/ja.js
//= require tempusdominus-bootstrap-4.js
//= require_tree .