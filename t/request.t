use FindBin qw($Bin);

use lib "$Bin/../lib";
use lib "$Bin/lib";

use Test::More;

use qbit;

use TestWebInterface;

my $wi = TestWebInterface->new();

my $response = $wi->get_response(test => cmd1 => {a => 1, b => 2});

is($wi->request()->uri(), '/test/cmd1?a=1&b=2', 'uri()',);

is($wi->request()->url(), 'http://Test:0/test/cmd1?a=1&b=2', 'url()',);

is($wi->request()->url(no_uri => TRUE), 'http://Test:0', 'url( no_uri => TRUE )',);

is($wi->request()->query_string(), 'a=1&b=2', 'query_string()',);

done_testing();
