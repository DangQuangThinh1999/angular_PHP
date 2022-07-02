import { Component, OnInit } from '@angular/core';
import { ApiService } from 'src/app/api.service';
import { DSLoai } from 'src/app/QLSach';
@Component({
  selector: 'app-test',
  template:`<div>
  <p>Without JSON pipe:</p>
  <pre>{{object}}</pre>
  <p>With JSON pipe:</p>
  <pre>{{object | json}}</pre>
</div>`
  // templateUrl: './test.component.html',
  // styleUrls: ['./test.component.css']
})
export class TestComponent {
  object: Object = {foo: 'bar', baz: 'qux', nested: {xyz: 3, numbers: [1, 2, 3, 4, 5]}};
}