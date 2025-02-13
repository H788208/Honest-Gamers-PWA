BEGIN
    IF user press link take TO open home page
    BEGIN
        IF user press 'log in' take TO 'log in' page
            CHECK username
            if username EXISTS
                allow pass
                GET username
            CHECK password EXISTS
            IF password EXISTS
                allow pass
                GET Password
            IF user EXISTS
                log in
                GET id 
    END
    
    BEGIN
        IF user press 'register' take TO 'register' page
            GET username
            IF username already EXISTS 
                DO NOT allow pass
            else allow pass

            GET password
            IF password already EXISTS 
                DO NOT allow pass
            else allow pass

            IF pass register user
                ADD id TO DATABASE
                ADD user TO DATABASE
    END

    BEGIN
        IF user press 'review' take TO 'review' page
            user ADD game TO DATABASE
            user ADD score TO DATABASE
            ADD user id to DATABASE
            ADD 'review' to homepage
    END
END 