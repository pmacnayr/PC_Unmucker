# Creates logfile
log = File.open("log.txt", "w")
# Opens blacklist
blacklist = File.open("blacklist.txt", "r")
File.open("blacklist.txt", "r") do |file_delete|
	file_delete.each_line do |malware|
# Deletes files from the blacklist, skips files not found. Logs deletions
if File.exist?(malware.chomp)
	File.delete(malware.chomp) 
	log.puts "Deleted #{malware}"
end
end
blacklist.close
log.close
end