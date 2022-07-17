# Create example

```
mutation {
  createItem(
    input: {
      params: {
        title: "I love you 3",
        description: "A song",
        imageUrl: "https://static.wikia.nocookie.net/taylor-swift/images/9/93/Red_%28Taylor%27s_Version%29.jpeg/revision/latest/scale-to-width-down/1000?cb=20210618181243",
        artistId: 1
        }
      }
  ) {
    item {
      id
    }
  }
}
```
# Read example
```
query {
  items {
    id
    title
    artist {
      fullName
    }
    imageUrl
  }
}
```
