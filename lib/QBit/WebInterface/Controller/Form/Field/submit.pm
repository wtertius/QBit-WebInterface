package QBit::WebInterface::Controller::Form::Field::submit;

use qbit;

use base qw(QBit::WebInterface::Controller::Form::Field::button);

sub init {
    my ($self) = @_;

    $self->SUPER::init();

    $self->{'type'} = 'submit';
}

TRUE;
