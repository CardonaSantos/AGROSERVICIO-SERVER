import { Module } from '@nestjs/common';
import { FormatoPresentacionService } from './formato-presentacion.service';
import { FormatoPresentacionController } from './formato-presentacion.controller';

@Module({
  controllers: [FormatoPresentacionController],
  providers: [FormatoPresentacionService],
})
export class FormatoPresentacionModule {}
