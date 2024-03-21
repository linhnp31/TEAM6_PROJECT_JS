import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { MemberEntity } from './member.entity';

@Injectable()
export class MemberService {
  constructor(
    @InjectRepository(MemberEntity)
    private memberRepository: Repository<MemberEntity>,
  ) {}

  async findAll(): Promise<MemberEntity[]> {
    return this.memberRepository.find();
  }

  async findOne(id: string): Promise<MemberEntity> {
    return this.memberRepository.findOne({ where: { id } });
  }

  async create(member: MemberEntity): Promise<MemberEntity> {
    return this.memberRepository.save(member);
  }

  async update(id: string, updatedMember: MemberEntity): Promise<MemberEntity> {
    const member = await this.memberRepository.findOne({ where: { id } });
    if (!member) {
      throw new Error(`Member with ID ${id} not found`);
    }
    const updatedEntity = Object.assign(member, updatedMember);
    return this.memberRepository.save(updatedEntity);
  }

  async remove(id: string): Promise<void> {
    const member = await this.memberRepository.findOne({ where: { id } });
    if (!member) {
      throw new Error(`Member with ID ${id} not found`);
    }
    await this.memberRepository.remove(member);
  }
}