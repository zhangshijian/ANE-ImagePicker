/*
 * Copyright 2017 FreshPlanet
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.freshplanet.ane.AirImagePicker.events {
import com.freshplanet.ane.AirImagePicker.AirImagePickerImageData;

import flash.events.Event;

public class AirImagePickerDataEvent extends Event {

	public static const IMAGE_CHOSEN:String = "AirImagePickerDataEvent_onImageChosen";
	public static const CANCELLED:String = "AirImagePickerDataEvent_cancelled";

	public static const CAMERA_PERMISSION_ERROR:String = "AirImagePickerDataEvent_cameraPermissionError";
	public static const GALLERY_PERMISSION_ERROR:String = "AirImagePickerDataEvent_galleryPermissionError";

	private var _imageData:AirImagePickerImageData;


	public function AirImagePickerDataEvent(type:String, imageData:AirImagePickerImageData = null, bubbles:Boolean = false, cancelable:Boolean = false) {
		super(type, bubbles, cancelable);
		_imageData = imageData;
	}

	public function get imageData():AirImagePickerImageData {
		return _imageData;
	}
}
}
