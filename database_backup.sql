--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Guest";

--
-- Name: parks; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.parks (
    id bigint NOT NULL,
    directions text,
    description text,
    name character varying,
    states character varying,
    website character varying
);


ALTER TABLE public.parks OWNER TO "Guest";

--
-- Name: parks_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.parks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parks_id_seq OWNER TO "Guest";

--
-- Name: parks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.parks_id_seq OWNED BY public.parks.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Guest";

--
-- Name: users; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying,
    password_digest character varying
);


ALTER TABLE public.users OWNER TO "Guest";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "Guest";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: parks id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.parks ALTER COLUMN id SET DEFAULT nextval('public.parks_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-08-23 20:24:27.663281	2019-08-23 20:24:27.663281
\.


--
-- Data for Name: parks; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.parks (id, directions, description, name, states, website) FROM stdin;
101	The memorial is located at the corner of Vermont Avenue, 10th St, and U Street NW, near the U Street/African-American Civil War Memorial/Cardozo Metro Station.	Over 200,000 African-American soldiers and sailors served in the U.S. Army and Navy during the Civil War. Their service helped to end the war and free over four million slaves. The African American Civil War Memorial honors their service and sacrifice.	African American Civil War Memorial	DC	https://www.nps.gov/afam/index.htm
102	To Augusta Canal Discovery Center (1450 Greene Street, Augusta, GA  30901):\nFrom I-20 Exit 200, turn left onto GA-104/Riverwatch Parkway (signs for Downtown Augusta). In approximately 4.5 miles, use the right lane to take the ramp to Downtown Augusta/Medical District. Continue straight onto Greene Street. Continue for approximately 0.4 miles. Enterprise Mill and the Discovery Center will be on your right.	The Augusta Canal helped usher the Industrial Revolution into the American South. Built in 1845 as a source of power, water, and transportation, the canal today is the only fully intact American industrial canal in continuous operation. By 1847 the first mills opened, followed by the massive Civil War era Confederate Powder Works and many more industries in the later decades of the 19th century.	Augusta Canal	GA	https://www.nps.gov/auca/index.htm
103	The Belmont-Paul Women's Equality NM is located on Capitol Hill at the corner of Constitution Avenue and 2nd Street, NE, next to the Hart Senate Office building. It is a free-standing, federal style brick house surrounded by a black cast-iron fence.\nThe entrance for museum tours and the museum shop is located on 2nd Street with the lift accessible entrance located to the side of the museum next to the Hart Senate Office Building. The doors facing Constitution Avenue are not entrances.	Home to the National Woman's Party for nearly 90 years, this was the epicenter of the struggle for women's rights. From this house in the shadow of the U.S. Capitol and Supreme Court, Alice Paul and the NWP developed innovative strategies and tactics to advocate for the Equal Rights Amendment and equality for women. President Barack Obama designated the national monument on April 12, 2016.	Belmont-Paul Women's Equality	DC	https://www.nps.gov/bepa/index.htm
104	Big Cypress is located along the Tamiami Trail East and I-75 in southern Florida.  The preserve can be accessed by driving from Miami and Naples. The preserves two visitor centers are located along Tamiami Trail East.	The freshwaters of the Big Cypress Swamp, essential to the health of the neighboring Everglades, support the rich marine estuaries along Florida's southwest coast. Protecting over 729,000 acres of this vast swamp, Big Cypress National Preserve contains a mixture of tropical and temperate plant communities that are home to a diversity of wildlife, including the elusive Florida panther.	Big Cypress	FL	https://www.nps.gov/bicy/index.htm
105	From the North:\nTake I-15 south to UT-20 (exit 95). Travel east on UT-20 to US-89. Follow US-89 south to UT-12. Travel east on UT-12 to UT-63. Take UT-63 south to Bryce Canyon National Park.\n\nFrom the South through Zion National Park:\nTake I-15 north to UT-9 (exit 16). Follow UT-9 east through Zion National Park to US-89. Travel north on US-89 to UT-12. Go east on UT-12 to UT-63. Take UT-63 south to Bryce Canyon National Park.	Hoodoos (irregular columns of rock) exist on every continent, but here is the largest concentration found anywhere on Earth. Situated along a high plateau at the top of the Grand Staircase, the park's high elevations include numerous life communities, fantastic dark skies, and geological wonders that defy description.	Bryce Canyon	UT	https://www.nps.gov/brca/index.htm
106	Camp Nelson National Monument is located along US 27 about 20 miles south of Lexington, Kentucky, 6 miles south of Nicholasville on US 27, and 7.5 miles southeast of Wilmore along US 1268. The Park entrance is on the original Danville Pike, adjacent to US 27, one mile north of the Camp Nelson National Cemetery.	Established as a Union supply depot and hospital during the Civil War, Camp Nelson became a recruitment and training center for African American soldiers, and a refugee camp for their wives and children. Thousands of slaves risked their lives escaping to this site with the hope of securing their freedom and, ultimately, controlling their futures by aiding in the destruction of slavery.	Camp Nelson	KY	https://www.nps.gov/cane/index.htm
107	The national seashore is located in eastern Massachusetts and is accessed via Rt. 6. The park is 20 miles east of Hyannis, MA.	The great Outer Beach described by Thoreau in the 1800s is protected within the national seashore. Forty miles of pristine sandy beach, marshes, ponds, and uplands support diverse species. Lighthouses, cultural landscapes, and wild cranberry bogs offer a glimpse of Cape Cod's past and continuing ways of life. Swimming beaches and walking and biking trails beckon today's visitors.	Cape Cod	MA	https://www.nps.gov/caco/index.htm
108	The park is located on the south side of Long Point Road .7 miles from US Highway 17, or 3 miles if coming from I-526.	Charles Pinckney was a principal author and signer of the United States Constitution. This remnant of his coastal plantation is preserved to tell the story of a "founding father," his life of public service, the lives of enslaved African Americans on South Carolina Lowcountry plantations and their influences on Charles Pinckney.	Charles Pinckney	SC	https://www.nps.gov/chpi/index.htm
109	Plane\nCleveland Hopkins International Airport and Akron-Canton Regional Airport offer many daily flights to the area. Car rentals are available at both airports.\n\nBus & Train\nBus stations are located in downtown Cleveland and Akron. The Amtrak station is in downtown Cleveland.\n\nCar\nThe park is easily accessible by car from all directions. A good place to start your visit is at Boston Store Visitor Center located at 1550 Boston Mills Road, Peninsula, Ohio 44264. (81° 33.512' W) (41° 15.803' N).	Though a short distance from the urban areas of Cleveland and Akron, Cuyahoga Valley National Park seems worlds away. The park is a refuge for native plants and wildlife, and provides routes of discovery for visitors. The winding Cuyahoga River gives way to deep forests, rolling hills, and open farmlands. Walk or ride the Towpath Trail to follow the historic route of the Ohio & Erie Canal.	Cuyahoga Valley	OH	https://www.nps.gov/cuva/index.htm
110	Dry Tortugas National Park is one of the most remote parks in the National Park System. Located approximately 70 miles west of Key West it is accessible only by a daily concession ferry, private boats, charter boats, or seaplane.	Almost 70 miles (113 km) west of Key West lies the remote Dry Tortugas National Park. This 100-square mile park is mostly open water with seven small islands.  Accessible only by boat or seaplane, the park is known the world over as the home of magnificent Fort Jefferson, picturesque blue waters, superlative coral reefs and marine life, and the vast assortment of bird life that frequents the area.	Dry Tortugas	FL	https://www.nps.gov/drto/index.htm
111	Located 3 miles north of Marquette, Iowa on Hwy 76.	The mounds preserved here are considered sacred by many Americans, especially the Monument's 20 culturally associated American Indian tribes. A visit offers opportunities to contemplate the meanings of the mounds and the people who built them. The 200 plus American Indian mounds are located in one of the most picturesque sections of the Upper Mississippi River Valley.	Effigy Mounds	IA	https://www.nps.gov/efmo/index.htm
112	Take exit 85 of I-40 in Grants, New Mexico. After you exit, head south on Santa Fe Ave, and continue straight over the freeway overpass. Take a left at the entrance sign for El Malpais Visitor Center. Continue 300 yards until you reach the parking lot.	The richly diverse volcanic landscape of El Malpais offers solitude, recreation, and discovery. Explore cinder cones, lava tube caves, sandstone bluffs, and hiking trails. Wildlife abounds in the open grasslands and forests. While some may see a desolate environment, people have been adapting to and living in this extraordinary terrain for generations. Come discover the land of fire and ice!	El Malpais	NM	https://www.nps.gov/elma/index.htm
113	The First Ladies National Historic Site is located in downtown Canton, Ohio. Free parking is available behind the Saxton House or at our gated lot on the corner of Market Avenue South and 3rd Street SW (entrance from Market Avenue South).	First Ladies National Historic Site consists of two properties in downtown Canton, Ohio - the home of First Lady Ida Saxton-McKinley and a small visitor center with an exhibit and film. Come learn about how the position of First Lady has evolved over time to include a public role.	First Ladies	OH	https://www.nps.gov/fila/index.htm
114	From Willcox, AZ / points west on I-10: drive 23 miles east of Willcox on Interstate 10 to the the town of Bowie. Exit at the first Bowie exit and drive through the town. Follow the signs for Fort Bowie National Historic Site and turn south on Apache Pass Road. Drive 13 miles to the Fort Bowie Trailhead (the last mile of the road is unpaved). Be prepared to walk the three miles round trip to the ruins and back to your car.	Fort Bowie witnessed almost 25 years of conflict between the Chiricahua Apache and the US Army, and remains a tangible connection to the turbulent era of the late 1800s. Explore the history of Fort Bowie and Apache Pass as you hike the 1.5 mile trail to the visitor center and old fort ruins. Today, this peaceful landscape stands in stark contrast to the violence that once gripped this land.	Fort Bowie	AZ	https://www.nps.gov/fobo/index.htm
115	We are approximately 2.5 hours south of Midland/Odessa starting on I-20 to HWY 17, 3.5 hours North West of Del Rio starting on HWY 90 to HWY 118, 4 hours east of El Paso starting on I-10 to HWY 118 and 7 hours west of San Antonio starting on I-10 to HWY 17.	Fort Davis is one of the best surviving examples of an Indian Wars' frontier military post in the Southwest. From 1854 to 1891, Fort Davis was strategically located to protect emigrants, mail coaches, and freight wagons on the Trans-Pecos portion of the San Antonio-El Paso Road and on the Chihuahua Trail.	Fort Davis	TX	https://www.nps.gov/foda/index.htm
116	Take I-90 (NY Thruway) to Exit 33 (Verona-Rome). Turn Right onto Rt. 365 E. Follow Rt. 365, veering left as Rt. 365 merges with Rt 69 at the fork in the road. This will take you over an arterial bridge into the City of Rome. Fort Stanwix NM will be across Erie Blvd. on the right side of James Street.	For centuries, the Oneida Carrying Place, a six mile portage connecting the Mohawk River and Wood Creek, served as a vital link for those traveling by water from the ocean to the Great Lakes. When Europeans arrived, nations fought for control of the carry, the homelands of the Six Nations Confederacy, and the rich resources of North America. In this struggle, Fort Stanwix would play a vital role.	Fort Stanwix	NY	https://www.nps.gov/fost/index.htm
117	The site can be reached by car, public transportation, or on foot. See the directions page of the website for more detailed information.	Frederick Douglass spent his life fighting for justice and equality. Born into slavery in 1818, he escaped as a young man and became a leading voice in the abolitionist movement. People everywhere still find inspiration today in his tireless struggle, brilliant words, and inclusive vision of humanity. Douglass's legacy is preserved here at Cedar Hill, where he lived his last 17 years.	Frederick Douglass	DC	https://www.nps.gov/frdo/index.htm
118	Our park has an immense number of sites to explore! Challenge your ideas about a battle at one of our visitor centers or exhibit shelters, or peer into the past by walking through one of our historic structures.\n\nFor directions and physical addresses for each of our sites, please visit the Directions & Transportation section of our website.	Fredericksburg, Chancellorsville, Wilderness, and Spotsylvania--this is America's battleground, where the Civil War roared to its bloody climax. No place more vividly reflects the War's tragic cost in all its forms. A town bombarded and looted. Farms large and small ruined. Refugees by the thousands forced into the countryside. More than 85,000 men wounded; 15,000 killed--most in graves unknown.	Fredericksburg & Spotsylvania	VA	https://www.nps.gov/frsp/index.htm
119	Friendship Hill NHS is located on PA 166 three miles north of Point Marion, Pennsylvania.	Albert Gallatin is best remembered for his thirteen year tenure as Secretary of the Treasury during the Jefferson and Madison administrations. In that time he reduced the national debt, purchased the Louisiana Territory and funded the Lewis & Clark exploration. Gallatin's accomplishments and contributions are highlighted at Friendship Hill, his restored country estate.	Friendship Hill	PA	https://www.nps.gov/frhi/index.htm
120	Gates of the Arctic is a wilderness park, with no roads or trails into the park lands, so visitors must fly or hike into the park. Access begins in Fairbanks, Alaska & there are several small airlines that provide daily flights into the communities of Bettles and Anaktuvuk Pass, and Coldfoot. Most visitors access the park by air taxi or hike in from the Dalton Highway or from the village of Anaktuvuk Pass. River crossings are necessary from both locations.	This vast landscape does not contain any roads or trails. Visitors discover intact ecosystems where people have lived with the land for thousands of years. Wild rivers meander through glacier-carved valleys, caribou migrate along age-old trails, endless summer light fades into aurora-lit night skies of winter. It remains virtually unchanged except by the forces of nature.	Gates Of The Arctic	AK	https://www.nps.gov/gaar/index.htm
121	Plane\nThe largest airport is at Charleston, about 65 miles from Summersville. There are also small airports at Summersville and Beckley.\n\nCar\nThe main entrance to Gauley River National Recreation Area is located off US Route 19 south of Summersville and north of Fayetteville, West Virginia. Turn off US Route 19 onto WV Route 129 toward Summersville Dam. Take the second left after you cross over the dam and follow the signs to Gauley River.	The 25 miles of free-flowing Gauley River and the six miles of the Meadow River pass through scenic gorges and valleys containing a wide variety of natural and cultural features. The Gauley River contains several class V+ rapids, making it one of the most adventurous white water boating rivers in the east.	Gauley River	WV	https://www.nps.gov/gari/index.htm
122	By Car: Capital Beltway (I-495), Maryland outer loop exit 40 Cabin John Parkway to Clara Barton Parkway; Virginia inner loop exit 41 Clara Barton Parkway East; follow Clara Barton Parkway to MacArthur Boulevard and Glen Echo exit, left onto MacArthur Boulevard, straight across traffic circle at Goldsboro Road, next left onto Oxford Road, end of street, parking lots on the left.\n\nBy Metro: Red Line to Bethesda or Friendship Heights Station, transfer to Montgomery County Ride-On Bus # 29, Glen Echo stop.	Glen Echo Park began in 1891 as a National Chautauqua Assembly "to promote liberal and practical education." By 1911, it transformed into DC's premier amusement park until it closed in 1968. Since 1971, the National Park Service has owned and operated the site and today, with the help of the Glen Echo Park Partnership for Arts and Culture, offers year-round cultural and recreational activities.	Glen Echo	MD	https://www.nps.gov/glec/index.htm
123	Golden Gate National Recreation Area has many sites that span over 60 miles of mostly coastal areas north and south of San Francisco. Park areas can be reached by Highways 1, 101 and 280 from the north and south San Francisco Bay Area, and by Highway 80 from the East Bay. \n\nTo access park headquarters at Fort Mason, please use the entrance at Franklin and Bay Streets in San Francisco.	Experience a park so rich it supports 19 distinct ecosystems with over 2,000 plant and animal species. Go for a hike, enjoy a vista, have a picnic or learn about the centuries of overlapping history from California’s indigenous cultures, Spanish colonialism, the Mexican Republic, US military expansion and the growth of San Francisco. All of this and more awaits you, so get out and find your park.	Golden Gate	CA	https://www.nps.gov/goga/index.htm
124	Governors Island is located in New York Harbor, 1/2 mile from the southern tip of Lower Manhattan and 400 yards west of the end of Brooklyn's Atlantic Avenue and Red Hook waterfront. It is accessible only via ferry. Ferry service from Manhattan is the main way to access the island. During the summer public access season, the ferry departs from Battery Maritime Building at 10 South Street, at South and Whitehall Streets (next to the Staten Island ferry terminal). Check www.govisland.com for ferry schedules.	From 1794 to 1966, the U.S. Army on Governors Island was part of the social, political, and economic tapestry of New York City. Today, the island is a vibrant summer seasonal venue of art, culture, and performance against the backdrop of two centuries of military heritage and the skyline of one of the great cities of the world. The island is open to the public,  May 1st thru Oct 31st	Governors Island	NY	https://www.nps.gov/gois/index.htm
125	The Harriet Tubman National Historical Park includes the Thompson Memorial African Methodist Episcopal Zion Church, the Harriet Tubman Visitor Center, the Tubman Home for the Aged, and the Harriet Tubman Residence. A related Tubman site that lies outside of the national historical park is the Fort Hill Cemetery where Tubman is buried. \n\nView directions to each of these five sites on our directions page.	Harriet Tubman was guided by a deep faith and devotion to family, freedom, and community. After emancipating herself and members of her family, she moved them from Ontario, Canada to Fleming and Auburn, New York in 1859. Central New York was a center for progressive thought, abolition, and women’s suffrage where Tubman continued to fight for human rights and dignity until she died in 1913.	Harriet Tubman	NY	https://www.nps.gov/hart/index.htm
126	Situated on the banks of the James River, Jamestown is a short distance from many major roadways and highways. For a google map search or GPS, use the following address: 1368 Colonial Parkway, Jamestown, Virginia 23081.	Walk in the steps of Captain John Smith and Pocahontas where a successful English colonization of North America began. Despite early struggles to survive, the 1607 settlement evolved into a prosperous colony. As the colony expanded, the Virginia Indians were pushed out of their homeland. In 1619, the arrival of Africans was recorded, marking the origin of slavery in English North America.	Historic Jamestowne	VA	https://www.nps.gov/jame/index.htm
127	Please do not attempt to visit this area. The park was not established beyond an administrative action. There is nothing to see and it is trespassing to wander Gila River Indian Community lands.	The "Monument" is located on the Gila River Indian Reservation and is under tribal ownership. The Gila River Indian Community has decided not to open the extremely sensitive area to the public. There is no park brochure, passport stamp, picture stamp or other free literature available.	Hohokam Pima	AZ	https://www.nps.gov/pima/index.htm
128	Kenai Fjords National Park is located just outside the town of Seward in south-central Alaska, 126 miles south of Anchorage. Even though the park is often inaccessible during the winter months, Seward is accessible year-round via the Seward Highway, a National Scenic Byway.\n\nFollow the Seward Highway (AK-1) south from Anchorage. It will become AK-9 around mile 35 (87 miles from Anchorage) with AK-1 heading to Homer and Kenai. Continue on AK-9 to Seward.	At the edge of the Kenai Peninsula lies a land where the ice age lingers. Nearly 40 glaciers flow from the Harding Icefield, Kenai Fjords' crowning feature. Wildlife thrives in icy waters and lush forests around this vast expanse of ice. Sugpiaq people relied on these resources to nurture a life entwined with the sea. Today, shrinking glaciers bear witness to the effects of our changing climate.	Kenai Fjords	AK	https://www.nps.gov/kefj/index.htm
129	Plane\nFly into Bismarck or Minot, ND. Hazen, ND (15 miles from site) has an airport for small planes.\n\nCar\nOne-half mile north of Stanton, ND on County Road 37. One hour northwest of Bismarck, ND and one and a half hours southwest of Minot, ND.\n\nPublic Transportation\nCharter and tour bus parking available at Visitor Center parking lot.	Earthlodge people hunted bison and other game, but were in essence farmers living in villages along the Missouri and its tributaries. The site was a major Native American trade center for hundreds of years prior to becoming an important market place for fur traders after 1750.	Knife River Indian Villages	ND	https://www.nps.gov/knri/index.htm
130	GPS Coordinates: 38.887778, -77.047660\nAddress: 10 Daniel French Dr, SW, Washington, D.C.\nNearest Intersection: Independence Ave. & Daniel Chester French Dr. SW	Our nation honors her sons and daughters who answered the call to defend a country they never knew and a people they never met.	Korean War Veterans Memorial	DC	https://www.nps.gov/kowa/index.htm
131	GPS Coordinates: 38.889321, -77.050166\nAddress: 2 Lincoln Memorial Circle, NW, Washington, D.C.\nNearest Intersection: Independence Ave. SW & Daniel Chester French Dr. SW	"In this temple, as in the hearts of the people for whom he saved the Union, the memory of Abraham Lincoln is enshrined forever." Beneath these words, the 16th President of the United States sits immortalized in marble as an enduring symbol of unity, strength, and wisdom.	Lincoln Memorial	DC	https://www.nps.gov/linc/index.htm
132	Longfellow House-Washington's Headquarters NHS is located in a residential section of Cambridge, MA. There is very little public parking in the area and onsite parking is limited to vehicles with handicapped parking permits. However, the site is a short walk from Harvard Square, where there are paid parking lots and a station for the MBTA Red Line and numerous bus routes. The use of public transportation to the site is highly recommended. Follow the link for detailed instructions.	Longfellow House-Washington's Headquarters National Historic Site preserves the home of Henry W. Longfellow, one of the world’s foremost 19th century poets. The house also served as headquarters for General George Washington during the Siege of Boston, July 1775 - April 1776. In addition to its rich history, the site offers unique opportunities to explore 19th century literature and arts.	Longfellow House Washington's Headquarters	MA	https://www.nps.gov/long/index.htm
133	Manzanar is located on the west side of U.S. Highway 395, 9 miles north of Lone Pine, California and 6 miles south of Independence, CA.	In 1942, the United States government ordered more than 110,000 men, women, and children to leave their homes and detained them in remote, military-style camps. Manzanar War Relocation Center was one of ten camps where Japanese American citizens and resident Japanese aliens were incarcerated during World War II.	Manzanar	CA	https://www.nps.gov/manz/index.htm
134	The park entrance road is located off of route 9H  two miles south of Kinderhook Village.  \n\nGPS Coordinates:  42° 22' 52'' N   -73° 42' 13'' W	Politics before the Civil War was a whirlwind of opposing interest groups. Martin Van Buren was able to unite those groups becoming president in 1837. As frustration and violence over the extension of slavery grew in the 1840's, Van Buren ran for the presidency twice more from this house. He hoped to unite sectional interests but failed; ultimately so did the union.	Martin Van Buren	NY	https://www.nps.gov/mava/index.htm
135	The MotorCities National Heritage Area encompasses over 10,000 square miles in southeast and central Michigan. The Partnership's administrative headquarters are in Detroit.	If you are interested in automotive history, then MotorCities National Heritage Area is the place to be. Tour the factory where Henry Ford created and built the Model T. Learn the stories behind the creation of General Motors and DamilerChrysler. Come with us and learn about the long and sometimes tenuous relationship between Labor and Industry while experiencing southeast Michigan.	Motor Cities	MI	https://www.nps.gov/auto/index.htm
136	The National Aviation Heritage Area has multiple sites located throughout eight counties in the Dayton, Ohio and western Ohio area. Please be sure to visit a specific National Aviation Heritage Area website for directions and/or maps to each location.	Aviation is chock-full of tradition & history and nowhere will you find a richer collection of aviation than here, the birthplace of aviation.  From the straightforward bicycle shops that fostered the Wright brothers' flying ambitions to the complex spacecraft that carried man to the moon, the National Aviation Heritage Area has everything you need to learn about this country’s aviation legacy.	National Aviation	OH	https://www.nps.gov/avia/index.htm
137	DC295 South to the Exit for I-694/I-395/Capitol Hill then a left Exit 4B to 11th St SE/MLK Jr Ave.  Turn Left at light onto 11st/MLK JR. **\n\nI-295 North to Exit 4B to 11th St SE/MLK Jr Ave.  Turn Right at the light.  **\n\nFrom downtown DC: I-395 to I-695/SW Freeway, take Exit 1C 11th St SE. Turn Right onto 11th St **\n\n** At the  light turn Right onto Good Hope Road.  At the Stop Sign turn Left.  Turn Left at the next road way.	Welcome to National Capital Parks-East. We invite you to journey to parks Beyond the Capital of Washington, D.C.  National Capital Parks-East is 13 park sites, parkways and statuary covering more than 8,000 acres of historic, cultural, and recreational parklands from Capitol Hill to the nearby Maryland suburbs	National Capital Parks-East	DC	https://www.nps.gov/nace/index.htm
138	Most visitors start their trip in the city of Valentine, Nebraska. Valentine is 76 miles south of I-90 (Murdo, SD Exit) on Hwy 83; or 130 miles north of I-80 (North Platte, NE Exit) on Hwy 83.\n\nThe nearest major airports are in Rapid City, SD (220 miles); Denver, CO (391 miles); and Omaha, NE (300 miles).	The 76 miles of the Niobrara National Scenic River winds through dramatic bluffs, incredible wildlife diversity, gorgeous waterfalls, world-class fossil resources, and plenty of floating fun for the whole family. Less than 1/4 of one percent of US rivers are designated under the National Wild & Scenic Rivers System. Come discover why this prairie river has earned this honor.	Niobrara	NE	https://www.nps.gov/niob/index.htm
139	The Kris Eggle Visitor Center is located on Highway 85, approximately 25 miles south of Why, AZ.	Look closely. Look again. The sights and sounds of Organ Pipe Cactus National Monument, an International Biosphere Reserve, reveal a thriving community of plants and animals. Human stories echo throughout this desert preserve, chronicling thousands of years of desert living. A scenic drive, wilderness hike or a night of camping will expose you to a living desert that thrives.	Organ Pipe Cactus	AZ	https://www.nps.gov/orpi/index.htm
140	The Headquarters for Ozark National Scenic Riverways is located at 404 Watercress Drive in Van Buren, Missouri.  It's located at the corner of Watercress Drive and Main Street, across the street from the Van Buren Public School complex.	Ozark National Scenic Riverways is the first national park area to protect a river system. The Current and Jacks Fork Rivers are two of the finest floating rivers you'll find anywhere. Spring-fed, cold and clear they are a delight to canoe, swim, boat or fish. Besides these two famous rivers, the park is home to hundreds of freshwater springs, caves, trails and historic sites such as Alley Mill.	Ozark	MO	https://www.nps.gov/ozar/index.htm
141	The monument is located in the northwest corner of Arizona, bordering Nevada to the west and near the southern border of Utah. There are no paved roads or visitor services within the monument's million-plus acres. Visitors should be prepared for travel on rugged dirt roads. Traveling with an appropriate high clearance vehicle equipped with all-terrain tires. The spare tire should also be all-terrain rated. The monument has entry roads from Nevada, Utah and Arizona.	Take a lonely and rocky two-track road in a 4x4 to the edge of the Grand Wash Cliffs. Find a stunning solitary vista deep into the Grand Canyon. Relax in the shade of ponderosas at Mt. Trumbull. Touch ancient waters at Pakoon Springs in one of the driest places in the world. Parashant is remote. There are no crowds here. Be equipped to leave pavement, cell service, and the 21st century behind.	Parashant	AZ	https://www.nps.gov/para/index.htm
142	The Eastern Front (Main) Visitor Center is located approximately 2.5 miles east of Rt. 95 off of Route 36 in Petersburg. If travelling north on Rt. 95, take exit 50D and follow signs to Wythe Street. Once on Wythe Street, travel 2.5 miles east to entrance of Battlefield. If travelling south on Rt. 95, take Exit 52 (Wythe Street). Again, travel about 2.5 miles to entrance.	Nine and a half months, 70,000 casualties, the suffering of civilians, thousands of U. S. Colored Troops fighting for the freedom of their race, and the decline of Gen. Robert E. Lee's Army of No. Virginia all describe the Siege of Petersburg. It was here Gen. Ulysses S. Grant cut off all of Petersburg's supply lines ensuring the fall of Richmond on April 3, 1865. Six days later, Lee surrendered.	Petersburg	VA	https://www.nps.gov/pete/index.htm
143	Take either the Northern State Parkway to Exit 35N or the Long Island Expressway (I-495) to Exit 41N. At those exits, take Route 106 North for approximately 6 miles to downtown Oyster Bay. Turn right onto East Main Street (at Nobman's Hardware Store) and travel 2 miles on East Main Street/Cove Road. Turn left onto Cove Neck Road and drive 1.5 miles to Sagamore Hill National Historic Site.	Sagamore Hill was the home of Theodore Roosevelt, 26th President of the United States, from 1885 until his death in 1919. During Roosevelt's time in office, his "Summer White House" was the focus of international attention. Explore the natural surroundings and become inspired by the legacy of one of America's most popular presidents.	Sagamore Hill	NY	https://www.nps.gov/sahi/index.htm
144	The St. Croix National Scenic Riverway stretches for over 200 miles in northwest Wisconsin and east-central Minnesota. The Namekagon River flows entirely in Wisconsin while the St. Croix River serves as a border between the two states for much of its length. With many different access points there are numerous opportunities for day trips as well as multi-day paddling adventures. Visitor centers are located on the Namekagon River in Trego, Wisconsin, and on the St. Croix River in St. Croix Falls, Wisconsin.	Grab your paddle and your longing for adventure and head to the St. Croix and Namekagon rivers! Together they form the St. Croix National Scenic Riverway, offering over 200 miles of clean water that glides and rushes through a forested landscape. Paddle, boat, fish, and camp among this wild and scenic beauty. Hiking and historic towns also beckon, if you can bear to leave the cool water.	Saint Croix	WI,MN	https://www.nps.gov/sacn/index.htm
145	Reach the Mountainair Headquarters by taking I-25 south from Albuquerque to Belen, then NM 47 diagonally to US 60, then east 21 miles to Mountainair. To travel the historic highway route (Turquoise Highway) from the north, take I-40 east from Albuquerque to NM 337, drive south 47 miles (76K) to junction with NM State Highway 55. Proceed right (west) on Hwy 55 about 16 miles (26 K). Turn right on Highway 60 and proceed one block to HQ.  Information on the ruins & surrounding area is available here.	Tucked away in the middle of New Mexico you’ll find Salinas Pueblo Missions National Monument. The three sites offer a glimpse into a unique time in history. A time entrenched with cultural borrowing, conflict, and struggles. The now abandoned sites stand as reminders of the Spanish and Pueblo People’s early encounters.	Salinas Pueblo Missions	NM	https://www.nps.gov/sapu/index.htm
146	There are several air carriers to St Croix arriving at the Henry E. Rohlesen Airport. The park is five miles from Christiansted National Historic Site and can be reached by car via Rt. 75 from Christiansted, connecting to Route 80. Cars may be rented at the airport and various other island locations. Ask your lodging hosts for information about guided land tours.	Salt River Bay National Historical Park and Ecological Preserve uniquely documents the human and natural Caribbean world from the earliest indigenous settlements in the central Caribbean to their clash with seven different colonial European powers to the present day.	Salt River Bay	VI	https://www.nps.gov/sari/index.htm
147	Park Headquarter's is located 4 miles south of downtown San Antonio.\nThe four mission sites lay as a chain south of downtown. Mission Concepción is 3 miles, Mission San José and the park visitor center is 6 miles south, Mission San Juan is 3 miles south of San José, and Mission Espada lays another mile beyond. \nWritten directions and GPS addresses can be found at the link below.	After 10,000 years, the people of South Texas found their cultures, their very lives under attack. In the early 1700s Apache raided from the north, deadly diseases traveled from Mexico, and drought lingered. Survival lay in the missions. By entering a mission, they foreswore their traditional life to become Spanish, accepting a new religion and pledging fealty to a distant and unseen king.	San Antonio Missions	TX	https://www.nps.gov/saan/index.htm
148	Theodore Roosevelt National Park is located in the Badlands of western North Dakota. \nThere are three units to the park. The South Unit entrance is in the town of Medora, ND off of Interstate 94 exits 24 and 27. The North Unit entrance is on Highway 85 approximately 14 miles south of Watford City, ND. The remote Elkhorn Ranch Unit sits roughly in the middle of the North and South Units and is accessed via gravel roads. Consult park staff for directions to the Elkhorn Ranch Unit.	When Theodore Roosevelt came to Dakota Territory to hunt bison in 1883, he was a skinny, young, spectacled dude from New York. He could not have imagined how his adventure in this remote and unfamiliar place would forever alter the course of the nation. The rugged landscape and strenuous life that TR experienced here would help shape a conservation policy that we still benefit from today.	Theodore Roosevelt	ND	https://www.nps.gov/thro/index.htm
149	GPS Coordinates: 38.881387, -77.036508\n\nThomas Jefferson Memorial is part of the National Mall and Memorial Parks. The site lies at the southern end of the National Mall, adjacent to the Tidal Basin in West Potomac Park. The memorial rests within the sightline to and from the White House, which stands one mile to the north.	Author of the Declaration of Independence, statesman and visionary for the founding of a nation.	Thomas Jefferson Memorial	DC	https://www.nps.gov/thje/index.htm
150	For an internet map search or GPS, use the following:\nYorktown Battlefield Visitor Center, 1000 Colonial Parkway, Yorktown, Virginia 23690.\n\nEastbound from the Richmond area via I-64, exit 242B for Yorktown, to the Colonial Parkway. Follow the parkway to its end. West bound Interstate 64 from the Virginia Beach/Norfolk/Hampton area for Yorktown should take Route 105 East (Fort Eustis Boulevard east), exit 250B to Route 17. Turn left  onto Route 17. Follow the signs to Yorktown Battlefield.	Discover what it took for the United States to be independent as you explore the site of the last major battle of the Revolutionary War.  Here at Yorktown, in the fall of 1781, General George Washington, with allied American and French forces, besieged General Charles Lord Cornwallis’s British army.  On October 19, Cornwallis surrendered, effectively ending the war and ensuring independence.	Yorktown Battlefield	VA	https://www.nps.gov/york/index.htm
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.schema_migrations (version) FROM stdin;
20190823202013
20190823225402
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.users (id, email, password_digest) FROM stdin;
1	a@a.a	$2a$12$3iio4aX2S1L4fjn6YcSxPuw7YnJSGpU2fji3/b/f9TjxWDjmYRj1m
2	a@a.b	$2a$12$K4rKO5pJsvQVV2egVyxVheVkSiOK2pwAc1bTlrZDo2sJQshUklqPi
\.


--
-- Name: parks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.parks_id_seq', 150, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: parks parks_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.parks
    ADD CONSTRAINT parks_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

