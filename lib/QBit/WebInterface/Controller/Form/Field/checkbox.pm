package QBit::WebInterface::Controller::Form::Field::checkbox;

use qbit;

use base qw(QBit::WebInterface::Controller::Form::Field::input);

sub init {
    my ($self) = @_;

    $self->SUPER::init();

    $self->{'input_type'} = 'checkbox';
}

sub process {
    my ($self, $controller) = @_;

    $self->{'checked'} =
      grep {(defined($self->{'value'}) ? $self->{'value'} : 'on') eq $_}
      @{$controller->request->param_array($self->{'name'})};
}

TRUE;
