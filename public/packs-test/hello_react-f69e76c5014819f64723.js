/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs-test/";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 30);
/******/ })
/************************************************************************/
/******/ ({

/***/ 30:
/***/ (function(module, exports) {

// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout fiexport default class RichTextEditor extends Component {
//   onChange(content) {
//     console.log('onChange', content);
//   }

//   render() {
//     return (
//       <ReactSummernote
//         value="Add your comment here..."
//         options={{
//           // lang: 'en-US',
//           height: 300,
//           dialogsInBody: true,
//           toolbar: [
//             ['style', ['style']],
//             ['font', ['bold', 'underline', 'clear']],
//             ['fontname', ['Exo 2']],
//             ['para', ['ul', 'ol', 'paragraph']],
//             ['table', ['table']],
//             ['insert', ['link', 'picture', 'video']],
//             ['view', ['fullscreen', 'codeview']]
//           ]
//         }}
//         onChange={this.onChange}
//       />
//     )
//   }
// }le,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

// import React, { Component } from 'react'
// import ReactDOM from 'react-dom'
// import PropTypes from 'prop-types'

// export default class Hello extends Component {
//   static defaultProps() {
//     name: 'Joseph'
//   }

//   static propTypes = {
//     name: PropTypes.string.required
//   }

//   render() {
//     return (
//       <div>
//         Hello {this.props.name}
//       </div>
//     )
//   }
// }

/***/ })

/******/ });