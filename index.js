const express = require('express')
const app = express()
const port = 3001

// middleware
app.use(express.json())

app.get('/', (req, res) => {
    res.send('Book apis is running!')
})

app.listen(port, () => {
    console.log(`Book apis is running on port ${port}`)
})

// GET: get all books
app.get('/books', async (req, res) => {
    try {
        // const {name,des} = req.body;
        res.status(200).json({ message: 'successfully create books data' })
    } catch (error) {
        console.log(error);
    }
})

// GET:ID --> get single book
app.get('/books/:id', async (req, res) => {
    try {
       const {id} = req.params
        res.status(200).json({ message: `get a single book data: ${id}` })
    } catch (error) {
        console.log(error);
    }
})

// CREATE
app.post('/books', async (req, res) => {
    try {
        const {name,des} = req.body;
        res.status(201).json({ message: `Post data Name: ${name} & Des: ${des}` })
    } catch (error) {
        console.log(error);
    }
}) 