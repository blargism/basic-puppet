hiera_include('classes')

node /^pos19989-p1.localdomain$/ {
  file { 'c:\temp\hello.txt':
    ensure  => file,
    content => "hello, world\n",
  }
}

