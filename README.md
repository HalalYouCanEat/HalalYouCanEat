# HalalYouCanEat

## Product Summary

Halal is a dietary restriction for Muslims (like the Muslim equivalent of Kosher).
Not all restaurants have all halal/zabiha options. However, there are many restaurants that may have part
of their menu be halal (their chicken is halal but not their beef), but as a result, not be considered halal
when searched on Google. Sometimes restaurants themselves aren’t aware that they are sourcing from a
halal/zabiha supplier. The app would help people find halal restaurants based on their location. However,
this app would also allow users to add restaurants that they have found to use halal/zabiha in part or all
their menu.

## Link to Heroku

https://halal-you-can-eat.herokuapp.com/

## Link to Trello

https://trello.com/b/ivSyFqHj/halal-you-can-eat

## Link to Figma

https://www.figma.com/file/1PQprB5wV0z4tIlz2E8XJO/Halal-You-Can-Eat-Wireframe?node-id=12%3A16

## Meet Team #1

<b>Anjola Uprety</b>: Would like to participate in full-stack if possible. Willing to contribute more toward front-end.

<b>Elizabeth Diener</b>: Would like to get experience in both the front- and back-end (full-stack), and I have some experience with both. I'd also like to do some testing.

<b>Fritz Duverglas</b>: Would like to get experience in front and back-end (full-stack). Has internship experience with back-end, but personal experience with front-end.

<b>Syed Hassan</b>: Would like to get experience in front and back-end (full-stack). Has internship experience with front-end mostly but would like to learn more about back-end

<b>Zuhaeer Islam</b>: Would like to get experience in front and back-end (full-stack). Has an internship experience but with front-end a little bit, but still have a lot to learn for both.

## Functionality Summary
We have functionality for the map and list views to find restaurants and view information about the restaurant such as rating, location, reviews, etc. User can also search for a restaurant and filter based on desired cuisine and city. Some key features of our app are the map, the list view of the restaurants, the ability to add a restaurant to favorites, and the ability to suggest a new restaurant not already listed in our database. 



## Schema Explanation

### favorites
<table>
    <thead>
        <tr>
            <th>Attribute</th>
            <th>Data Type</th>
            <th>Foreign Key</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>restaurant_id</td>
            <td>integer</td>
            <td>restaurants(id)</td>
        </tr>
        <tr>
            <td>user_id</td>
            <td>integer</td>
            <td>users(id)</td>
        </tr>
        <tr>
            <td>restaurant_id</td>
            <td>biginteger</td>
        </tr>
        <tr>
            <td>user_id</td>
            <td>biginteger</td>
        </tr>
        <tr>
            <td>created_at</td>
            <td>datetime</td>
        </tr>
        <tr>
            <td>updated_at</td>
            <td>datetime</td>
        </tr>
        <tr>
            <td>index_restaurant_id</td>
            <td>index</td>
        </tr>
        <tr>
            <td>index_user_id</td>
            <td>index</td>
        </tr>  
    </tbody>
</table>

### users
<table>
    <thead>
        <tr>
            <th>Attribute</th>
            <th>Data Type</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>id</td>
            <td>integer</td>
        </tr>
        <tr>
            <td>name</td>
            <td>string</td>
        </tr>
        <tr>
            <td>email</td>
            <td>string</td>
        </tr>
        <tr>
            <td>reset_digest</td>
            <td>string</td>
        </tr>
        <tr>
            <td>created_at</td>
            <td>datetime</td>
        </tr>
        <tr>
            <td>updated_at</td>
            <td>datetime</td>
        </tr>
        <tr>
            <td>password_digest</td>
            <td>string</td>
        </tr>
        <tr>
            <td>remember_digest</td>
            <td>string</td>
        </tr>
        <tr>
            <td>admin</td>
            <td>boolean</td>
        </tr>
        <tr>
            <td>activation_digest</td>
            <td>string</td>
        </tr>
        <tr>
            <td>activated</td>
            <td>boolean</td>
        </tr>
        <tr>
            <td>activated_at</td>
            <td>datetime</td>
        </tr>
    </tbody>
</table>

### restaurants

<table>
    <thead>
        <tr>
            <th>Attribute</th>
            <th>Data Type</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>id</td>
            <td>integer</td>
        </tr>
        <tr>
            <td>name</td>
            <td>string</td>
        </tr>
        <tr>
            <td>cuisine</td>
            <td>string</td>
        </tr>
        <tr>
            <td>url</td>
            <td>string</td>
        </tr>
        <tr>
            <td>rating</td>
            <td>integer</td>
        </tr>
        <tr>
            <td>address</td>
            <td>string</td>
        </tr>
        <tr>
            <td>state</td>
            <td>string</td>
        </tr>
        <tr>
            <td>zipcode</td>
            <td>integer</td>
        </tr>
        <tr>
            <td>latitude</td>
            <td>float</td>
        </tr>
        <tr>
            <td>longitude</td>
            <td>float</td>
        </tr>
        <tr>
            <td>created_at</td>
            <td>datetime</td>
        </tr>
        <tr>
            <td>updated_at</td>
            <td>datetime</td>
        </tr>
        <tr>
            <td>apporved</td>
            <td>boolean</td>
        </tr>
    </tbody>
</table>

###location

<table>
    <thead>
        <tr>
            <th>Attribute</th>
            <th>Data Type</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>id</td>
            <td>integer</td>
        </tr>
        <tr>
            <td>state</td>
            <td>string</td>
        </tr>
        <tr>
            <td>zipcode</td>
            <td>integer</td>
        </tr>
        <tr>
            <td>address</td>
            <td>string</td>
        </tr>
        <tr>
            <td>latitude</td>
            <td>float</td>
        </tr>
        <tr>
            <td>longitude</td>
            <td>float</td>
        </tr>
        <tr>
            <td>created_at</td>
            <td>datetime</td>
        </tr>
        <tr>
            <td>updated_at</td>
            <td>datetime</td>
        </tr>
    </tbody>
</table>


### halal_items

<table>
    <thead>
        <tr>
            <th>Attribute</th>
            <th>Data Type</th>
            <th>Foreign Key</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>restaurant_id</td>
            <td>biginteger</td>
            <td>restaurants(id)</td>
        </tr>
        <tr>
            <td>name</td>
            <td>string</td>
        </tr>
        <tr>
            <td>description</td>
            <td>string</td>
        </tr>
        <tr>
            <td>verification</td>
            <td>string</td>
        </tr>
        <tr>
            <td>vegan</td>
            <td>boolean</td>
        </tr>
        <tr>
            <td>gluten_free</td>
            <td>boolean</td>
        </tr>
        <tr>
            <td>vegetarian</td>
            <td>boolean</td>
        </tr>
        <tr>
            <td>created_at</td>
            <td>datetime</td>
        </tr>
        <tr>
            <td>updated_at</td>
            <td>datetime</td>
        </tr>
    </tbody>
</table>

### posts
<table>
    <thead>
        <tr>
            <th>Attribute</th>
            <th>Data Type</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>id</td>
            <td>integer</td>
        </tr>
        <tr>
            <td>name</td>
            <td>string</td>
        </tr>
        <tr>
            <td>title</td>
            <td>string</td>
        </tr>
        <tr>
            <td>content</td>
            <td>string</td>
        </tr>
        <tr>
            <td>created_at</td>
            <td>datetime</td>
        </tr>
        <tr>
            <td>updated_at</td>
            <td>datetime</td>
        </tr>
    </tbody>
</table>

### reviews

<table>
    <thead>
        <tr>
            <th>Attribute</th>
            <th>Data Type</th>
            <th>Foreign Key</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>restaurant_id</td>
            <td>integer</td>
            <td>restaurants(id)</td>
        </tr>
        <tr>
            <td>halal_item_id</td>
            <td>integer</td>
            <td>halal_items(id)</td>
        </tr>
        <tr>
            <td>user_id</td>
            <td>integer</td>
            <td>users(id)</td>
        </tr>
        <tr>
            <td>date_of_review</td>
            <td>datetime</td>
        </tr>
        <tr>
            <td>content</td>
            <td>string</td>
        </tr>
        <tr>
            <td>rating</td>
            <td>integer</td>
        </tr>
        <tr>
            <td>created_at</td>
            <td>datetime</td>
        </tr>
        <tr>
            <td>updated_at</td>
            <td>datetime</td>
        </tr>
    </tbody>
</table>

## URL Pattern Plans

### About URLs

/about/app<br>
/about/devs<br>
/about/halal<br>
/about/assets

### Filter/Search URLs

/restaurants?cuisine=Italian (not implemented yet)<br>

/restaurants?q%5Bs%5D=name+asc (sorts the restaurant list by name in ascending order)<br>
/restaurants?q%5Bs%5D=name+desc (sorts the restaurant list by name in descending order)<br>
/restaurants?q%5Bs%5D=rating+asc (sorts the restaurant list by rating in ascending order)<br>
/restaurants?q%5Bs%5D=rating+desc (sorts the restaurant list by rating in descending order)<br>

/restaurants?q%5Bname_cont%5D=Ayat&commit=Search (searches for a restaurant name that contains "Ayat" in it)


### Viewing Restaurants

/restaurant/1 (view one restaurant)<br>
/restaurants (view all restaurants in table view)

## Views

We plan to have an about section, which has already been partially implemented, which will included pages about the app, about the devs, about halal, and about what assets we used.

Most of the other views (some are implemented and some are not) are enumerated and shown in our figma: https://www.figma.com/file/1PQprB5wV0z4tIlz2E8XJO/Halal-You-Can-Eat-Wireframe?node-id=0%3A1

Some of the views that we plan on implementing but haven't visualized yet are these:

1. View to see reviews that the user has left
2. View to see saved restaurants that the user has saved
3. Improved view to show more restaurant details (halal items, reviews left for restaurant, etc.)



## Gem Dependencies

* bcrypt
* bootsnap
* bootstrap-sass
* bootstrap-will_paginate
* faker
* geocoder (added as an interesting gem)
* importmap-rails
* jbuilder
* pg
* puma
* rails
* ransack (added as an interesting gem)
* rqrcode
* sassc-rails
* sprockets-rails
* stimulus-rails
* turbo-rails
* will_paginate

## API Dependencies

Google Maps Javascript API

## Testing
The command `rails test` will run the tests for our app.
