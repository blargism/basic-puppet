class profile::hello {
  file { 'c:\temp\hello.txt':
    ensure  => file,
    content => "hello, world\n",
  }
}
