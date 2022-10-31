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

## Schema Explanation (so far)

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
            <td>integer</td>
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

### Filter URLs

/restaurants?cuisine=Italian

### Viewing Restaurants

/restaurant/1

## Views

We plan to have an about section, which has already been partially implemented, which will included pages about the app, about the devs, about halal, and about what assets we used.



## Gem Dependencies

* bcrypt
* bootsnap
* bootstrap-sass
* bootstrap-will_paginate
* faker
* importmap-rails
* jbuilder
* pg
* puma
* rails
* ransack
* rqrcode
* sassc-rails
* sprockets-rails
* stimulus-rails
* turbo-rails
* will_paginate

## Testing
The command `rails test` will run the tests for our app.
