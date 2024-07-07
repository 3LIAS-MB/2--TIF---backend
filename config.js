import { config } from 'dotenv'

config()

// puerto del servidor
export const PORT = process.env.PORT || 1234

export const DB_HOST = process.env.DB_HOST || 'localhost'
export const DB_USER = process.env.DB_USER || 'root'
export const DB_PORT = process.env.DB_PORT || 3306
export const DB_PASSWORD = process.env.DB_PASSWORD || 'S436339133xd'
export const DB_DATABASE = process.env.DB_DATABASE || 'shopgames'

// process -> objeto global de node
// env -> almacena todas las variables del computador

// muestra el puerto
// console.log(process.env.DB_HOST)
// console.log(process.env.DB_PORT)
// console.log(process.env.DB_USER)
// console.log(process.env.DB_PASSWORD)
// console.log(process.env.DB_DATABASE)
