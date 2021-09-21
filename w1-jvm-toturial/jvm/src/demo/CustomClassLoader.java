package demo;

import java.io.*;

/**
 * TODO
 *
 * @author Xsam
 * @version 1.0
 * @date 2021/9/17 22:19
 */
public class CustomClassLoader extends ClassLoader {

    public static void main(String[] args) throws Exception {
            new CustomClassLoader().findClass("Hello").newInstance();
    }

    @Override
    protected Class<?> findClass(String name)  {
        byte[] bytes = new byte[0];
        try {
            bytes = getBytes();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return defineClass(name,bytes,0,bytes.length);

    }

    private byte[] getBytes() throws IOException {
        File file = new File("");
        String filePath = file.getCanonicalPath();
        System.out.println(filePath);
        String appPath = CustomClassLoader.class.getResource("").getPath();
        InputStream inputStream = null;
        byte[] buffer = null;
        try {
            inputStream = new FileInputStream(filePath + "/jvm/src/demo/Hello.xlass");
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            byte[] arr = new byte[1000];
            int n;
            while ((n = inputStream.read(arr)) != -1) {
                for (int i = 0; i <arr.length ; i++) {
                    arr[i] = (byte)(((byte)255) - arr[i]);


                }
                bos.write(arr,  0, n );
            }
            inputStream.close();
            bos.close();
            buffer = bos.toByteArray();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return buffer;

    }


}
