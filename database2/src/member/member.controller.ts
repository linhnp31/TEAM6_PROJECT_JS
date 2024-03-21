import { Controller, Get, Post, Body, Put, Param, Delete } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { MemberService } from './member.service';
import { MemberEntity } from './member.entity';

@Controller('members')
export class MemberController {
  constructor(
    @InjectRepository(MemberEntity)
    private readonly memberService: MemberService) {}

  @Get()
  async findAll(): Promise<MemberEntity[]> {
    return this.memberService.findAll();
  }

  @Get(':id')
  async findOne(@Param('id') id: string): Promise<MemberEntity> {
    return this.memberService.findOne(id);
  }

  @Post()
  async create(@Body() member: MemberEntity): Promise<MemberEntity> {
    return this.memberService.create(member);
  }

  @Put(':id')
  async update(@Param('id') id: string, @Body() member: MemberEntity): Promise<MemberEntity> {
    return this.memberService.update(id, member);
  }

  @Delete(':id')
  async remove(@Param('id') id: string): Promise<void> {
    return this.memberService.remove(id);
  }
}