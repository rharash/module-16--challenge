/* Create vine_table table */
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT
);

/* Vine Reviews Analysis */
select * from vine_table LIMIT 5;
select vine,count(review_id) from vine_table group by vine;	/* Result: 5033238 */
select count (distinct review_id) from vine_table;			/* Result: 5033238 */
select distinct vine from vine_table						/* No rows selected */

/* Number of Rows in vine_table table */
SELECT COUNT(*) FROM vine_table WHERE vine='Y'				/* Result: Vine No rows. */
SELECT COUNT(*) FROM vine_table WHERE vine='N' 			 	/* Result: Non-Vine 5033238 */

/* Number of Total Votes */
SELECT SUM(total_votes)  FROM vine_table WHERE vine='Y'	  /* Result: Vine [null] */
SELECT SUM(total_votes)  FROM vine_table WHERE vine='N'	  /* Result: Non-Vine 17292542 */

/* Number of Helpful Votes */
SELECT SUM(helpful_votes)  FROM vine_table WHERE vine='Y' /* Result: Vine [null] */
SELECT SUM(helpful_votes)  FROM vine_table WHERE vine='N' /* Result: Non-Vine 13260709 */

/* Number of 5-Star Reviews */
SELECT COUNT(review_id) FROM vine_table WHERE vine='Y' AND star_rating='5' /* Result: Vine 0 */
SELECT COUNT(review_id) FROM vine_table WHERE vine='N' AND star_rating='5' /* Result: Non-Vine 2699805 */

/* Number of 4-Star Reviews */
/*SELECT COUNT(review_id) FROM vine_table WHERE vine='Y' AND star_rating='4' /* Result: Vine 0 */
SELECT COUNT(review_id) FROM vine_table WHERE vine='N' AND star_rating='4' /* Result: Non-Vine 1009422 */

/* Number of 3-Star Reviews */
SELECT COUNT(review_id) FROM vine_table WHERE vine='Y' AND star_rating='3' /* Result: Vine 0 */
SELECT COUNT(review_id) FROM vine_table WHERE vine='N' AND star_rating='3' /* Result: Non-Vine 466685 */

/* Number of 2-Star Reviews */
SELECT COUNT(review_id) FROM vine_table WHERE vine='Y' AND star_rating='2' /* Result: Vine 0 */
SELECT COUNT(review_id) FROM vine_table WHERE vine='N' AND star_rating='2' /* Result: Non-Vine 246211 */

/* Number of 1-Star Reviews */
SELECT COUNT(review_id) FROM vine_table WHERE vine='Y' AND star_rating='1' /* Result: Vine 0 */
SELECT COUNT(review_id) FROM vine_table WHERE vine='N' AND star_rating='1' /* Result: Non-Vine 611115 */
*/

/* Average Star Rating for Vine Reviews 
 * Result: [null] Stars
*/
SELECT
    (SUM(star_rating)/COUNT(star_rating)) AS AverageStarRating
FROM vine_table
WHERE vine='Y'
ORDER BY AverageStarRating DESC


/* Average Star Rating for Vine Reviews 
 * Result: 3 Stars
*/
SELECT
    (SUM(star_rating)/COUNT(star_rating)) AS AverageStarRating
FROM vine_table
WHERE vine='N'
ORDER BY AverageStarRating DESC

/* CONCLUSION
   The average rating is 3 Stars. 
   The vine_table contains only Non-Vine review ratings. Since these reviews are 
   Non-Vine reviews there isn't any way to know how trustworthy they are from this data.
 */
