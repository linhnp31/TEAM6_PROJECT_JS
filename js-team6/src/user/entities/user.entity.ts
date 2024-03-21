import { Entity, Column, CreateDateColumn, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class User {
  @PrimaryGeneratedColumn()
  id:Number;

  @Column()
  username: string;

  @Column()
  email: string;

  @Column({nullable:false})
  password: string;

  @Column({nullable:true,default:null})
  refresh_token: string;

  @Column({ default: 1 })
  status: number;

  @CreateDateColumn()
  created_at: Date;

  @CreateDateColumn()
  update_up: Date;
}
