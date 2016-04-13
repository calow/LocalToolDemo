document.addEventListener("plusready", function() {
	var _TEST = 'ControllerTest',
		_FORMAL = "ControllerFormal",
		B = window.plus.bridge;
	var controllerTest = {
		RunTool: function(Argus, successCallback, errorCallback) {
			var success = typeof successCallback !== 'function' ? null : function(args) {
					successCallback(args);
				},
				fail = typeof errorCallback !== 'function' ? null : function(code) {
					errorCallback(code);
				};
			callbackID = B.callbackId(success, fail);
			return B.exec(_TEST, "runTool", [callbackID, Argus]);
		},
		actRunTool: function(Argus, successCallback, errorCallback) {
			var success = typeof successCallback !== 'function' ? null : function(args) {
					successCallback(args);
				},
				fail = typeof errorCallback !== 'function' ? null : function(code) {
					errorCallback(code);
				};
			callbackID = B.callbackId(success, fail);
			return B.exec(_TEST, "actRunTool", [callbackID, Argus]);
		}
	};
	var controllerFormal = {
		RunTool: function(Argus, successCallback, errorCallback) {
			var success = typeof successCallback !== 'function' ? null : function(args) {
					successCallback(args);
				},
				fail = typeof errorCallback !== 'function' ? null : function(code) {
					errorCallback(code);
				};
			callbackID = B.callbackId(success, fail);
			return B.exec(_FORMAL, "runTool", [callbackID, Argus]);
		},
		actRunTool: function(Argus, successCallback, errorCallback) {
			var success = typeof successCallback !== 'function' ? null : function(args) {
					successCallback(args);
				},
				fail = typeof errorCallback !== 'function' ? null : function(code) {
					errorCallback(code);
				};
			callbackID = B.callbackId(success, fail);
			return B.exec(_FORMAL, "actRunTool", [callbackID, Argus]);
		}
	};
	var controller = {
		Test: function(Argus, successCallback, errorCallback) {
			controllerTest.RunTool(Argus, successCallback, errorCallback);
		},
		TestAct: function(Argus, successCallback, errorCallback) {
			controllerTest.actRunTool(Argus, successCallback, errorCallback);
		},
		Formal: function(Argus, successCallback, errorCallback) {
			controllerFormal.RunTool(Argus, successCallback, errorCallback);
		},
		FormalAct: function(Argus, successCallback, errorCallback) {
			controllerFormal.actRunTool(Argus, successCallback, errorCallback);
		}
	};
	window.plus.controller = controller;
}, true);