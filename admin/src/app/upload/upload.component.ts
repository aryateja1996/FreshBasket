import { Component, OnInit } from '@angular/core';
import { AngularFireStorage } from '@angular/fire/storage';
import { Observable } from 'rxjs';
import { finalize } from 'rxjs/operators';
import { AngularFirestore } from '@angular/fire/firestore';

@Component({
  selector: 'app-upload',
  templateUrl: './upload.component.html',
  styleUrls: ['./upload.component.scss']
})
export class UploadComponent implements OnInit {
  uploadPercent!: Observable<number | undefined>
  downloadURL!: Observable<string>;
  progress:number | undefined;
  name!:string;
  isDisabled:boolean = true;
  url!:String;
  price!:number;
  offer!:number;
  id!:string;
  wait : string = "Let the upload finish and waite for the done message";
  hit:string = "Now Hit the Upload Button";
  message!:string;
final!:string;
  constructor(private storage:AngularFireStorage , private firestore: AngularFirestore) { }

  ngOnInit(): void {
  }
  uploadFile(event:any) {
    this.name = (<HTMLInputElement>document.getElementById('name')).value;
    this.id = (<HTMLInputElement>document.getElementById('id')).value;
    this.price = Number((<HTMLInputElement>document.getElementById("price")).value);
    this.offer = Number((<HTMLInputElement>document.getElementById("offerAmount")).value);
    const file = event.target.files[0];
    const filePath = this.name;
    const fileRef = this.storage.ref(filePath);
    const task = this.storage.upload(filePath, file);

    // observe percentage changes
    this.uploadPercent = task.percentageChanges();
    this.uploadPercent.subscribe(data =>{
      this.progress = data;
    })
    // get notified when the download URL is available
    task.snapshotChanges().pipe(
        finalize(() => {
          this.downloadURL = fileRef.getDownloadURL();
          this.downloadURL.subscribe(data =>{
            
            this.url = data;
            this.isDisabled = false;
          })
          
        })
        
     )
    .subscribe()
  }
  uploadButton(){
   
    try {
     // this.uploadFile
    this.firestore.collection("Products").doc(this.id).set({
      "name" : this.name,
      "price" : this.price,
      "offer": this.offer,
      "imgUrl" : this.url,
    })
    this.message = "Record Saved Succesful";
   
   this.final = "sucess"
   
    } catch (error) {
      console.log(error);
      this.message = "Some Error As Occured"
      
      this.final = "fail"
    }
  }
}