import 'dart:html';
import 'dart:js';

void main() {
  JsObject React = context['React'];
  JsObject ReactDOM = React['DOM'];
  
  JsObject h1 = ReactDOM.callMethod('h1', [null, 'Hello World!']);
  JsObject p = ReactDOM.callMethod('p', [null, 'This DOM was rendered from JS.']);
  JsObject div = ReactDOM.callMethod('div', [null, h1, p]);
  
  Element mountPoint = querySelector('#reactivate_mount_point_id');
  React.callMethod('renderComponent', [div, mountPoint]);
}
