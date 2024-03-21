import { MigrationInterface, QueryRunner } from "typeorm";

export class DelFirstnameAndLastnamFromUserInTable1710901396913 implements MigrationInterface {
    name = 'DelFirstnameAndLastnamFromUserInTable1710901396913'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "user" DROP COLUMN "firstName"`);
        await queryRunner.query(`ALTER TABLE "user" DROP COLUMN "lastName"`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "user" ADD "lastName" character varying NOT NULL`);
        await queryRunner.query(`ALTER TABLE "user" ADD "firstName" character varying NOT NULL`);
    }

}
