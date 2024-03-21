import {IsNotEmpty, IsEmail } from "class-validator";

export class ProductDto {
    @IsNotEmpty()
    password: string;

    @IsEmail()
    email:string;
}
