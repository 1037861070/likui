package BAPkg;

/**
* BAPkg/_BAResultHolder.java .
* 由IDL-to-Java 编译器 (可移植), 版本 "3.2"生成
* 从Ba.idl
* 2017年5月21日 星期日 下午03时49分05秒 CST
*/

public final class _BAResultHolder implements org.omg.CORBA.portable.Streamable
{
  public BAPkg._BAResult value = null;

  public _BAResultHolder ()
  {
  }

  public _BAResultHolder (BAPkg._BAResult initialValue)
  {
    value = initialValue;
  }

  public void _read (org.omg.CORBA.portable.InputStream i)
  {
    value = BAPkg._BAResultHelper.read (i);
  }

  public void _write (org.omg.CORBA.portable.OutputStream o)
  {
    BAPkg._BAResultHelper.write (o, value);
  }

  public org.omg.CORBA.TypeCode _type ()
  {
    return BAPkg._BAResultHelper.type ();
  }

}
