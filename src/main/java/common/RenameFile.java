package common;
import com.oreilly.servlet.multipart.FileRenamePolicy;
import java.io.File;
import java.util.Date;
import java.util.Random;

public class RenameFile implements FileRenamePolicy {

	  public String MyFileName;
	  
	  public File rename(File f) {
		  
		  String folderName=f.getParent();
		  String fileName=f.getName();
		  String fileExt=fileName.substring(fileName.lastIndexOf('.'));
		  fileName=fileName.substring(0,fileName.lastIndexOf('.'));
		  Random r= new Random();
		  fileName=fileName+r.nextInt(1000);
		  Date dt= new Date();
		  String datetime=dt.getDate()+"_"+dt.getMonth()+"_"+dt.getYear()+"_"+dt.getSeconds();
		  fileName=fileName+datetime+fileExt;
		  MyFileName=fileName;
		  String fullPath=folderName+"\\"+fileName;
		  File myf=new File(fullPath);
		  return myf;
		  
	  }
	  public void createDir(String path)
	  {
		  File f=new File(path);
		  if(!f.exists()) {
			  Boolean status=f.mkdirs();
			 System.out.print("dir create status=" +status);
		  }
		  else {
			  System.out.print("dir file already in folder");
		  }
	  }

	
	}
	  
	    

