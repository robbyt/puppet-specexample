class specexample {

  case $os['family'] {
    'windows': {
      file {'hello':
        path    => 'c:\\hello.txt',
        content => 'hello from 000F0001 - PAGE_FAULT_IN_NON_PAGED_AREA',
      }
    }
    'Linux': {
      file {'hello':
        path    => '/tmp/hello.txt',
        content => 'hello from linux',
      }
    }
    default: {
      fail('unsupported os')
    }
  }
}
