import { Component, OnInit, AfterViewInit, OnDestroy } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { fairyDustCursor } from "cursor-effects";
@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent implements AfterViewInit, OnDestroy {
  private fairyDust: any;
  ngAfterViewInit() {
    this.fairyDust = new fairyDustCursor({ colors: ["#ff0000"] });
  }

  ngOnDestroy() {
    this.fairyDust?.destroy();
  }

  title = 'si67';

}
