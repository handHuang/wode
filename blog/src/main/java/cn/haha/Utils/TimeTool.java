package cn.haha.Utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by chenwei on 2017/9/17.
 */
public class TimeTool {
    public static String getTime(Date date){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
        return sdf.format(date);
    }
}
