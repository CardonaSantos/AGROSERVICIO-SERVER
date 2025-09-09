import { Test, TestingModule } from '@nestjs/testing';
import { FormatoPresentacionController } from './formato-presentacion.controller';
import { FormatoPresentacionService } from './formato-presentacion.service';

describe('FormatoPresentacionController', () => {
  let controller: FormatoPresentacionController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [FormatoPresentacionController],
      providers: [FormatoPresentacionService],
    }).compile();

    controller = module.get<FormatoPresentacionController>(FormatoPresentacionController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
