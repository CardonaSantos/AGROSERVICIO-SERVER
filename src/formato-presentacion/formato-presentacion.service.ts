import { Injectable } from '@nestjs/common';
import { CreateFormatoPresentacionDto } from './dto/create-formato-presentacion.dto';
import { UpdateFormatoPresentacionDto } from './dto/update-formato-presentacion.dto';

@Injectable()
export class FormatoPresentacionService {
  create(createFormatoPresentacionDto: CreateFormatoPresentacionDto) {
    return 'This action adds a new formatoPresentacion';
  }

  findAll() {
    return `This action returns all formatoPresentacion`;
  }

  findOne(id: number) {
    return `This action returns a #${id} formatoPresentacion`;
  }

  update(id: number, updateFormatoPresentacionDto: UpdateFormatoPresentacionDto) {
    return `This action updates a #${id} formatoPresentacion`;
  }

  remove(id: number) {
    return `This action removes a #${id} formatoPresentacion`;
  }
}
