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
/******/ 	return __webpack_require__(__webpack_require__.s = 28);
/******/ })
/************************************************************************/
/******/ ({

/***/ 28:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_react_summernote_dist_react_summernote_css__ = __webpack_require__(29);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_react_summernote_dist_react_summernote_css___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_react_summernote_dist_react_summernote_css__);
// import React, { Component } from 'react';
// import ReactSummernote from 'react-summernote';
 // import styles
// import 'react-summernote/lang/summernote-en-US'; // you can import any other locale

// Import bootstrap(v3 or v4) dependencies
// import 'bootstrap/js/modal';
// import 'bootstrap/js/dropdown';
// import 'bootstrap/js/tooltip';
// import 'bootstrap/dist/css/bootstrap.css';

// export default class RichTextEditor extends Component {
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
// }

/***/ }),

/***/ 29:
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ })

/******/ });