
INSERT INTO categories (name)
VALUES
    ('Tecnologia'),
    ('Ficção científica'),
    ('Fantasia');

INSERT INTO authors (name)
VALUES
    ('Robert C. Martin'),
    ('Isaac Asimov'),
    ('J. R. R. Tolkien');

INSERT INTO books (
    title,
    isbn,
    publication_year,
    author_id,
    category_id
)
VALUES
    (
        'Clean Code',
        '9780132350884',
        2008,
        1,
        1
    ),
    (
        'Fundação',
        '9780553293357',
        1951,
        2,
        2
    ),
    (
        'O Senhor dos Anéis',
        '9780618640157',
        1954,
        3,
        3
    );
