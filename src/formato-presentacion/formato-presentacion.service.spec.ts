import { Test, TestingModule } from '@nestjs/testing';
import { FormatoPresentacionService } from './formato-presentacion.service';

describe('FormatoPresentacionService', () => {
  let service: FormatoPresentacionService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [FormatoPresentacionService],
    }).compile();

    service = module.get<FormatoPresentacionService>(FormatoPresentacionService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
