import express, { json } from 'express'
import { createGameRouter } from './routes/games-routes.js'
import { corsMiddleware } from './middlewares/cors.js'
import { PORT } from './config.js'

export const createApp = ({ gameModel }) => {
  const app = express()
  app.use(json())
  app.use(corsMiddleware())
  app.disable('x-powered-by')

  app.use('/games', createGameRouter({ gameModel }))

  app.listen(PORT, () => {
    console.log(`server listening on port http://localhost:${PORT}`)
  })
}
