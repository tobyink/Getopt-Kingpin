requires 'perl', '5.008001';
requires 'Moo';
requires 'Path::Tiny';

on 'test' => sub {
    requires 'Test::More', '0.98';
    requires 'Test::Exception';
    requires 'Test::Trap';
};

