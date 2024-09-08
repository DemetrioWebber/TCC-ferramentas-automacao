/** A factory é responsável por gerar massas de dados dinâmicas utilizando bibliotecas externas como a Faker */

import Faker from 'faker'

export class Factory {

    static createProduct(){
        return {
            name: Faker.commerce.productName(),
            price: Faker.commerce.price(),
            description: Faker.lorem.sentence(),
            image: Faker.image.imageUrl(),
            quantity: Faker.random.number(),
            category: Faker.commerce.department()
        }
    }

    static createUser(){
        return {
            name: Faker.name.firstName(),
            email: Faker.internet.email(),
            password: Faker.internet.password()
        }
    }
}