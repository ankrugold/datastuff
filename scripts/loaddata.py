from pyes import *
import sys

def indexAll(ip,filename,index,itype):
	con=ES(ip,bulk_size=50);
	i=0;
	f=open(filename,"rU");
	for line in f:
		i=i+1;
		con.index(line, index, itype, i);
	f.close()


if __name__ == "__main__":
   indexAll(sys.argv[1],sys.argv[2],sys.argv[3],sys.argv[4])

