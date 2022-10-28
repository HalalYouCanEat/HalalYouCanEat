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

## Meet Team #1

<b>Anjola Uprety</b>: Would like to participate in full-stack if possible. Willing to contribute more toward front-end.

<b>Elizabeth Diener</b>: Would like to get experience in both the front- and back-end (full-stack), and I have some experience with both. I'd also like to do some testing.

<b>Fritz Duverglas</b>: Would like to get experience in front and back-end (full-stack). Has internship experience with back-end, but personal experience with front-end.

<b>Syed Hassan</b>: Would like to get experience in front and back-end (full-stack). Has internship experience with front-end mostly but would like to learn more about back-end

<b>Zuhaeer Islam</b>: Would like to get experience in front and back-end (full-stack). Has an internship experience but with front-end a little bit, but still have a lot to learn for both.

## Schema Explanation (so far)

### User
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
            <td>name</td>
            <td>string</td>
        </tr>
    </tbody>
</table>

User: id: integer, name: string, email: string, password: string

Restaurant: id: integer, name: string, location_id: integer (referring to the Location table)

FoodItem: id: integer, name: 

Review: id: integer, name: string, title: string, body: text
