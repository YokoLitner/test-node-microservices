import { Controller } from '@nestjs/common';
import {
  Ctx,
  MessagePattern,
  NatsContext,
  Payload,
} from '@nestjs/microservices';

@Controller()
export class AppController {
  @MessagePattern('notifications')
  getNotifications(
    @Payload() data: number[],
    @Ctx() context: NatsContext,
  ): string {
    return `Subject: ${context.getSubject()}`;
  }
}
