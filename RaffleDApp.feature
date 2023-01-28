


# ### USU-1-a: View list of dummy raffles
# As a guest user, 
# I want to view a list of raffles with mocked data,
# so that I can see raffle details.

# #### Acceptance Criteria.

# Scenario: See list of raffles with mocked data
#     Given Guest user 
#     When  visits main page
#     Then  the following elements should be available
#         -  A section where a list of raffles is displayed;
#         -  For each raffle the following information should be displayed:
#             - raffle id
#             - owner
#             - asset
#             - status
#             - minimum amount that needs to be collected for the raffle to be valid;
#             - the ticket price value;
#             - the deadline for participating in the raffle;
#             - the deadline for revealing ticket secret hashes;
#             - a "Buy ticket" button;

# #### Definition of done
#  - working CI/CD Pipeline with docker image containing the app.


# ### USU-2-a: Create dummy raffle
# As a Guest User,
# I want to create a dummy raffle for a mocked digital asset,
# so that I can add a raffle to the list of raffles.


# #### Acceptance Criteria

# Scenario: Guest user wants to create a raffle
#     Given Guest User is in the main page.
#     When User clicks on "Create new raffle"
#     Then a new "Create new raffle" page is displayed with a predefined mocked digital asset.


# Scenario: Fill in raffle details
#     Given Digital asset/s is/are selected for a given raffle.
#     When Confirms selection
#     Then a form with the following input fields
#             - owner
#             - minimum amount that needs to be collected for the raffle to be valid;
#             - the ticket price value;
#             - the deadline for participating in the raffle;
#             - the deadline for revealing ticket secret hashes;

# Scenario: Create raffle
#     Given Raffle details form is displayed.
#     When All input fields are filled in with valid values.
#     Then The "Create Raffle" button should become available.

# Scenario: Raffle Created
#     Given "Create Raffle" button is available
#     When "Create Raffle" is pressed
#     Then user must be returned to main page 
#          previously created raffle should be displayed in the raffles list with a unique raffle ID.


# ## USU-1-2: View new raffles in real-time
# As a guest user, 
# I want that the list of raffles to be updated with new raffles included without refreshing the page,
# so that I can see updated information in real-time.

# #### Acceptance Criteria.

# Scenario: Raffle list is updated when guest user is in the main page
#     Given Guest user is in the main page 
#     When  a new raffle is included in the list of raffles
#     Then  the list of raffles seen by the guest user must be updated



# ## USU-1-c: View raffles created in a previous session
# As a guest user, 
# I want to see in the list of raffles a raffle created by me in a previous session,
# so that I can edit it later.

# #### Acceptance Criteria.

# Scenario: User creates a raffle, leaves the website and revisit it later
#     Given Guest user created a raffle and left the website.  
#     When  Guest user revisits the website
#     Then  the list of raffles should contain the previously created raffle



# ## USU-0: Provide Identity
# As a guest user, 
# I want to provide an identity,
# so that I can use it later to perform transactions.

# #### Acceptance Criteria.

# Scenario: Provide Identity
#     Given Guest user is in the main page,
#     When  Guest user presses "Authentication" button
#     Then  a new page should be displayed with the following elements:
#             - an input field for Public key;
#             - an input field for Signature; 
#             - a Login button;

# Scenario: Login
#     Given PK and Sig fields are filled.
#     When Login button is pressed.
#     Then the user must be returned in the main page where the current Identity must be displayed.





# ### USU-2-b:  Create dummy raffle with owner's identity
# As a User,
# I want to create a dummy raffle for a mocked digital asset,
# so that I can add a raffle to the list of raffles.

# #### Acceptance Criteria.

# Scenario: Logged in user wants to create a raffle
#     Given User is logged in and is in "Create raffle" page.
#           Digital asset/s is/are selected for a given raffle.
#           Owner field is pre-filld with th identity of the logged user
#           All input fields are filled in with valid values.
#           The "Create Raffle" button is available.
#     When "Create Raffle" is pressed
#     Then  The "Sign" page should be displayed where the following elements are displayed:
#             - raffle details
#             - an input field for Signature
#             - a "Sign" button
# Scenario: Signin create raffle
#     Given User is in signing page for create raffle
#           Signatur field is filled in
#     When user clicks on "Sign" button
#     Then user must be returned to main page 
#          previously created raffle should be displayed in the raffles list with a unique raffle ID.
    

# ------------------------




### USU-1: View active raffles
As a User, 
I want view active raffles  initiated by other users,
so that I can choose to participate in one of them.

#### Acceptance Criteria.

Scenario: User not logged in / (wallet not connected)
    Given User is not logged in / (wallet not connected)
    When  goes to main page
    Then  the following elements should be available
        -  A section where all active raffles are displayed;
        -  A option to create a raffle;
        -  An option to login (connect wallet);

Scenario: User logged in (wallet connected)
    Given User is already logged  / (wallet connected)
    When  goes to main page
    Then  the following elements should be available
        -  A section where all active raffles are displayed;
        -  A navigation menu;
        -  "logged user info" section;



### USU-2:  Create a raffle
As a User,
I want to create a raffle for one or more digital assets I own,
so that other users can buy chances (tickets) to win the asset/s and I'll get the funds in exchange.

#### Acceptance Criteria.

Scenario: Logged in user wants to create a raffle
    Given User is in the main page and is logged in.
    When User clicks on "Create new raffle"
    Then a new page should be displayed allowing the possibility  to select the digital asset/s which is/are subject of the raffle;

Scenario: Not logged in user wants to create a raffle
    Given User is in the main page and is not logged in.
    When User clicks on "Create new raffle"
    Then a the login page must be displayed for the user to log in  which will redirect "Create new raffle"<!-- slide -->
 page


Scenario: Fill in raffle details
    Given Digital asset/s is/are selected for a given raffle.
    When Confirms selection
    Then a form with the following input fields
            - minimum amount that needs to be collected for the raffle to be valid;
            - the ticket price value;
            - the deadline for participating in the raffle;
            - the deadline for revealing ticket secret hashes;

Scenario: Create raffle
    Given Raffle details form is displayed.
    When All input fields are filled in with valid values.
    Then The "Create Raffle" button should become available.

Scenario: Raffle Created
    Given "Create Raffle" button is available
    When "Create Raffle" is pressed
    Then user must be returned to his "MyRaffles" page, where previously created raffle should be displayed besides his existing raffles.

Scenario: User exists/refresh the page before creating the raffle 
    Given Given User is in the "Create Raffle" page. 
          AND selected the digital assets .
          AND filled 0 or many raffle info fields.
    When exits the page.
    Then previous input is lost.
       



### USU-3: Buy ticket to raffle
As a User, 
I want to participate to a raffle,
so that I have a chance to win the prize.

#### Acceptance Criteria.

Scenario: Logged in user picks a raffle and wants to buy tickets
    Given User is logged in
    When user clicks on the "Buy Ticket" button next to the raffle he chose.
    Then a new page should be displayed containing the following elements:
            - Raffle info (tbd);
            - an input numeric field  ("No of tickets") for user to select the no. of tickets he wants to buy, by default filled with value 0;
            - the total cost of the tickets ("no of tickets" value * raffle's ticket price);
            - website navigation menu;

Scenario: Not logged in user picks a raffle and wants to buy tickets
    Given User is not logged in
    When user clicks on the "Buy Ticket" button next to the raffle he chose.
    Then a the login page must be displayed for the user to log in  which will redirect "Buy tickets" page of the slected raffle.

Scenario: User updates the value of the no of tickets 
    Given  User is in the "Buy tickets" page for a specific raffle. 
    When he changes the value in the "No of tickets" field.
    Then 
        1. the value of "Total cost" should be updated with the new "no of tickets" value multiplied by raffle's ticket price;
        2. for each ticket an empty input field (for ticket secret hash) should be displayed;

Scenario: Provide ticket secret hash\hashes
    Given User selected the "No of tickets" and input fields for secret hashes are displayed.
    When all fields are filled in.
    Then a "Payment" button should become available.


Scenario: Payment successful
    Given No of tickets selected and secret hashes provided.
    When  User successfully payed for tickets.
    Then  user must be returned to his "MyTickets" page, where previously bought tickets should be displayed besides his existing tickets.

Scenario: Payment unsuccessful -  TBD
    Given No of tickets selected and secret hashes provided.
    When  User payment was unsuccessful.
    Then  the following message should be displayed ...
        

Scenario: User exists/refresh the page before completing payment 
    Given Given User is in the "Buy tickets" page for a specific raffle. 
          AND selected the "No of tickets" value.
          AND filled 0 or many secret hash input fields.
    When exits the page.
    Then previous input is lost.

