import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { FormatoPresentacionService } from './formato-presentacion.service';
import { CreateFormatoPresentacionDto } from './dto/create-formato-presentacion.dto';
import { UpdateFormatoPresentacionDto } from './dto/update-formato-presentacion.dto';

@Controller('formato-presentacion')
export class FormatoPresentacionController {
  constructor(private readonly formatoPresentacionService: FormatoPresentacionService) {}

  @Post()
  create(@Body() createFormatoPresentacionDto: CreateFormatoPresentacionDto) {
    return this.formatoPresentacionService.create(createFormatoPresentacionDto);
  }

  @Get()
  findAll() {
    return this.formatoPresentacionService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.formatoPresentacionService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateFormatoPresentacionDto: UpdateFormatoPresentacionDto) {
    return this.formatoPresentacionService.update(+id, updateFormatoPresentacionDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.formatoPresentacionService.remove(+id);
  }
}
