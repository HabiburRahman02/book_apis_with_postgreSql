const express = require('express')
const pool = require('./db')
const app = express()
const port = 3001
const { v4: uuidv4 } = require('uuid');

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
        const books = await pool.query("SELECT * FROM book")
        res.status(200).json({ message: 'Get all books data', data: books.rows })
    } catch (error) {
        console.log(error);
    }
})

// GET:ID --> get single book
app.get('/books/:id', async (req, res) => {
    try {
        const { id } = req.params
        res.status(200).json({ message: `get a single book data: ${id}` })
    } catch (error) {
        console.log(error);
    }
})

// CREATE
app.post('/books', async (req, res) => {
    try {
        const { name, des } = req.body;
        const id = uuidv4()
        const newBook = await pool.query("INSERT INTO book (id,name,des) VALUES ($1, $2, $3) RETURNING *", [id, name, des])
        res.status(201).json({ message: 'Book is created', data: newBook.rows})
    } catch (error) {
        console.log(error);
        res.json(error)
    }
})

// DELETE
app.delete('/books/:id', async (req, res) => {
    try {
        const { id } = req.params
        res.status(200).json({ message: `Deleted this ID: ${id}` })
    } catch (error) {
        console.log(error);
    }
})

// UPDATE
app.put('/books/:id', async (req, res) => {
    try {
        const { id } = req.params
        const { name, des } = req.body;
        res.status(201).json({ message: `Update Book Name: ${name} & Des: ${des} & Id: ${id}` })
    } catch (error) {
        console.log(error);
    }
})

