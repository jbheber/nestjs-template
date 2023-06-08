import { Injectable } from '@nestjs/common';

@Injectable()
export class HealthService {
  doPing() {
    return {
      message: 'Pong!',
    };
  }
}
