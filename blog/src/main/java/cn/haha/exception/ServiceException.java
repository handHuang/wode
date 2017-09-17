package cn.haha.exception;

/**
 * Created by BIG on 2017/9/16.
 */
public class ServiceException extends Exception {
    private static final long serialVersionUID = -1708015121235851228L;

    public ServiceException(String message) {
        super(message);
    }
}
