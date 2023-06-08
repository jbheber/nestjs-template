import { Controller, Get, HttpStatus, Res } from '@nestjs/common';
import { Response } from 'express';
import { HealthService } from './health.service';

@Controller('health')
export class HealthController {
  constructor(private readonly healthService: HealthService) {}
  @Get()
  ping(@Res() res: Response) {
    const response = this.healthService.doPing();
    res.status(HttpStatus.OK).json(response);
  }
}
