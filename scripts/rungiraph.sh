
runthis $2 "hadoop jar target/mp5-1.0-SNAPSHOT-jar-with-dependencies.jar org.apache.giraph.GiraphRunner $1 -vif org.apache.giraph.io.formats.IntIntNullTextInputFormat -vip $APP/data/$3  -vof org.apache.giraph.io.formats.IdWithValueTextOutputFormat -op $APP/output/$2 -w 1 -ca giraph.SplitMasterWorker=false"
