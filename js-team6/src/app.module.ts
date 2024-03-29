import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ProductModule } from './modules/products/product.modules';
import { AuthModule } from './auth/auth.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserModule } from './user/user.module';
import { dataSourceOptions } from 'db/data-source';
import { ConfigModule } from '@nestjs/config';

@Module({
  imports: [ProductModule, AuthModule, TypeOrmModule.forRoot(dataSourceOptions), UserModule,ConfigModule.forRoot()], 
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
