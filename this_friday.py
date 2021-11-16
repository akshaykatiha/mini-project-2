from datetime import date, timedelta

def this_week_last_business_date():
    ''' Returns this week Friday's date. If it is holiday on Friday, return Thursday and so on'''
 
    today_date = date.today()
    offset = (today_date.weekday() - 4) % 7
    friday_date = today_date - timedelta(days=offset)

    working_date = checkHoliday(friday_date)
    asof_date= working_date - timedelta(days=365)

    return (str(working_date), str(asof_date))
    
def checkHoliday(working_date):
    ''' Check for Holiday recursively and returns last working date'''
    is_holiday = False

    holiday_file = open('/home/ak.katiha/Documents/python/holiday.txt', 'r')
    for line in holiday_file:
        if str(working_date) in line:
            working_date = working_date - timedelta(days=1)
            
            #checking that the returned date should not fall on saturday and sunday
            if working_date.weekday() == 6:
                working_date = working_date - timedelta(days=2)
                working_date = checkHoliday(working_date)
                break
            elif working_date.weekday() == 5:
                working_date = working_date - timedelta(days=1)
                working_date = checkHoliday(working_date)
                break
            else:
                working_date = checkHoliday(working_date)
                break
            
    return working_date

def is_OAS_as_expected():
    '''Checks if OAS is a float type object and has some value associated with it'''
    
    oas = 78.09
    if oas and isinstance(oas,float):
        is_acceptable = True
    else:
        is_acceptable = False
        
    return is_acceptable
    
abKya = this_week_last_business_date()
print(abKya)
print(is_OAS_as_expected())

