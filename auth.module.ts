

import { Module } from '@nestjs/common';
import { AuthService } from './auth.service';
import { AuthController } from './auth.controller';
import { PassportModule } from '@nestjs/passport';
import { SessionSerializer } from './session.serializer'; 
import { SessionModule } from 'nestjs-session';

@Module({
    imports: [
        PassportModule,
        SessionModule.forRoot({
            session: { secret: 'your-secret-key' },
        }),
    ],
    providers: [AuthService, SessionSerializer], // Include the AuthService and any other necessary providers
    controllers: [AuthController], // Include the AuthController
})
export class AuthModule { }
