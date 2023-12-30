import express, { Express, Request, Response, NextFunction } from "express";

const app: Express = express();

const PORT = process.env.PORT || 8000


app.get('/', (req: Request, res: Response, next: NextFunction) => {
    res.send('Hellööööööö !!')
})


app.listen(PORT, () => {
    `Server listening on port: ${PORT}`
})