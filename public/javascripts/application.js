// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// Function to load url in active tab.
function loadUrlInActiveTabInSet(tabs, url) {
  var selected = tabs.tabs('option', 'selected');
  tabs.tabs('url', selected, url);
  tabs.tabs('load', selected);
}

function loadUrlInActiveTab(url) {
  loadUrlInActiveTabInSet(jQuery('#tabs'), url);
}


// Buttons that load in active tab.
function createLoadInActiveTabButton(element, url) {
  element
  .button()
  .bind('click', function() {
    loadUrlInActiveTab(url);
  });
}

function createLoadInActiveTabButtonWithIcon(element, icon, url) {
  element
  .button({icons: {primary: icon} })
  .bind('click', function() {
    loadUrlInActiveTab(url);
  });
}

function createEditInActiveTabButton(element, url) {
  createLoadInActiveTabButtonWithIcon(element, 'ui-icon-pencil', url);
}