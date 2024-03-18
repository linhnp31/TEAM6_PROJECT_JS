import { DataSourceOptions,DataSource } from "typeorm";

export const dataSourceOptions: DataSourceOptions = {
    type: "postgres",
    host: "localhost",
    port: 5432 ,
    username: "postgres",
    password: "thaingu0908",
    database: "login",
    entities: ['dist/**/*.entity.js'],
    migrations: ['dist/db/migrations/*.js'],
    synchronize:false
}

const datasource = new DataSource(dataSourceOptions);
export default datasource;