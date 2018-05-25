
--doubtful REQUESTS

SELECT Event.*, Task.Name, Tracking.BeginingTime, Tracking.EndTime
FROM Event
INNER JOIN Task ON Task.TaskID = Event.PinnedTask
INNER JOIN Tracking ON Tracking.Event = Event.EventID

--READY REQUESTS

SELECT Login, Password, SubscriptionType, Service
FROM Account
INNER JOIN Subscription S on 2 == S.Account
INNER JOIN Service Serv on S.Service == Serv.ID
WHERE Account.AccountID == 2

SELECT Name
FROM Task
WHERE Task.Account == 1

SELECT Name
FROM Event
WHERE Event.BeginingTime >= "2017-04-17 10:00:00" AND Event.EndingTime <= "2019-05-31 10:00:00" AND Event.Name IS NOT NULL;

SELECT Event.PinnedTask
FROM Event
WHERE Event.BeginingTime >= "2017-04-17 10:00:00" AND Event.EndingTime <= "2018-05-31 10:00:00"
  AND Event.PinnedTask IS NOT NULL AND Event.Name IS NULL;

SELECT *
FROM Tracking
WHERE Tracking.BeginingTime >= "2017-04-17 10:00:00" AND Tracking.EndTime <= "2018-05-31 10:00:00"

SELECT DISTINCT Question.Question
FROM Question
INNER JOIN UserAnswer UA ON Question.QuestionID = UA.Question AND UA.DataTime <= "2018-05-17 10:00:00"