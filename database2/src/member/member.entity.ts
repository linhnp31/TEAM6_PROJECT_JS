import { Entity, Column, PrimaryColumn } from 'typeorm';

@Entity({ name: 'member' })
export class MemberEntity {
  @PrimaryColumn({ name: 'id' })
  id: string;

  @Column({ name: 'name' })
  name: string;

  @Column({ name: 'gen' })
  gen: number;

  @Column({ name: 'dob', type: 'date', nullable: true })
  dob: Date;

  @Column({ name: 'phone', nullable: true })
  phone: string;

  @Column({ name: 'mail' })
  mail: string;

  @Column({ name: 'dep_id' })
  depId: string;

  @Column({ name: 'role_id' })
  roleId: string;

  @Column({ name: 'address', nullable: true })
  address: string;

  @Column({ name: 'fb', nullable: true })
  fb: string;

  @Column({ name: 'khoa' })
  khoa: number;
}