# Date
# ----------------------------
#Date::DATE_FORMATS[:default] = "%e/%B/%Y" 
Date::DATE_FORMATS[:default] = "%d/%m/%Y" 

# DateTime / Time
# ----------------------------
#Time::DATE_FORMATS[:default] = "%m/%d/%Y %I:%M %p" 
#Time::DATE_FORMATS[:default] = "%d/%m/%Y %I:%M %p" 
Time::DATE_FORMATS.merge!(:default => "%Y-%d-%d %H:%M")



# Date (Year, Month, Day):
#   %Y - Year with century (can be negative, 4 digits at least)
#           -0001, 0000, 1995, 2009, 14292, etc.
#   %C - year / 100 (round down.  20 in 2009)
#   %y - year % 100 (00..99)

#   %m - Month of the year, zero-padded (01..12)
#           %_m  blank-padded ( 1..12)
#           %-m  no-padded (1..12)
#   %B - The full month name (``January'')
#           %^B  uppercased (``JANUARY'')
#   %b - The abbreviated month name (``Jan'')
#           %^b  uppercased (``JAN'')
#   %h - Equivalent to %b

#   %d - Day of the month, zero-padded (01..31)
#           %-d  no-padded (1..31)
#   %e - Day of the month, blank-padded ( 1..31)

#   %j - Day of the year (001..366)

# Time (Hour, Minute, Second, Subsecond):
#   %H - Hour of the day, 24-hour clock, zero-padded (00..23)
#   %k - Hour of the day, 24-hour clock, blank-padded ( 0..23)
#   %I - Hour of the day, 12-hour clock, zero-padded (01..12)
#   %l - Hour of the day, 12-hour clock, blank-padded ( 1..12)
#   %P - Meridian indicator, lowercase (``am'' or ``pm'')
#   %p - Meridian indicator, uppercase (``AM'' or ``PM'')

#   %M - Minute of the hour (00..59)

#   %S - Second of the minute (00..59)

#   %L - Millisecond of the second (000..999)
#   %N - Fractional seconds digits, default is 9 digits (nanosecond)
#           %3N  millisecond (3 digits)
#           %6N  microsecond (6 digits)
#           %9N  nanosecond (9 digits)
#           %12N picosecond (12 digits)


# %Y%m%d           => 20071119                  Calendar date (basic)
# %F               => 2007-11-19                Calendar date (extended)
# %Y-%m            => 2007-11                   Calendar date, reduced accuracy, specific month
# %Y               => 2007                      Calendar date, reduced accuracy, specific year
# %C               => 20                        Calendar date, reduced accuracy, specific century
# %Y%j             => 2007323                   Ordinal date (basic)
# %Y-%j            => 2007-323                  Ordinal date (extended)
# %GW%V%u          => 2007W471                  Week date (basic)
# %G-W%V-%u        => 2007-W47-1                Week date (extended)
# %GW%V            => 2007W47                   Week date, reduced accuracy, specific week (basic)
# %G-W%V           => 2007-W47                  Week date, reduced accuracy, specific week (extended)
# %H%M%S           => 083748                    Local time (basic)
# %T               => 08:37:48                  Local time (extended)
# %H%M             => 0837                      Local time, reduced accuracy, specific minute (basic)
# %H:%M            => 08:37                     Local time, reduced accuracy, specific minute (extended)
# %H               => 08                        Local time, reduced accuracy, specific hour
# %H%M%S,%L        => 083748,000                Local time with decimal fraction, comma as decimal sign (basic)
# %T,%L            => 08:37:48,000              Local time with decimal fraction, comma as decimal sign (extended)
# %H%M%S.%L        => 083748.000                Local time with decimal fraction, full stop as decimal sign (basic)
# %T.%L            => 08:37:48.000              Local time with decimal fraction, full stop as decimal sign (extended)
# %H%M%S%z         => 083748-0600               Local time and the difference from UTC (basic)
# %T%:z            => 08:37:48-06:00            Local time and the difference from UTC (extended)
# %Y%m%dT%H%M%S%z  => 20071119T083748-0600      Date and time of day for calendar date (basic)
# %FT%T%:z         => 2007-11-19T08:37:48-06:00 Date and time of day for calendar date (extended)
# %Y%jT%H%M%S%z    => 2007323T083748-0600       Date and time of day for ordinal date (basic)
# %Y-%jT%T%:z      => 2007-323T08:37:48-06:00   Date and time of day for ordinal date (extended)
# %GW%V%uT%H%M%S%z => 2007W471T083748-0600      Date and time of day for week date (basic)
# %G-W%V-%uT%T%:z  => 2007-W47-1T08:37:48-06:00 Date and time of day for week date (extended)
# %Y%m%dT%H%M      => 20071119T0837             Calendar date and local time (basic)
# %FT%R            => 2007-11-19T08:37          Calendar date and local time (extended)
# %Y%jT%H%MZ       => 2007323T0837Z             Ordinal date and UTC of day (basic)
# %Y-%jT%RZ        => 2007-323T08:37Z           Ordinal date and UTC of day (extended)
# %GW%V%uT%H%M%z   => 2007W471T0837-0600        Week date and local time and difference from UTC (basic)
# %G-W%V-%uT%R%:z  => 2007-W47-1T08:37-06:00    Week date and local time and difference from UTC (extended)