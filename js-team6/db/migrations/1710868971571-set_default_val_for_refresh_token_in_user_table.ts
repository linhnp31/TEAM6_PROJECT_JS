import { MigrationInterface, QueryRunner } from "typeorm";

export class SetDefaultValForRefreshTokenInUserTable1710868971571 implements MigrationInterface {
    name = 'SetDefaultValForRefreshTokenInUserTable1710868971571'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "user" ALTER COLUMN "refresh_token" DROP NOT NULL`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "user" ALTER COLUMN "refresh_token" SET NOT NULL`);
    }

}
