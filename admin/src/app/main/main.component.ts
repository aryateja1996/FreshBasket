import { Component, OnInit } from '@angular/core';
import { AngularFireDatabase } from '@angular/fire/database';
import { map, take } from 'rxjs/operators';
import { FormControl, NumberValueAccessor } from '@angular/forms';
import { AngularFirestore } from '@angular/fire/firestore';
import { DatePipe } from '@angular/common';

interface IUser {
  id: string;
  products: any[];
  total : number;
  usave : number;
  [key: string]: any;
}

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.scss'],
  providers : [DatePipe]
})
export class MainComponent implements OnInit {
  

  selectedUserCtrl = new FormControl(null)
  selectedUser: IUser | null = null;

  users: IUser[] = [];
  mydate = new Date()
  constructor(private db: AngularFireDatabase, private firestore: AngularFirestore,
    private datepipe: DatePipe
    )
     //private observable: any
  {
    this.datepipe.transform(this.mydate, 'dd-mm-yyyy')
  }

  ngOnInit(): void {
    

    //observable ;
    this.db.database.ref('orders').on('value', (snapshot) => {
      //this.observable = snapshot.val();
      const result = snapshot.val();

      Object.keys(result).forEach((orderId, ind) => {
        const user = this.users.filter(
          (user) => user.id === result[orderId].id
        );
        if (user.length) {
          user[0].products.push(result[orderId].products);
        } else {
          const nuser: IUser = {
            id: result[orderId].id,
            products: result[orderId].products,
            total : result[orderId].amount,
            usave : result[orderId].totalDiscount,
          };
          this.users.push(nuser);
        }
      });
      console.log(this.users)
    });
    //console.log(this.observable);
  }
  getOrders() {
    return this.db
      .list('/orders')
      .snapshotChanges()
      .pipe(
        map((products: any[]) =>
          products.map((prod) => {
            const payload = prod.payload.val();
            const key = prod.key;
            return <any>{ key, ...payload };
          })
        )
      );
  }


  async userChange() {
    this.selectedUser = this.users.filter(user => user.id === this.selectedUserCtrl.value)[0];
    const result: any = await this.firestore.collection('user').doc(this.selectedUser.id).valueChanges().pipe(take(1)).toPromise()
    this.selectedUser = {...this.selectedUser, ...result};
    console.log(this.selectedUser)
  }
  
  prtscr(){
    window.print();
  }
}
