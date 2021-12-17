import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { MainComponent } from './main/main.component';
import { PolicyComponent } from './policy/policy.component';
import { ServicesComponent } from './services/services.component';
import { UploadComponent } from './upload/upload.component';

const routes: Routes = [
  {path: "",component:MainComponent},
  {path:"policy",component:PolicyComponent},
  {path:"services",component:ServicesComponent},
  {path: "upload",component:UploadComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
