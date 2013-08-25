use strict;
use warnings;

use catest;

my $app = catest->apply_default_middlewares(catest->psgi_app);
$app;

