import Foundation

struct Location {
    let x: Int
    let y: Int
}

let storeRange = 2.5

let store1Location = Location(x: 3, y: 3)
let store2Location = Location(x: 8, y: 8)

struct Customer {
    let name: String
    let email: String
    let phoneNumber: String
    let acceptedNewsletter: Bool
    let location: Location
}

var customers: [Customer] = []

var customer = Customer(name: "Jermaine Duffus", email: "jduffus@gmail.com", phoneNumber: "416-244-7777", acceptedNewsletter: true, location: Location(x: 6, y: 7))
customers.append(customer)
customer = Customer(name: "John Smith", email: "jsmith@gmail.com", phoneNumber: "9876543210", acceptedNewsletter: false, location: Location(x: 3, y: 5))
customers.append(customer)
customer = Customer(name: "Roger Hart", email: "rhart@gmail.com", phoneNumber: "647-233-8378", acceptedNewsletter: true, location: Location(x: 6, y: 5))
customers.append(customer)
customer = Customer(name: "Pat Clarke", email: "patclarke@gmail.com", phoneNumber: "416-287-9977", acceptedNewsletter: false, location: Location(x: 3, y: 5))
customers.append(customer)
customer = Customer(name: "Tobi John", email: "tobi@gmail.com", phoneNumber: "437-244-3847", acceptedNewsletter: true, location: Location(x: 7, y: 7))
customers.append(customer)
customer = Customer(name: "Johnathon topman", email: "topman@gmail.com", phoneNumber: "416-234-5475", acceptedNewsletter: false, location: Location(x: 3, y: 5))
customers.append(customer)
customer = Customer(name: "John Peter", email: "jpeter@gmail.com", phoneNumber: "647-876-9855", acceptedNewsletter: true, location: Location(x: 6, y: 7))
customers.append(customer)
customer = Customer(name: "Matthew Luke", email: "mluke@gmail.com", phoneNumber: "647-892-1212", acceptedNewsletter: false, location: Location(x: 3, y: 5))
customers.append(customer)
customer = Customer(name: "Jesus Christ", email: "christisgod@gmail.com", phoneNumber: "647-777-7777", acceptedNewsletter: true, location: Location(x: 7, y: 7))
customers.append(customer)
customer = Customer(name: "Moses Aron", email: "moses.a@gmail.com", phoneNumber: "437-311-1111", acceptedNewsletter: true, location: Location(x: 7, y: 7))
customers.append(customer)

func distance(from source: Location, to target: Location) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return (distanceX * distanceX + distanceY * distanceY).squareRoot()
}

func printCustomersWithinRange(storeLocation: Location, customers: [Customer]) {
    for c in customers {
        let distanceToStore = distance(from: storeLocation, to: c.location) // Changed `customer.location` to `c.location`
        if distanceToStore <= storeRange {
            print("Name: \(c.name) Email: \(c.email)") // Changed `customer.name` to `c.name` and `customer.email` to `c.email`
        }
    }
}



print("Customers within range of Store 1:")
printCustomersWithinRange(storeLocation: store1Location, customers: customers)

print("Customers within range of Store 2:")
printCustomersWithinRange(storeLocation: store2Location, customers: customers)



