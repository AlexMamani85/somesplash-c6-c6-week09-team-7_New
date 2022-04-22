```console

rails g model Category name description:text photos_count:integer

rails g model Photo title description:text category:references comments_count

rails g model Comment body:text

```

