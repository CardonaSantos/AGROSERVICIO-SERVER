import { PartialType } from '@nestjs/mapped-types';
import { CreateFormatoPresentacionDto } from './create-formato-presentacion.dto';

export class UpdateFormatoPresentacionDto extends PartialType(CreateFormatoPresentacionDto) {}
