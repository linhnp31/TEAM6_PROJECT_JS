import {IsNotEmpty, IsEmail } from "class-validator";

export class ProductDto {
    @IsNotEmpty()
    password: number;

    @IsEmail()
    email:string;
}