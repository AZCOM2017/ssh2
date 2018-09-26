package cap.action;

import com.opensymphony.xwork2.ActionSupport;

import java.io.*;
import java.util.List;

public class FileUploadsAction extends ActionSupport {
    private List<File> file;
    private List<String> fileFileName;

    public List<File> getFile() {
        return file;
    }

    public void setFile(List<File> file) {
        this.file = file;
    }

    public List<String> getFileFileName() {
        return fileFileName;
    }

    public void setFileFileName(List<String> fileFileName) {
        this.fileFileName = fileFileName;
    }

    public String uploads() {
        for (int i = 0; i < file.size(); i++) {


            try {
                InputStream is = new FileInputStream(file.get(i));
                OutputStream os = new FileOutputStream("d:\\" + fileFileName);
                byte[] buffer = new byte[1024];
                int length = 0;
                while ((length = is.read(buffer)) != -1) {
                    os.write(buffer, 0, length);

                }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
        return SUCCESS;
    }

}
